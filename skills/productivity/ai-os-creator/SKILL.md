---
name: ai-os-creator
description: "Design and scaffold project-scoped AI operating systems with principles, agent roles, context files, workflows, tool boundaries, and validation loops. Use when creating a Claude-first project AI OS, agent collaboration system, or repo-local AI workflow scaffold."
argument-hint: "<project AI OS brief>"
---

# AI OS Creator

Create a project-scoped AI Operating System that helps agents work from shared principles, role definitions, context, workflows, tool boundaries, and validation loops.

## When to Use

Use this skill when the user wants a project-local AI operating system, Claude-first agent workflow, repo-local agent collaboration structure, or AI OS scaffold for a specific project.

Use `setup-context` for one-off context files. Use `write-a-skill` for reusable agent skills. Use `write-a-prd` or `write-a-story` for product backlog artifacts. Use debugging skills for investigation workflows.

## When Not to Use

Do not create global assistant configuration, provider account settings, reusable skills, PRDs, stories, debugging playbooks, or one-off documentation tasks.

Do not write files until the user has reviewed the blueprint and explicitly approved the scaffold scope.

## Core Rule

Blueprint first, scaffold second. Keep all outputs project-scoped, Claude-first, and reversible.

## Workflow

1. Inspect the project before asking for details. Read existing files such as `CLAUDE.md`, `AGENTS.md`, `README.md`, `context/`, `.context/`, `.claude/`, `references/`, package manifests, and visible docs.
2. Build a blueprint with these sections: project purpose, operating principles, agent roles, context inventory, workflow map, tool boundaries, scaffold file plan, validation loops, maintenance cadence, risks, and an explicit approval prompt.
3. Present the blueprint before writing files. Call out existing files that would be updated, new files that would be created, optional files such as `context/about_me.md`, and assumptions that need review.
4. Wait for explicit approval of the scaffold scope. If the user changes scope, update the blueprint first.
5. During scaffold generation, load `references/default-scaffold.md` and adapt the templates to the project. Do not infer personal details for `context/about_me.md`; include it only when the user opted in.
6. Write or update only approved project files. Default Claude-first files are `CLAUDE.md`, `.claude/commands/ai-os-review.md`, `context/project.md`, `context/decisions.md`, `context/workflows.md`, and `references/ai-os.md`.
7. Validate the scaffold by checking that roles, context paths, workflow rules, tool boundaries, validation loops, and maintenance notes are present and internally consistent.
8. Finish by listing created or updated files, unresolved follow-ups, and any assumptions that remain.

## Output Contract

The blueprint must be reviewable without opening generated files. The scaffold must be usable by a Claude-based agent from the repository root without global configuration.

## Reference Map

- `references/default-scaffold.md`: load only after scaffold approval to generate the default Claude-first files and optional `context/about_me.md`.

## Review Checklist

- Did the user approve the scaffold scope before any write?
- Are all outputs project-scoped rather than global?
- Is the default scaffold Claude-first and limited to approved files?
- Does the result include principles, roles, context paths, workflows, tool boundaries, validation loops, and maintenance notes?
- Are optional personal details excluded unless the user opted in?
