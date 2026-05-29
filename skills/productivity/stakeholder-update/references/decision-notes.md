# Decision Notes

Use decision notes for decisions that affect strategy, architecture, commitments, customer experience, or future options.

## Compact Decision Format

```text
# [Decision Title]

Status: [Proposed / Accepted / Superseded]

Context:
[What situation requires a decision?]

Decision:
[What was decided?]

Consequences:
- [Positive consequence]
- [Tradeoff or constraint]

Alternatives considered:
- [Option] - [Why it was not chosen]
```

## Decision Needed Format

Use this when the update needs a stakeholder decision.

```text
Decision needed: [Decision]

Context:
- [Why this decision matters now]
- [Constraint, deadline, or dependency]

Options:
- [Option A] - [Tradeoff]
- [Option B] - [Tradeoff]

Recommendation:
- [Recommended option] because [reason]

Needed by:
- [Date] to avoid [impact]
```

## Decision Writing Rules

- State the decision directly.
- Include the deadline when timing matters.
- Recommend an option when there is enough evidence.
- Separate facts from opinion.
- Capture tradeoffs honestly.
- Avoid documenting trivial choices that do not constrain future work.
