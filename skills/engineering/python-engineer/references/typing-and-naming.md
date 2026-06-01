# Typing and Naming

## Typing Standards

Treat type hints as executable design documentation:

- Type public functions, class attributes, dataclasses, and boundary models.
- Prefer concrete return types; accept abstract input types where useful.
- Use `Sequence`, `Mapping`, and `Iterable` for inputs when mutation is not
  required.
- Return concrete containers such as `list[...]` or `dict[...]` when callers own
  the result.
- Avoid `Any`; if unavoidable, keep it at the boundary and narrow it quickly.
- Use `Protocol` for behavior contracts instead of inheritance-heavy designs.
- Use `Self`, `TypeAlias`, `NewType`, and `Literal` when they clarify an
  interface.

For optional values, make absence explicit. Do not use `None` as a sentinel when
a named sentinel would prevent ambiguity.

## Protocols

Use `Protocol` when code depends on behavior rather than a concrete class:

```python
from typing import Protocol


class InvoiceRepository(Protocol):
    def get(self, invoice_id: str) -> Invoice:
        ...
```

Keep protocols small. A protocol with many unrelated methods is often a hidden
service locator.

## Dataclasses

Use dataclasses for internal records:

```python
from dataclasses import dataclass


@dataclass(frozen=True, slots=True)
class Money:
    amount: int
    currency: str
```

Use `frozen=True` for value objects and `slots=True` for most internal models
unless the project relies on dynamic attributes.

## Naming

Use boring, domain-specific names:

- Modules: short nouns, lowercase, no vague buckets like `common.py`
- Functions: verb phrases for actions, noun phrases for pure calculations when
  the domain expects them
- Classes: nouns that represent domain concepts, adapters, or resources
- Booleans: `is_`, `has_`, `can_`, or `should_`
- Exceptions: end with `Error`
- Tests: `test_<behavior>_when_<condition>`

Avoid abbreviations unless they are standard in the project or domain. Prefer a
long clear name over a short name that requires local context.

## Import Hygiene

- Use absolute imports inside packages unless local relative imports are already
  the project standard.
- Do not use wildcard imports outside compatibility modules.
- Avoid import-time work that opens files, connects to services, reads
  environment-heavy configuration, or starts threads.
- Keep optional dependency imports at the boundary that needs them.

## Comments and Docstrings

Write docstrings for public APIs, non-obvious domain rules, and modules exposed
to users. Do not restate the function name in prose.

Use comments to explain why a decision exists, not what the next line does.
