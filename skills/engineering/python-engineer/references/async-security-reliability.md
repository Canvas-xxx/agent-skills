# Async, Security, and Reliability

## Async and Concurrency

Choose the concurrency model deliberately:

| Need | Preferred approach |
|---|---|
| Many network-bound operations | `asyncio` with structured task ownership |
| CPU-bound work | multiprocessing, native extension, or external worker |
| Blocking I/O in async app | isolate with executor or use async-native client |
| Background service lifecycle | explicit start/stop and cancellation handling |

Do not mix sync and async APIs casually. If a library is sync-only, isolate that
decision at the adapter boundary.

Use task groups or clear task ownership for concurrent work. Avoid orphaned
tasks created with bare `asyncio.create_task()` unless lifecycle and error
handling are explicit.

## Resource Management

Manage resources with context managers:

- Files
- HTTP clients
- Database sessions and pools
- Locks
- Temporary directories
- Background worker groups

Close resources deterministically. Make cancellation paths clean up the same
resources as success paths.

## Security Boundaries

- Use parameterized SQL and safe query builders.
- Avoid `shell=True`; pass argv lists to subprocesses.
- Treat paths from users as untrusted and normalize/check containment.
- Do not log secrets, tokens, cookies, or full authorization headers.
- Use `secrets` for security tokens, not `random`.
- Validate data at trust boundaries, not deep inside unrelated domain code.
- Keep secrets out of source files, test fixtures, snapshots, and logs.

## Paths and Files

For user-controlled paths:

- Resolve paths before checking containment.
- Check that resolved paths stay inside the allowed base directory.
- Avoid following symlinks when that would escape the intended boundary.
- Use temporary files and atomic moves for important writes.

## Subprocesses

Use argv lists:

```python
subprocess.run(["git", "status", "--short"], check=True)
```

Set timeouts for subprocess calls that can hang. Capture and sanitize output
before logging it.

## Reliability

- Set timeouts on network calls.
- Make retries bounded and targeted to transient failures.
- Use idempotency keys or deduplication for retryable writes.
- Log with enough context to debug without exposing secrets.
- Keep configuration in environment, typed settings, or project config, not
  hardcoded module globals.
- Fail fast on invalid startup configuration.
