# PRD Template

Use this template for `write-a-prd` output. Keep the structure stable unless the user provides a project-specific PRD template.

## Formatting Rules

- Write from the user's perspective first, then add implementation and testing decisions for handoff.
- Preserve project vocabulary, domain terms, ADR decisions, and known constraints from the repository.
- Label assumptions, unknowns, and unresolved decisions explicitly.
- Do not include specific file paths or code snippets in implementation decisions.
- Exception: include a trimmed prototype snippet only when it captures a decision more precisely than prose, such as a state machine, reducer, schema, or type shape. Note that it came from a prototype.
- Keep user stories comprehensive but scoped. Cover primary, secondary, edge, and operational workflows without padding.
- For very large features, group stories by actor or workflow instead of creating an oversized flat list.

## Template

```md
## Problem Statement

The problem that the user is facing, from the user's perspective.

## Solution

The solution to the problem, from the user's perspective.

## User Stories

A comprehensive, numbered list of user stories. Each user story should use this format:

1. As an <actor>, I want a <feature>, so that <benefit>

Cover primary, secondary, edge, and operational workflows. For very large features, group stories by actor or workflow.

## Implementation Decisions

A list of implementation decisions that were made. This can include:

- Modules or system areas that will be built or modified.
- Interfaces, contracts, or integration points that will change.
- Technical clarifications from the developer.
- Architectural decisions.
- Schema changes.
- API contracts.
- Specific interactions.

Do not include specific file paths or code snippets. They may become outdated quickly.

Exception: if a prototype produced a snippet that encodes a decision more precisely than prose can, inline it within the relevant decision and note briefly that it came from a prototype. Trim to the decision-rich parts.

## Testing Decisions

A list of testing decisions that were made. Include:

- What makes a good test for this feature.
- How tests should focus on external behavior instead of implementation details.
- Which modules, surfaces, or system seams will be tested.
- Prior art for similar tests in the codebase.

## Out of Scope

A description of the things that are out of scope for this PRD.

## Further Notes

Any further notes about the feature, including assumptions, dependencies, open questions, risks, rollout considerations, or follow-up work.
```
