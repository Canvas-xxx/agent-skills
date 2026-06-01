# Design and Structure

## Architecture Rules

- Put domain rules in plain Python modules with no framework, database, HTTP, or
  CLI imports.
- Keep I/O behind adapters: database repositories, HTTP clients, filesystem
  gateways, queue producers, and subprocess wrappers.
- Keep entry points thin. CLI commands, API handlers, and job runners should
  parse input, call application code, and translate output/errors.
- Use an orchestration layer when a workflow coordinates multiple domain
  operations or adapters.
- Keep serialization schemas at the boundary they protect.
- Create shared helpers only after two real callers need the same behavior.

## Package Layout

Use `src/` layout for new packages unless the repository already uses a
different coherent layout.

```text
.
├── pyproject.toml
├── src/
│   └── package_name/
│       ├── __init__.py
│       ├── domain/
│       ├── services/
│       ├── adapters/
│       └── cli.py
└── tests/
```

Keep importable package code separate from tests, scripts, notebooks, fixtures,
and generated artifacts.

Avoid vague module names:

- Prefer `billing_periods.py` over `utils.py`
- Prefer `postgres_repository.py` over `db.py` when there are multiple stores
- Prefer `clock.py` over scattered calls to `datetime.now()`

## Functions vs Classes

Prefer functions for stateless transformations and small operations.

Use classes when they:

- Hold meaningful state
- Own resource lifecycle
- Implement a protocol
- Represent a domain concept
- Provide a replaceable adapter for an external system

Avoid classes that only namespace unrelated static methods. Use modules for
namespacing.

## Data Modeling

Use the lightest type that protects the boundary:

| Need | Good fit |
|---|---|
| Internal immutable record | `@dataclass(frozen=True, slots=True)` |
| Internal mutable working state | `@dataclass(slots=True)` |
| External JSON/API validation | Pydantic or the project's existing schema tool |
| Static structural contract | `Protocol` |
| Small fixed alternatives | `Literal` or `Enum` |
| Dictionary with stable keys | `TypedDict` |

Do not introduce Pydantic, attrs, or another validation framework just for
internal data unless the project already depends on it or boundary validation is
needed.

## Error Handling

Raise specific exceptions at the layer that can describe the failure. Catch
exceptions only where the code can add context, retry, translate to a boundary
error, or recover.

Use exception chaining when translating errors:

```python
try:
    record = repository.get(invoice_id)
except RepositoryTimeoutError as exc:
    raise InvoiceLookupError(invoice_id) from exc
```

Do not swallow broad `Exception` without logging or re-raising. Do not encode
business failures as `None`, `False`, or empty collections unless absence is a
normal successful outcome.

## Dependency Decisions

Add a dependency only when the standard library or current project stack would
make the code meaningfully worse.

Before adding one, check:

- Existing dependency policy and package manager
- License sensitivity
- Maintenance activity
- Transitive dependency size
- Whether the package is already present
- Whether the standard library is good enough

Prefer boring, well-maintained libraries over clever abstractions.
