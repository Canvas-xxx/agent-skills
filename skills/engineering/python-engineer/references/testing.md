# Testing

## Core Testing Rules

Test observable behavior through public boundaries:

- Use pytest unless the repo uses unittest.
- Prefer table-driven tests for input/output behavior.
- Mock only external systems, time, randomness, network, process boundaries, and
  expensive resources.
- Use fakes for domain collaborators when they make behavior clearer than mocks.
- Keep fixtures small and local until multiple tests genuinely share setup.
- Add regression tests for bugs before fixing them.
- Avoid testing private methods directly; test the behavior that makes them
  necessary.

## Test Shape

Good test names describe behavior and condition:

```python
def test_calculates_discount_when_customer_is_eligible() -> None:
    ...
```

Use arrange/act/assert structure when it improves readability. Do not add
section comments to tiny tests where the structure is obvious.

## Fixtures

Use fixtures for real shared setup, not for hiding important test inputs.

Prefer:

- Local literals for values that matter to the behavior
- Factory helpers for repeated domain objects
- Session fixtures only for expensive immutable resources
- Temporary directories from pytest for filesystem behavior

Avoid autouse fixtures unless they enforce a project-wide invariant.

## Mocks and Fakes

Mock at system boundaries:

- Network clients
- Database clients
- Filesystem operations when disk behavior is not under test
- Time and randomness
- Subprocesses
- Third-party APIs

Prefer fakes when the collaborator has meaningful behavior and a small interface.
For example, an in-memory repository fake is often clearer than a pile of mock
expectations.

## Integration Tests

Add integration tests when the risk is in wiring, configuration, query behavior,
serialization, or framework routing.

Keep integration tests explicit about external requirements. If they need Docker,
environment variables, or credentials, mark them and document how to run them.

## Async Tests

Use the project's async test plugin. Assert timeout, cancellation, and cleanup
behavior where those are part of the contract.

Do not leave background tasks running after the test. Test cancellation paths as
carefully as success paths for long-lived services.

## Regression Tests

For bugs, write the failing regression test first. Name the test after the
observable failure, not the implementation bug.
