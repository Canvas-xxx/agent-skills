# Skill Structure Reference

Use this reference while drafting, reviewing, or refactoring an agent skill.

## Standard Layout

```text
skill-name/
|-- SKILL.md              # Required main instructions
|-- references/           # Optional detailed docs loaded only as needed
|   |-- examples.md
|   `-- domain-rules.md
|-- scripts/              # Optional deterministic utilities
|   `-- helper.sh
`-- assets/               # Optional templates, static files, images, or fixtures
    `-- template.ext
```

Keep the folder name stable, lowercase, and easy to type. Prefer hyphenated names such as `write-a-skill`.

## SKILL.md Template

```md
---
name: skill-name
description: "Capability-focused summary for the skill. Use when the user asks for the specific task, context, file type, tool, or outcome this skill covers."
argument-hint: "<optional user input hint>"
---

# Skill Name

One short paragraph describing the reusable capability.

## When to Use

Describe activation boundaries, common user phrases, related contexts, and exclusions.

## Core Rule

State the main judgment the agent should optimize for.

## Workflow

1. Ingest the request and existing context.
2. Make the smallest useful decision or artifact.
3. Use references or scripts only when needed.
4. Validate the result before finishing.

## Reference Map

- `references/example.md`: load for advanced cases.

## Review Checklist

- Check the behavior the skill is meant to improve.
- Check the output format.
- Check local repository conventions.
```

## Progressive Disclosure

Skills should load in layers:

1. Metadata: the name and description are always visible to the agent.
2. `SKILL.md`: loaded after the skill is selected.
3. Bundled resources: loaded only when the current task needs them.

Keep the main file focused on the common workflow. Target under 80 lines, keep it under 100 lines by default, and split into `references/` when it grows past 100 lines. Move uncommon detail out of `SKILL.md` when it would make the skill harder to scan.

## Description Guidance

Respect local repository rules first. Prefer enough trigger context for the agent to select the skill, unless the repository requires neutral public descriptions.

Use a concise two-sentence pattern when possible. Target 150-300 characters, stay under 500 characters when practical, and use a platform limit such as 1024 characters only when the skill needs unusually specific trigger coverage.

1. First sentence: describe the capability with strong task keywords.
2. Second sentence: start with `Use when` and list specific trigger keywords, contexts, file types, tools, outputs, or bundled resources.

Default description style:

```text
Create, write, review, and improve reusable agent skills with proper structure, progressive disclosure, and bundled resources. Use when the user asks to create a skill, write a skill, build an agent skill, improve a SKILL.md, or package skill references, scripts, assets, or examples.
```

If a repository bans activation phrasing in public descriptions, rewrite the second sentence as neutral scope text with the same keywords. Keep descriptions under the platform limit.

## When to Add References

Add `references/` files when:

- `SKILL.md` is getting long.
- The content has distinct domains, frameworks, schemas, or output templates.
- Advanced details are useful but rarely needed.
- Examples are numerous enough to distract from the main workflow.

Reference files should be one level deep when possible and named by topic.

## When to Add Scripts

Add `scripts/` files when:

- The operation is deterministic.
- The agent would otherwise regenerate the same code repeatedly.
- Errors need explicit handling.
- Validation, formatting, conversion, or extraction can be automated.

Make scripts small, documented by usage comments, and safe for the expected workspace. Do not include secrets or destructive defaults.

## When to Add Assets

Add `assets/` files when the skill needs static templates, fixtures, visual references, or reusable starter files. Keep assets directly relevant to the skill output.

## Review Checklist

- Folder name and YAML `name` match.
- Public description follows local conventions and gives enough trigger context for skill selection.
- Activation guidance has clear inclusions and exclusions.
- `SKILL.md` covers the common path without excessive detail.
- References are named and linked from `SKILL.md`.
- Scripts are deterministic and safe.
- Examples cover realistic user prompts.
- Required README, manifest, or install metadata entries are updated.
- Required validation commands pass.
- Main `SKILL.md` is under 80 lines when practical and under 100 lines by default.
