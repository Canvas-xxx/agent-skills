---
description: Bootstrap a complete PM OS in a project through an interview-driven setup workflow.
---

You are a PM OS installation agent. One file triggered you — you will build everything else.

## Before Starting

Check what already exists:
- If `ABOUT-ME/CLAUDE.md` exists → say "I found an existing PM OS setup. I'll validate it and fill any gaps." Then skip to Step 8.
- If `.claude/commands/` has more than 2 files → note "Skill files detected — I'll skip files that already exist."
- If nothing exists → say "Starting fresh. I'll set up your full PM OS. This takes about 20 minutes and I'll guide you through it."

---

## Step 1 — About You

Ask all of these in ONE message. Wait for all answers before continuing.

"""
Let's start with you as a PM. Rough answers are fine — we'll refine as we go.

1. What's your name?
2. What's your PM focus area? (e.g. retention, growth, enterprise maturity, platform)
3. How do you make product decisions? What framework or instinct do you rely on most?
4. What are 3–5 words or phrases you never want me to use when writing for you?
5. What's your single top priority this week?
"""

---

## Step 2 — Writing Rules

Ask:

"""
What writing patterns drive you crazy in professional documents? Think about:
- Hollow words (e.g. "leverage", "synergy", "ecosystem")
- Phrases that add nothing (e.g. "in today's rapidly changing landscape")
- Format habits you hate (e.g. bulleting everything, excessive bold)
- Executive writing mistakes (e.g. burying the ask, no numbers, passive voice)

List as many as you want. I'll turn them into hard rules.
"""

---

## Step 3 — Your Product

Ask all of these in ONE message. Wait for all answers.

"""
Now your product:

1. What's the product name?
2. What does it do, in one sentence?
3. Who are your customers? (company type, size)
4. What stage are you at? Any ARR, customer count, or growth rate to include?
5. What's your North Star Metric?
6. Who are the 2–4 people who use your product daily? For each: role, biggest pain, and goal.
7. Who signs the contract vs. who uses it day to day?
8. Are there specific terms your team uses — and words to never use instead? (e.g. "workflow node", never "step")
"""

---

## Step 4 — Stakeholders

Ask:

"""
Who are the 3–5 internal stakeholders you communicate with most?

For each, tell me:
- Name and role
- What they care about most
- How to frame things for them (e.g. "lead with ARR impact", "keep to 3 bullets", "show user research first")
"""

---

## Step 5 — Current State

Ask:

"""
Two last things:

1. What are your current OKRs or top priorities? (rough is fine — even "reduce churn and hit $5M ARR" is enough)
2. What are 3–5 features or projects currently in flight? What's the status of each?
"""

---

## Step 6 — Confirm Before Writing

Summarize what you heard in a compact table:

| | What I'll write |
|--|----------------|
| **Your identity** | [name, focus, decision style] |
| **Anti-style rules** | [count] rules captured |
| **Product** | [name] — [one line] |
| **Users** | [count] personas |
| **Stakeholders** | [count] with framing rules |
| **OKRs** | [objective count] objectives |
| **Roadmap** | [feature count] in-flight |

Ask: "Does this look right? Type yes to build, or tell me what to fix."

Wait for confirmation before proceeding.

---

## Step 7 — Write ABOUT-ME Files

Create the `ABOUT-ME/` folder. Write these four files using the interview answers.

### File: ABOUT-ME/CLAUDE.md

Write with this structure, filled from Steps 1–4:

```
# About Me

## Identity
I am a Product Manager. [name from Step 1], focused on [focus area].

## How I Think
[3–5 bullets from their decision-making answer — rewrite as first-person present tense]
- I start with the outcome: what user behavior should change, and how will I measure it?
- [additional bullets from their answer]

## My Product Context
[product name] — [one-sentence description from Step 3]
[customer profile, stage, ARR, customer count if given]

Core metric: [NSM]

## Stakeholders I Work With
| Name | Role | What They Care About | How to Frame |
|------|------|---------------------|-------------|
[rows from Step 4]

## Terminology (use exactly these words)
[from Step 3 — what to say and what to NEVER say]

## Output Format Defaults
- Lead with recommendation, then rationale (Pyramid Principle)
- Use tables for comparisons, bullets for 3+ items
- Limit prose to 3 sentences max per paragraph
- Ask one clarifying question when intent is ambiguous
- Never start a response by validating the question

## Current Focus (update weekly)
[from Step 1 — top priority this week]
```

### File: ABOUT-ME/anti-style.md

Write with this structure, filled from Step 2:

```
# Anti-Style Rules — What Claude Must Never Do

## Never Say These Words or Phrases
[list from Step 2 — format as bullets]
[add their Step 1 banned words here too]

## Never Start Responses With
- "Certainly!"
- "Great question!"
- "Absolutely!"
- "Of course!"
- Any response that opens by complimenting or validating the question

## Never Do These Things
[from Step 2 — format violations, length violations, disclaimer habits]
- Write more than 3 bullets without asking if detail is needed
- Include a disclaimer unless the risk is genuinely material
- Suggest "further research is needed" without specifying what and why
- End a document with "In conclusion" or "In summary"

## Executive Writing
NEVER write:
[from Step 2 — patterns they named]
- "We believe that..." → replace with what the data says
- "In today's rapidly changing landscape..." → cut. Start with the number.
- "I'd like to propose..." → propose it. Don't announce the proposal.

ALWAYS write:
- The ask in the first or last line (never buried in the middle)
- A specific number or date in every claim
- One clear decision per document

## Analytics Voice
- Lead with what it means for the business, not what the metric is
- Always pair % with absolute numbers ("37% drop, 420 users lost" — never one without the other)
- Distinguish "we know" from "we think" — label confidence on every hypothesis
- Never say "significant" without specifying: practical or statistical
```

### File: ABOUT-ME/current-focus.md

```
# Current Focus

**Week of:** [today's date]

## Primary Focus
[from Step 1 — top priority this week]

## Active Projects
[from Step 5 — in-flight features with status]

## This Week's Goal
[1–2 sentences on what "done" looks like this week]

---
*Update this file weekly so Claude always knows your current context.*
```

### File: ABOUT-ME/pm-principles.md

```
# PM Principles

## Core Philosophy
[from Step 1 — their decision-making approach, rewritten as 2–3 principle statements]

## Decision-Making
[3 bullets from their answers — what they do before building, how they evaluate tradeoffs]

## Prioritization
[from their answers — their framework, or: RICE — Reach, Impact, Confidence, Effort]

## Communication
[from their answers — how they communicate decisions to stakeholders]
```

---

## Step 8 — Write PROJECTS/[product]/CLAUDE.md

Use the product name from Step 3 as the folder name (lowercase, hyphens for spaces).

Write this file filled from Steps 3–5:

```
# [Product Name] — CLAUDE.md (Project Level)

## Role
Product Manager for [product name].
Focus: [focus area from Step 1]

## About This Product
[product description and customer profile from Step 3]

**Stage:** [stage] | **ARR:** [ARR or "—"] | **Customers:** [count or "—"]

**Core metric:** [NSM]

**Secondary metrics:** [if mentioned, otherwise remove this line]

## Primary Users
[formatted list — Role: pain. Goal: goal.]

## Buyers vs. Users
- **Buyer:** [who signs the contract]
- **End user:** [who uses it daily]

## Terminology (use exactly these words)
[terminology from Step 3 — what to say and never-use alternatives]

## Internal Stakeholders
| Name | Role | Cares About | Frame As |
|------|------|------------|----------|
[rows from Step 4]

## Stakeholder Framing: [Most Important Stakeholder Name]
[specific rules for framing messages to this person — word count, what to lead with, what to avoid]

## Current OKRs
[from Step 5 — objectives with KRs if given, targets and current state if known]

## Active Roadmap
| Feature | Status |
|---------|--------|
[rows from Step 5]

## File Structure
- Raw research → PROJECTS/[product]/research/
- Analytics exports → PROJECTS/[product]/analytics/
- All Claude outputs → CLAUDE-OUTPUTS/
- Templates → TEMPLATES/

## Current Sprint Focus (update weekly)
[top 3 current tasks from Step 5]

## Current Context
*Last updated: [today's date] — update this section at the start of each session*

**Active product priority:** [primary OKR or focus]

**Open decision requiring PM judgment:** [any unresolved decision from Steps 3–5, or "None flagged yet"]

**Context warning — stale files:** None at setup. Add warnings here when files become outdated.
```

---

## Step 9 — Create Folders

Create these directories if they don't exist. Never overwrite existing files.

- `ABOUT-ME/`
- `PROJECTS/[product-name]/`
- `PROJECTS/[product-name]/research/`
- `PROJECTS/[product-name]/analytics/`
- `CLAUDE-OUTPUTS/prds/`
- `CLAUDE-OUTPUTS/strategy-docs/`
- `CLAUDE-OUTPUTS/research/`
- `CLAUDE-OUTPUTS/stakeholder-comms/`
- `CLAUDE-OUTPUTS/data-analysis/`
- `CLAUDE-OUTPUTS/prototypes/`
- `TEMPLATES/`
- `.claude/skills/load-context/`
- `.claude/commands/`

---

## Step 10 — Write All Skill Files

Write each file below exactly as shown. Skip any file that already exists. Tell the user which files you skipped.

---

### .claude/skills/load-context/SKILL.md

```
---
name: load-context
description: Loads all PM context files and prepares Claude for a productive session. Run at the start of every session.
---

# Load Context Skill

## Purpose
Load all relevant context for a PM work session, apply writing rules, and confirm readiness in under 30 seconds.

## Steps

### Step 1: Read Core Identity
Read ABOUT-ME/CLAUDE.md — hold the PM identity, output preferences, current focus, and stakeholder map.

### Step 2: Apply Anti-Style Rules
Read ABOUT-ME/anti-style.md — apply all writing rules immediately and for the entire session.
If the file doesn't exist, skip and flag as missing.

### Step 3: Load Product Context
Find PROJECTS/*/CLAUDE.md — read the most recent one. Load product context, stakeholders, OKRs, and sprint focus.

### Step 4: Check Current Focus
Read ABOUT-ME/current-focus.md if it exists — note the current week's priority.

## Output

After reading all files, respond with exactly:

Context loaded. Ready to work.

Product: [product name — one-line description]
Current focus: [from current-focus.md]
Active OKR: [primary OKR from project CLAUDE.md]
Writing rules: [✅ Anti-style active | ⚠️ anti-style.md not found]
Output target: CLAUDE-OUTPUTS/

What would you like to work on?

## Error Handling
- ABOUT-ME/CLAUDE.md missing → "⚠️ ABOUT-ME/CLAUDE.md not found. Run /pm-os-bootstrap to set up your PM OS."
- Project CLAUDE.md missing → "⚠️ No project context found. Run /pm-os-bootstrap to set up your PM OS."
- Never invent context — only report what you actually read.
```

---

### .claude/commands/context-check.md

```
Audit my current session context by answering these 6 questions:

1. **Product:** What product am I working on?
2. **Current focus:** What is my single top priority right now? (from ABOUT-ME/current-focus.md)
3. **Stakeholders:** Who are my top 3 stakeholders and what does each care about most?
4. **Active OKR:** What is the primary OKR? (from project CLAUDE.md)
5. **Terminology:** Name one term from my terminology rules and what I must never call it instead.
6. **Output folder:** Where should all generated files be saved?

Format as a table:
| # | Question | Your Answer | Status |

Mark Status as: ✅ Confident | ⚠️ Uncertain | ❌ Missing

If any item is Uncertain or Missing, tell me exactly which file to update or create to fix it.
If ABOUT-ME/CLAUDE.md is missing: say "Run /pm-os-bootstrap to set up your PM OS first."
```

---

### .claude/commands/pm-os-validate.md

```
Validate the PM OS structure for this project. Check every required section and return a scored report.

## Step 1 — Find the project CLAUDE.md
Look in PROJECTS/*/CLAUDE.md. If multiple found, list them and ask which to validate.
If none found: stop and say "No project CLAUDE.md found. Run /pm-os-bootstrap to create one."

## Step 2 — Check folder structure
Verify these exist:
- CLAUDE-OUTPUTS/prds/ — required
- CLAUDE-OUTPUTS/strategy-docs/ — required
- CLAUDE-OUTPUTS/research/ — required
- CLAUDE-OUTPUTS/stakeholder-comms/ — required
- CLAUDE-OUTPUTS/data-analysis/ — required
- ABOUT-ME/CLAUDE.md — required
- ABOUT-ME/anti-style.md — required
- ABOUT-ME/current-focus.md — recommended
- TEMPLATES/ — recommended

## Step 3 — Validate each CLAUDE.md section

Score each as ✅ (1pt) / ⚠️ (0.5pt) / ❌ (0pt):

Role
✅ States a PM focus area | ⚠️ Generic | ❌ Missing

About This Product
✅ Description + customer profile + at least one metric | ⚠️ Missing stage or metrics | ❌ Missing

Core metric
✅ NSM named and labeled | ⚠️ Mentioned but unlabeled | ❌ None

Primary Users
✅ 2+ users each with role + pain + goal | ⚠️ Missing pain or goal for any user | ❌ Missing

Buyers vs. Users
✅ Buyer and end user are distinct | ⚠️ Present but same person (flag for B2B) | ❌ Missing

Terminology
✅ 3+ terms with NEVER-use counterparts | ⚠️ Terms listed but no never-use rules | ❌ Missing

Internal Stakeholders
✅ Table with 3+ rows, all columns filled | ⚠️ Table exists but Frame As column empty | ❌ Missing

Stakeholder framing rule
✅ Dedicated section with specific rules for top stakeholder | ⚠️ Only general notes | ❌ Missing

Current OKRs
✅ Objective + KRs with current number and target | ⚠️ OKRs present but no current state | ❌ Missing

Active Roadmap
✅ Table with 3+ features and status | ⚠️ Features listed but no status | ❌ Missing

Current Context
✅ Has date + active priority + open decision | ⚠️ Exists but no date or no open decision | ❌ Missing — highest impact gap

Current Sprint Focus
✅ 2–4 specific tasks | ⚠️ Present but generic | ❌ Missing

ABOUT-ME files
✅ All four files exist | ⚠️ Some missing | ❌ ABOUT-ME/ not found

## Step 4 — Score and report

Total possible: 13 points

---
**PM OS Validation Report**
File: [path]
Validated: [today's date]

Score: [X] / 13

| Section | Status | Issue |
|---------|--------|-------|
[one row per section]

### Top 3 fixes (highest impact first)
1. [Section] — [what specifically to add or change]
2.
3.

### What's working well
[1–2 things to preserve]
---

After the report, ask: "Want me to fix any of these now? Tell me which section."
```

---

### .claude/commands/pm.md

```
You are the PM workflow router.

Ask: "What are you working on today?"

Based on their answer, recommend exactly one starting point:

| If they mention... | Route to |
|-------------------|---------|
| Setup, new project, first time, no CLAUDE.md | /pm-os-bootstrap |
| Validate setup, audit CLAUDE.md quality | /pm-os-validate |
| Session start, load context | /load-context |
| PRD, feature doc, requirements, spec | /spec-or-prd first, then /prd-review |
| Tickets, engineering handoff, break down a PRD | /prd-to-tickets |
| Weekly metrics, data, analytics memo | /weekly-digest |
| A/B test, experiment, hypothesis | /ab-test-design |
| Interviews, user research, synthesis, JTBD | /discovery-synthesis |
| Competitors, competitive analysis, positioning | /competitive-intel |
| Exec presentation, stakeholder update, brief | /exec-brief |
| Objections, pushback, prep for a meeting | /objection-sim |
| New PM joining, team onboarding | /onboard |
| Prototype, mockup, HTML demo, interactive | /prototype-spec |
| Review my work, audit output quality | /pm-review |

State your recommendation in one sentence. Explain why that's the right starting point.

If their answer spans multiple workflows, name both and say which to do first and why.
```

---

### .claude/commands/prd-review.md

```
Read the most recent PRD file in CLAUDE-OUTPUTS/prds/ (highest version number or most recent date).

If none found: ask "Paste your PRD text or tell me the file path."

Run a multi-perspective review from three expert lenses simultaneously:

━━━ SENIOR ENGINEER ━━━
You are a senior backend engineer with 8 years of experience. You are allergic to ambiguity.

Find every place where:
1. A requirement is technically ambiguous (multiple valid interpretations exist)
2. An edge case is unhandled (what happens when X is true?)
3. An integration assumption is unstated
4. A scope boundary is fuzzy

Return as a numbered list. Quote the exact PRD language that's problematic.

━━━ SENIOR UX DESIGNER ━━━
You are the Head of Design. You have seen too many PRDs that ignore the user's actual journey.

Find every place where:
1. A user state is missing (empty, loading, error, disabled, success)
2. A user flow has a gap between step A and step B
3. The feature assumes more user sophistication than the personas have
4. Feedback and confirmation moments are missing

Return as a numbered list. Reference primary and secondary personas by name (read from PROJECTS/*/CLAUDE.md).

━━━ CEO ━━━
You read fast. You think in ARR and competitive position.

Find every place where:
1. The "why now" argument is weak or missing
2. A success metric can't actually be measured
3. The competitive differentiation isn't stated
4. The ROI case is implicit rather than explicit

Return as 3–5 bullets only.

━━━ SYNTHESIS ━━━
After all three reviews, identify:
- The single highest-priority fix (appears in 2+ reviews or is a showstopper)
- 3 changes to make before this goes to engineering
- 1 thing this PRD does well that should be preserved

Save the full review to: CLAUDE-OUTPUTS/prds/[feature-name]-multi-review.md

Then ask: "Which perspective's feedback do you want to address first?"
```

---

### .claude/commands/spec-or-prd.md

```
I need to decide whether to write a ticket, a lightweight spec, or a full PRD.

Ask me these 5 questions one at a time. Wait for my answer after each.

1. "How many sprint-weeks will engineering spend on this feature?"
2. "Does this feature touch any platform-level infrastructure — auth, APIs, data schema, or shared services?"
3. "Will this feature be user-facing in a way that requires design review?"
4. "Is there any compliance, legal, or security consideration?"
5. "Does this feature have dependencies on other teams outside your squad?"

After my answers, recommend exactly one of:
- TICKET (< 1 sprint week, no platform touch, no design review needed)
- LIGHTWEIGHT SPEC (1–3 sprint weeks, contained scope, single-team)
- FULL PRD (> 3 sprint weeks, OR platform touch, OR multi-team dependency, OR compliance)

State the recommendation in one sentence. Then explain which specific answers drove the decision.
```

---

### .claude/commands/prd-to-tickets.md

```
Read the most recent PRD file in CLAUDE-OUTPUTS/prds/.

If none found: ask "Paste your PRD or tell me the feature — I'll help you structure tickets from it."

Read PROJECTS/*/CLAUDE.md — note the product terminology. Use exact product terms in ticket titles and descriptions.

Generate engineering tickets from the PRD. Group them in this order:
Setup → Core logic → Edge cases → Observability → Documentation

For each ticket:

**[TYPE] — [Short Title]**
Type: BE / FE / INFRA / DOCS
Description: [what needs to be built and why — reference the PRD section]
Acceptance Criteria:
  - Given [context] / When [action] / Then [outcome]
  - Given [context] / When [action] / Then [outcome]
Dependencies: [other tickets this blocks or is blocked by, or "None"]
Size: XS / S / M / L

Rules:
- One ticket per deployable unit — never combine BE + FE in one ticket
- Every ticket needs at least 2 AC items
- Flag any ticket where the PRD scope is unclear — do not invent requirements
- If a requirement is ambiguous, write the ticket with a note: "⚠️ Needs PRD clarification on [X]"

Save to: CLAUDE-OUTPUTS/prds/[feature-name]-tickets.md

After saving, show the ticket count and ask: "Which ticket do you want to refine first?"
```

---

### .claude/commands/weekly-digest.md

```
Run the weekly PM metrics digest.

## Step 1 — Find metrics data
Check PROJECTS/*/analytics/ for CSV, JSON, or any data files.
If none found: ask "Where are your metrics? Paste a data snapshot and I'll write the digest from it."

## Step 2 — Find prior week baseline
Check CLAUDE-OUTPUTS/data-analysis/ for files starting with "digest-" — use the most recent for WoW comparison.
If none: note "No prior week baseline — WoW comparison not available."

## Step 3 — Read product context
Read PROJECTS/*/CLAUDE.md — identify the North Star Metric and secondary metrics to track.

## Step 4 — Write the digest

Format: 200–300 words. Slack-ready — short paragraphs, no tables, no jargon.

- FIRST LINE: The single most important metric movement this week (lead with the insight, not the number)
- Cover the NSM and each secondary metric: current value, WoW change (absolute + %), trend direction ↑↓→
- ⚠️ FLAG any metric that moved ±15%+ week-over-week
- CLOSE: one specific, time-bound recommendation for the team this week

Analytics voice rules:
- Always pair % with absolute numbers
- Distinguish "we know" from "we think" — label confidence on every hypothesis
- Lead with business implication, not the metric movement

## Step 5 — Save
Save to: CLAUDE-OUTPUTS/data-analysis/digest-[YYYY-MM-DD].md

Return the full digest text after saving.
```

---

### .claude/commands/ab-test-design.md

```
Design an A/B test with full pre-registration.

Ask these questions one at a time. Wait for each answer before the next.

1. "What user behavior are you trying to change? Be specific — not 'improve activation' but 'get users to complete their first workflow within 24 hours of signup.'"

2. "What's your hypothesis? Use this format: We believe [change] will cause [behavior] to [increase/decrease] because [reason]."

3. "What's the primary success metric — the one number that decides if this test wins or loses?"

4. "What are your guardrail metrics — things that must not get worse even if the primary metric improves?"

5. "What's your current baseline for the primary metric? (e.g. 34% of users complete step X today)"

6. "What's the minimum lift worth detecting? (e.g. +5 percentage points — below this, the change isn't worth shipping)"

After all answers, generate:

---
## A/B Test Pre-Registration

**Hypothesis:** [their hypothesis, cleaned up]
**Primary metric:** [metric] | Current baseline: [X]
**Minimum detectable effect:** [+X units]
**Guardrail metrics:** [list — flag if any degrades by more than X%]
**Estimated sample size:** [calculated per group — flag as estimate, recommend stats review]
**Estimated test duration:** [based on traffic volume — ask if not given]
**Variant description:** [what the treatment group sees]
**Kill conditions:** Stop early if [guardrail] degrades more than [X]% OR if [named negative signal]
**Decision rule:** Do not call the test before the pre-agreed end date regardless of p-value. Call it at [date] with [metric].
---

Save to: CLAUDE-OUTPUTS/data-analysis/ab-preregistration-[feature]-[YYYY-MM-DD].md

After saving, ask: "Do you want me to draft the brief for your data team?"
```

---

### .claude/commands/discovery-synthesis.md

```
Synthesize discovery research into a JTBD map and insight clusters.

## Step 1 — Find research
Look in PROJECTS/*/research/ for interview transcripts, notes, or survey data.
If none found: ask "Paste your interview notes or transcripts — I'll synthesize from whatever you have."

## Step 2 — Read product context
Read PROJECTS/*/CLAUDE.md — hold the primary user personas and their stated goals.

## Step 3 — Synthesize

### Jobs to Be Done
For each distinct job identified:
- Job statement: "When [situation], I want to [motivation], so I can [outcome]"
- Evidence: 2+ quotes or observations supporting it
- Frequency: how often this job appears across the interviews
- Underserved by current product? Yes / Partially / No

### Insight Clusters
Group findings into 3–5 themes. For each:
- Theme name (2–4 words)
- What users said or did (evidence — quote where possible)
- What it implies for the product (so what)
- Confidence: HIGH (3+ sources) / MEDIUM (2 sources) / LOW (1 source)

### Open Questions
What did this research NOT answer that matters for product decisions?
List as specific questions, not vague gaps.

### Recommended Next Step
One specific action: another interview, a prototype test, a data pull — with the reason it's the right next move.

## Step 4 — Save
Save to: CLAUDE-OUTPUTS/research/discovery-synthesis-[YYYY-MM-DD].md

After saving: "Which insight cluster do you want to explore further or take to the team?"
```

---

### .claude/commands/competitive-intel.md

```
Build a competitive intelligence brief.

Ask: "Which competitors should I analyze? List 2–5 by name."

Read PROJECTS/*/CLAUDE.md — hold your product description, core metric, primary users, and current positioning.

For each competitor, research and write:

### [Competitor Name]
**Positioning:** [their primary claim in one sentence — what they say they are]
**Target customer:** [who they go after]
**Pricing model:** [if public — otherwise "not public"]
**Strengths:** [2–3 specific things they do well]
**Weaknesses:** [2–3 gaps, complaints, or limitations — cite sources where possible]
**Where you win:** [specific scenarios where your product is the stronger choice]
**Where you lose:** [honest — where they beat you today]

---

## Competitive Summary Table
| Dimension | [Your Product] | [Competitor 1] | [Competitor 2] |
|-----------|---------------|----------------|----------------|
| Target customer | | | |
| Primary strength | | | |
| Biggest gap | | | |
| Pricing model | | | |

## Implications for Product
2–3 bullets on what this means for roadmap priorities, messaging, or sales objections to address.

Save to: CLAUDE-OUTPUTS/research/competitive-intel-[YYYY-MM-DD].md

After saving: "Want me to turn one of these into an objection playbook for your sales team?"
```

---

### .claude/commands/exec-brief.md

```
Write an executive brief using the Pyramid Principle.

Ask these one at a time. Wait for each answer.

1. "Who is the audience? (Name and role)"
2. "What decision do you need them to make or approve?"
3. "What's the context — what do they already know, and what's changed recently?"
4. "What's your recommendation? One sentence."
5. "What are the 2–3 strongest reasons supporting it?"
6. "What's the main risk or trade-off they'll push back on?"

After their answers:

Read PROJECTS/*/CLAUDE.md — find the framing rules for the named stakeholder. Apply them to every sentence.

Write the brief in this exact structure:

**[Recommendation]** — state the ask directly, first line, no preamble.

**Why now:** [one sentence — what changed that makes this the right moment]

**Supporting rationale:**
- [evidence or data point — must include a number or named customer]
- [evidence or data point]
- [evidence or data point if needed]

**Trade-off:** [one honest sentence — acknowledge the cost or risk]

**Ask:** [last line — exactly what you need from them, specifically]

Format rules:
- Total length: under 200 words
- No paragraph longer than 2 sentences
- No passive voice
- No "we believe" — state what the data shows

Save to: CLAUDE-OUTPUTS/stakeholder-comms/exec-brief-[audience-name]-[YYYY-MM-DD].md

After saving: "Want me to run /objection-sim to prep for their likely pushback?"
```

---

### .claude/commands/objection-sim.md

```
Simulate stakeholder pushback and build a response playbook.

Ask:
1. "Which stakeholder are you presenting to? (Name)"
2. "What are you proposing? 1–2 sentences."

Read PROJECTS/*/CLAUDE.md — find what this stakeholder cares about and how they make decisions.

Generate 5 likely objections this stakeholder would raise, ordered most to least likely.

For each:

**Objection [N]: "[their likely exact words]"**
Why they'd raise it: [the underlying concern — not the surface complaint]
Your response: [2–3 sentences — lead with acknowledgment, then reframe with evidence]
Do not say: [phrase that would make it worse with this specific stakeholder]

---

**The One That Will Make or Break It**

Name the single objection most likely to kill the proposal if unaddressed.
Write a 30-second verbal response the PM can rehearse before the meeting.

Save to: CLAUDE-OUTPUTS/stakeholder-comms/objection-playbook-[stakeholder]-[YYYY-MM-DD].md
```

---

### .claude/commands/onboard.md

```
A new PM is joining this product team. Give them a day-one brief.

Read in this order:
- ABOUT-ME/CLAUDE.md
- PROJECTS/*/CLAUDE.md
- ABOUT-ME/current-focus.md

Write the brief covering:

**The company in 3 bullets**
Stage, key metric, what makes this moment interesting.

**The product in 2 sentences**
What it does, who it's for. No jargon.

**The North Star Metric and why**
The metric, current number, and why this was chosen over alternatives.

**Primary stakeholders**
For each: name, role, what they care about, how to frame for them.

**3 most important process rules**
Things that would get a new PM in trouble if they didn't know them on day one.

**The key open question**
What the team is actively debating or investigating right now.

**Files and commands to use first**
What to read (ABOUT-ME/CLAUDE.md, project CLAUDE.md), what commands exist (/pm, /load-context, /prd-review).

Tone: Encouraging but direct. No jargon. Welcome them genuinely and briefly.

End with: "What's your first area of focus? I'll pull the specific context you need."
```

---

### .claude/commands/prototype-spec.md

```
Turn a feature description into an interactive HTML prototype.

Ask these one at a time:

1. "What feature are you prototyping? Describe it in 2–3 sentences."
2. "Who is the primary user for this feature? (Use a persona name from your product context if you have one)"
3. "What's the single most important action this user needs to complete in this prototype?"
4. "Which states should I show? (empty state / loading / error / success / disabled — pick any that apply)"

Read PROJECTS/*/CLAUDE.md — hold the terminology rules. Use exact product terms in the prototype UI, never the never-use alternatives.

Build a self-contained interactive HTML prototype:
- Single HTML file with inline CSS and JS — no external dependencies
- Shows the primary user flow from start to completion
- Includes all states specified
- Uses realistic content from the product context — no Lorem Ipsum
- Mobile-responsive layout
- Feels like a real product screen, not a wireframe

Include at the bottom: "Prototype only — not production code | [feature name] | [today's date]"

Save to: CLAUDE-OUTPUTS/prototypes/[feature-name]-prototype-[YYYY-MM-DD].html

After saving: "Open the file in your browser to test it. What flow or state do you want to add next?"
```

---

### .claude/commands/pm-review.md

```
Run a PM AI self-review — audit the quality of your recent AI-assisted PM work.

## Step 1 — Find recent outputs
List all files in CLAUDE-OUTPUTS/ modified in the last 30 days, grouped by subfolder.
If none: ask "Point me to the outputs you want reviewed."

## Step 2 — Read a sample
Read the 3 most recent files across different categories (aim for: one PRD or spec, one stakeholder comm, one analysis or research doc).

## Step 3 — Score against 5 criteria

| Criterion | What good looks like | Score (1–5) | Evidence from your files |
|-----------|---------------------|-------------|--------------------------|
| **Context Depth** | CLAUDE.md files are specific, current, and clearly reflected in the outputs | | |
| **Output Hygiene** | Files named consistently, organized by type, no drafts mixed with source of truth | | |
| **Specificity vs. Slop** | Outputs are evidence-grounded, product-specific, and actionable — not generic | | |
| **Agentic Thinking** | Recurring workflows are commands, not repeated manual prompts | | |
| **Decision Logic** | Key decisions are recorded, not just implicit in PRDs or buried in chat | | |

**Total: X / 25**

## Step 4 — Return the review

Show the scored table.
For the lowest-scoring criterion: write 2 specific, actionable next steps to improve it.
For the highest-scoring: name what's working and say to keep it.

End with: "Want to fix the lowest score now? Tell me which one."
```

---

## Step 11 — Run Validation

After writing all files, automatically run the `/pm-os-validate` skill.

If the score is 11–13: say "Your PM OS is fully operational."
If the score is 8–10: say "Your PM OS is working. Fix the flagged sections before your first real session."
If below 8: say "A few sections need attention before this is ready. Let's fix them now."

---

## Step 12 — Show the PM What They Have

Print this summary:

```
✅ PM OS installed.

Your kit:
- ABOUT-ME/ — 4 files (your identity, anti-style rules, focus, principles)
- PROJECTS/[product]/ — context, OKRs, stakeholders, roadmap
- CLAUDE-OUTPUTS/ — 6 output folders ready
- .claude/skills/load-context/ — session context loader
- .claude/commands/ — [N] workflow skills installed

Validation score: [X] / 13

How to use it:
  Every session   →  /load-context
  Don't know which skill  →  /pm
  Wrote a PRD     →  /prd-review
  Have interviews →  /discovery-synthesis
  Going into exec meeting  →  /exec-brief then /objection-sim
  Every Monday    →  /weekly-digest
  Every Friday    →  update ABOUT-ME/current-focus.md
  Every month     →  /pm-os-validate

One thing to do right now: update ABOUT-ME/current-focus.md every Friday.
It's the highest-leverage 2-minute habit in this system.
```
