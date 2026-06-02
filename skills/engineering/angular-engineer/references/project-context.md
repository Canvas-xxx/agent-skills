# Angular Project Context

Use this reference when project code changes are needed and `.context.md` or `.context/angular.md` is missing, stale, or too incomplete to choose Angular patterns safely.

## Existing Context

If `.context.md` exists, read only the sections needed for the Angular task:

- `Stack`
- `Angular`
- `Git` when branch names, commits, or PR text are involved

If `.context/angular.md` exists, use it for Angular version, module style, zone mode, state pattern, test runner, design tokens, shared components, core services, and API conventions.

Ask before generating code when either Angular version or design-system approach is blank and the current task depends on it.

## Stale Context

Offer to update `.context.md` and `.context/angular.md` when the user mentions or the repo shows:

- Angular version upgrade
- Design system or CSS framework change
- New shared components or core services
- Branch strategy change
- Test runner migration
- SSR, hydration, or zoneless adoption

## Missing Context

Run the detector from the skill directory:

```bash
bash <skill-dir>/scripts/detect-project.sh .
```

The script inspects `package.json`, `angular.json`, `tsconfig.json`, source layout, and git history, then prints a `.context.md` draft.

If the detector cannot run, ask for the missing values that affect the work:

- Angular version
- Module style: standalone or NgModule
- Main branch name
- Ticket prefix, if commit or PR output is needed
- Design system or CSS approach
- Shared component and token locations
- HTTP abstraction layer, if services or API calls are involved
- Test runner

## Files to Create

When context files are missing and the user accepts context setup, create:

- `.context.md`: canonical project manifest
- `.context/angular.md`: Angular-specific conventions
- `.context/git.md`: branch, commit, and release conventions

Use `references/context-template.md` for exact structure.

Create provider stubs only if they do not already exist:

- `CLAUDE.md`
- `GEMINI.md`
- `.cursorrules`
- `.github/copilot-instructions.md`
- `.windsurfrules`

## If the User Says to Skip Context

Proceed with reasonable assumptions, state those assumptions briefly, and avoid broad architectural changes that depend on unknown project conventions.
