# Default AI OS Scaffold

Use these concise templates only after the user approves the blueprint and file plan. Adapt names, paths, workflows, and validation commands from repository evidence. Do not invent private or personal details.

## `CLAUDE.md`

```markdown
# Claude Project Operating Guide

## Purpose

This project uses a repo-local AI Operating System so Claude can work from shared context, clear roles, bounded tools, and repeatable validation.

## Start Here

1. Read `references/ai-os.md`.
2. Read `context/project.md`.
3. Load the context files relevant to the task.
4. Follow the workflow in `context/workflows.md`.
5. Record durable decisions in `context/decisions.md`.

## Operating Principles

- Stay project-scoped; do not change global assistant, shell, or provider settings.
- Inspect existing files before asking questions.
- Make a plan before broad edits.
- Preserve user changes and avoid unrelated refactors.
- Validate behavior before reporting completion.

## Context Map

- `context/project.md`: project purpose, audience, systems, constraints, and non-goals.
- `context/decisions.md`: durable decisions, tradeoffs, reversibility, and review dates.
- `context/workflows.md`: task flows, handoffs, validation loops, and done criteria.
- `references/ai-os.md`: AI OS architecture, roles, tool boundaries, and maintenance.

## Claude Commands

- `/ai-os-review`: review the AI OS scaffold for drift, missing context, and stale validation rules.
```

## `.claude/commands/ai-os-review.md`

```markdown
# AI OS Review

Review the project AI OS for drift and missing context.

1. Read `CLAUDE.md`, `references/ai-os.md`, and `context/*.md`.
2. Check whether roles, workflows, tool boundaries, validation loops, and maintenance cadence still match the project.
3. Report findings first, ordered by severity.
4. Suggest minimal updates, but do not edit files unless the user approves.
```

## `context/project.md`

```markdown
# Project Context

## Purpose

<What this project exists to do.>

## Users and Outcomes

<Who the project serves and how success is recognized.>

## Systems and Surfaces

<Main apps, services, packages, docs, tools, and external integrations.>

## Constraints

<Technical, product, security, operational, timing, or team constraints.>

## Non-Goals

<What the AI OS should not optimize for or modify.>
```

## `context/decisions.md`

```markdown
# Decisions

Record durable project and AI OS decisions here.

| Date | Decision | Why | Tradeoffs | Revisit |
| :--- | :--- | :--- | :--- | :--- |
| <YYYY-MM-DD> | <Decision> | <Reason> | <Costs and rejected options> | <Date or condition> |
```

## `context/workflows.md`

```markdown
# Workflows

## Default Task Flow

1. Read `CLAUDE.md` and relevant files in `context/`.
2. Inspect the code or docs before asking questions.
3. State assumptions and the smallest useful plan.
4. Make scoped changes.
5. Run relevant validation.
6. Report changed files, validation results, and follow-ups.

## Validation Loops

- Code changes: <project-specific tests, lint, build, or manual checks>.
- Documentation changes: check links, paths, and consistency with current files.
- AI OS changes: run `/ai-os-review` or manually review this scaffold for drift.

## Done Criteria

- The requested outcome is complete.
- Relevant validation has passed or limitations are reported.
- Durable decisions are added to `context/decisions.md`.
- Follow-ups are explicit and owned.
```

## `context/about_me.md` Optional

Only create this file when the user opts in. Use placeholders; do not infer identity, preferences, private workflow, or personal data.

```markdown
# About Me

## Collaboration Preferences

<How the user prefers agents to communicate, plan, and escalate.>

## Decision Preferences

<Default tradeoffs, risk tolerance, and review expectations.>

## Privacy Notes

<Information the agent should avoid storing or repeating.>
```

## `references/ai-os.md`

```markdown
# AI Operating System

## Scope

This AI OS is local to this repository. It does not configure global Claude, Codex, Gemini, shell, Git, or machine-level settings.

## Agent Roles

- Planner: clarify scope, risks, dependencies, and approval gates.
- Implementer: make scoped changes after project context is loaded.
- Reviewer: inspect diffs, risks, test gaps, and drift.
- Maintainer: keep context, decisions, workflows, and validation loops current.

## Tool Boundaries

- Prefer read-only inspection before edits.
- Use project-local files for durable memory.
- Ask before destructive, global, or provider-specific changes.
- Treat `.claude/` as project-local Claude workflow support, not personal settings.

## Maintenance Cadence

- Review this AI OS when project structure, tools, team workflow, or validation commands change.
- Remove stale context rather than accumulating contradictions.
- Keep templates concise enough that agents can load them quickly.

## Risks

- Stale context can mislead agents.
- Overbroad roles can create conflicting behavior.
- Personal data in project files can leak through commits or shared repos.
- Provider-specific files can drift from project reality.
```
