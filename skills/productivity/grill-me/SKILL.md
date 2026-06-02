---
name: grill-me
description: "Pressure-test plans and designs through focused interview loops that resolve decisions, risks, dependencies, and tradeoffs. Use when the user asks to be grilled, stress-test a plan, or sharpen a design before implementation."
---

# Grill Me

Interview the user about a plan or design until both sides share a concrete understanding of the goal, decisions, risks, and tradeoffs.

## When to Use

Use this skill when the user wants to be grilled on a plan, stress-test a design, pressure-test an approach, prepare for review, or turn a vague proposal into resolved decisions.

Use a code review or implementation skill instead when the user wants direct fixes, a completed design document, or review findings without an interactive interview.

## Core Rule

Resolve the decision tree one branch at a time. Ask only the next useful question, and answer it yourself first when available evidence is enough.

## Workflow

1. Restate the plan or design in one concise sentence. If the goal is unclear, make the first question about the goal.
2. Build an internal decision tree covering goal, users, constraints, success criteria, alternatives, dependencies, failure modes, rollout, validation, and rollback.
3. Inspect the codebase, docs, config, tests, logs, or supplied artifacts before asking any question that those materials can answer.
4. Ask exactly one question at a time.
5. For each question, include a recommended answer with brief rationale, then ask the user to confirm or correct it.
6. Follow dependencies. Do not ask downstream questions until the upstream decision they rely on is resolved.
7. When the important branches are resolved, summarize agreed decisions, remaining open questions, and highest risks.

## Question Style

Each interview turn should contain:

- The next question.
- Why the question matters.
- Recommended answer.

Keep questions narrow enough for direct answers. Use sharper follow-ups when an answer is vague or blocks a later decision.

## Operating Rules

- Be persistent but not performative. The goal is shared understanding, not interrogation theater.
- Prefer evidence over questions when local artifacts can settle the issue.
- Keep recommendations provisional until the user confirms or corrects them.
- Do not propose implementation until core decisions are resolved.
- Do not generate files by default. If the user asks to save the result, ask for or infer a clear destination path before writing.
