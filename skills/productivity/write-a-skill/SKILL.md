---
name: write-a-skill
description: "Create, write, review, and improve reusable agent skills with proper structure, progressive disclosure, and bundled resources. Use when the user asks to create a skill, write a skill, build an agent skill, improve a SKILL.md, or package skill references, scripts, assets, or examples."
argument-hint: "<skill idea or draft>"
---

# Write a Skill

Create agent skills that are scoped, readable, easy to trigger, and packaged with only the resources needed for the work.

## When to Use

Use this skill when the user wants to create, write, build, draft, review, or improve an agent skill. It covers new skill folders, `SKILL.md` authoring, progressive disclosure, bundled references, utility scripts, examples, and validation checklists.

If the user is asking to install an existing skill, use a skill installation workflow instead. If they are asking for a one-off prompt or instruction block that will not become a reusable skill, keep the output lightweight and do not force the full structure.

## Core Rule

Optimize for a skill another agent can load quickly and apply correctly. Keep trigger metadata short, keep the main workflow in `SKILL.md`, and move detailed or rarely needed material into bundled resources with clear pointers.

## Workflow

1. Capture requirements from the conversation before asking questions. Identify the task or domain, expected use cases, output shape, likely tools, references, and any deterministic steps.
2. Ask only for missing details that affect the skill design: scope boundaries, common user phrasing, required scripts, examples, and source materials.
3. Choose the folder location and resource shape. Default to `SKILL.md` only; add `references/`, `scripts/`, or `assets/` only when they reduce context load or improve reliability.
4. Draft the skill using the local repository conventions. Use the description format below, and put detailed activation guidance under `When to Use` or `When Not to Use`.
5. Apply progressive disclosure. Put core behavior in `SKILL.md`; point to specific bundled files for deeper rules, examples, templates, or deterministic helpers.
6. Review the draft with the user or against the checklist. Confirm the skill covers intended use cases without overlapping unrelated skills.
7. Run any repository validation scripts requested by local instructions before finishing.

## Requirement Questions

Ask concise questions when the answer is not already clear:

- What task or domain should this skill cover?
- Which user requests should activate it, and which nearby requests should not?
- What output format should the agent produce?
- Does it need executable scripts, bundled references, templates, assets, or only instructions?
- Are there example inputs, existing workflows, or source materials to preserve?

## Description Format

Use a concise two-sentence YAML description when possible. Target 150-300 characters, stay under 500 characters when practical, and use a platform limit such as 1024 characters only when the skill needs unusually specific trigger coverage.

1. First sentence: describe the capability with strong task keywords such as create, write, review, improve, extract, validate, or generate.
2. Second sentence: start with `Use when` and list specific trigger keywords, contexts, file types, tools, outputs, or bundled resources.

If a local repository bans activation phrasing in public descriptions, rewrite the second sentence as neutral scope text with the same keywords. Still keep detailed activation boundaries in `When to Use` and `When Not to Use`.

Example:

```yaml
description: "Create, write, review, and improve reusable agent skills with proper structure, progressive disclosure, and bundled resources. Use when the user asks to create a skill, write a skill, build an agent skill, improve a SKILL.md, or package skill references, scripts, assets, or examples."
```

## Structure Guide

Load `references/skill-structure.md` when drafting or reviewing a full skill. It contains the folder layout, `SKILL.md` template, progressive disclosure rules, split-file guidance, script guidance, and review checklist.

Default structure:

```text
skill-name/
|-- SKILL.md
|-- references/
|   `-- topic.md
|-- scripts/
|   `-- helper.sh
`-- assets/
    `-- template.ext
```

## Drafting Rules

- Keep `SKILL.md` focused on the common path. Target under 80 lines, keep it under 100 lines by default, and split into `references/` when it grows past 100 lines.
- Write YAML descriptions with enough task keywords to support skill selection.
- Prefer `Use when` as the second sentence unless local instructions ban it.
- Put detailed activation boundaries in the body even when the description includes trigger context.
- Prefer references for long examples, templates, domain rules, schemas, or advanced cases.
- Prefer scripts for deterministic validation, formatting, conversion, or repeated mechanical work.
- Avoid time-sensitive claims unless the skill includes a verification step.
- Do not bundle secrets, private data, or unrelated files.

## Review Checklist

Before finalizing:

- Is the skill name stable, lowercase, and directory-friendly?
- Does the description identify the capability without violating local public-description rules?
- Are activation boundaries clear in `When to Use` and, if needed, `When Not to Use`?
- Is `SKILL.md` under 80 lines when practical and under 100 lines by default?
- Are detailed materials split into clearly named bundled resources?
- Are scripts included only where deterministic execution beats generated instructions?
- Are examples concrete and representative?
- Are local indexes, manifests, or install metadata updated?
- Have required validation scripts been run?
