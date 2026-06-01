# Linting and Tooling

## Tool Selection

Respect existing tools first. Common modern defaults:

| Purpose | Preferred tools |
|---|---|
| Formatting | Ruff format or Black |
| Linting | Ruff |
| Type checking | Pyright or mypy, matching the project |
| Tests | pytest |
| Imports | Ruff import rules or isort if already configured |
| Packaging | `pyproject.toml` |

Do not add overlapping tools without a reason. If Ruff already formats and
lints, avoid adding Black, isort, Flake8, and many plugins unless the repository
standardizes on them.

## Baseline Standards

Good baseline rules for new projects:

- Python target version set explicitly
- Line length consistent with the repo, commonly 88 or 100
- `ruff check` and formatter in CI
- Type checker on package code, with stricter checks added incrementally
- Test command documented in `pyproject.toml`, README, justfile, Makefile, or CI
- No blanket `# noqa` or `# type: ignore`
- Every ignore gets a narrow code and short reason

## `pyproject.toml` Guidance

Prefer central configuration in `pyproject.toml` for new projects:

```toml
[tool.ruff]
target-version = "py312"
line-length = 100

[tool.ruff.lint]
select = ["E", "F", "I", "B", "UP", "SIM"]

[tool.pytest.ini_options]
testpaths = ["tests"]
```

Only add strict type-checker settings once the package can realistically pass
them. For legacy projects, tighten in scoped increments.

## Packaging

- Prefer PEP 621 metadata in `pyproject.toml`.
- Keep runtime dependencies separate from development dependencies.
- Pin application lockfiles; use compatible ranges for libraries when
  appropriate.
- Expose CLIs through project scripts rather than ad-hoc shell wrappers.
- Keep package import side effects minimal so metadata and tests can import
  safely.

## Validation Commands

Use the narrowest useful command:

- Focused test: `pytest tests/path/test_file.py::test_name`
- Test file: `pytest tests/path/test_file.py`
- Package tests: `pytest tests/path`
- Lint: `ruff check .`
- Format check: `ruff format --check .`
- Type check: `pyright` or `mypy package_name`

If the project uses `uv`, `poetry`, `hatch`, `tox`, `nox`, `make`, or `just`,
prefer the existing wrapper command.
