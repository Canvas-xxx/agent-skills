# Context Template

This file defines the format for `.context.md` and all `.context/*.md` files.
Claude reads this when `.context.md` does not exist, to know what questions
to ask and what format to generate.

---

## .context.md (project root index)

```
name:        ___
type:        SaaS / API / mobile / internal
description: ___

# Stack
frontend:    ___    # e.g. Angular 17
backend:     ___    # e.g. Go, Node.js
database:    ___    # e.g. MongoDB
infra:       ___    # e.g. GKE, EKS
cdn_waf:     ___    # e.g. Cloudflare

# Git (summary — details in .context/git.md)
main_branch:    main
strategy:       trunk-based
ticket_prefix:  ___

# Angular (if applicable — details in .context/angular.md)
version:        ___
module_style:   standalone

# Analytics (if applicable — details in .context/analytics.md)
ga4_id:         ___
activation_event: ___

# Security (if applicable — details in .context/security.md)
compliance:     ___
data_sensitivity: ___

# Team
size:           ___
methodology:    scrum
sprint_length:  2 weeks
pm_tool:        Jira
```

---

## .context/git.md

```
main_branch:    main / master / trunk
strategy:       trunk-based / gitflow
develop:        false
ticket_prefix:  ___
tag_format:     v{semver}
```

### Branch Naming
```
<type>/<ticket_prefix>-<id>-<description>
Types: feat | fix | refactor | chore | docs | hotfix
```

### Commit Scopes
```
# List project-specific scopes
___
```

### Release Process
```
1. Merge to <main_branch>
2. npx standard-version
3. git push --follow-tags
```

---

## .context/angular.md

```
version:        ___
module_style:   standalone / ngmodule
zone:           zone.js / zoneless
state:          signals / behaviorsubject / ngrx
test_runner:    karma / jest
```

### Design Tokens (_variables.scss)
```scss
$primary:        ___
$secondary:      ___
$surface:        ___
$background:     ___
$text-primary:   ___
$spacing-xs:     ___
$spacing-sm:     ___
$spacing-md:     ___
$spacing-lg:     ___
$spacing-xl:     ___
$font-family:    ___
```

### Shared Components (src/app/shared/)
| Component | Selector | Purpose |
|---|---|---|
| (list existing — check before creating new) | | |

### Core Services (src/app/core/services/)
| Service | Purpose |
|---|---|
| ApiService | Base HTTP wrapper |
| AuthService | JWT auth state |
| (add more) | |

### API
```
base_url:     environment.apiUrl
auth_header:  Authorization: Bearer <token>
envelope:     { data: T, meta?: M }
error_shape:  { error: string, code?: string }
```

---

## .context/analytics.md

```
ga4_id:            ___
gtm_id:            ___
implementation:    gtag / gtm / both
activation_event:  ___
activation_window: 7 days
```

### Key Business Questions
1. ___
2. ___
3. ___

### User Properties
| Property | Type | Values |
|---|---|---|
| user_id | string | anonymized hash |
| plan | string | free / pro / enterprise |
| app_version | string | semver |

### Event Taxonomy
| Event | Trigger | Key Parameters |
|---|---|---|
| user_registered | Signup complete | source, plan_selected |
| activation_completed | User activates | days_since_registered |
| feature_viewed | Opens feature | feature, source |
| feature_used | Primary action | feature, action, plan |
| step_completed | Flow step done | flow, step, step_name |
| flow_abandoned | Left flow early | flow, step, completion_pct |
| error_api_failed | API non-2xx | endpoint, status_code |
| error_ui_crashed | Uncaught error | component, error_type |
| performance_loaded | Page load | page, lcp_ms, ttfb_ms |

### Deprecated Events
| Event | Deprecated | Replaced By |
|---|---|---|
| — | — | — |

---

## .context/security.md

```
internet_facing:  true
auth_method:      JWT / session / OAuth / API key
compliance:       ___
data_sensitivity: PII / financial / health / public
```

### Threat Model
Likely attackers:
- [ ] External unauthenticated
- [ ] Authenticated malicious user
- [ ] Compromised insider

Highest-value targets:
1. ___
2. ___

### Security Controls
- [ ] WAF / DDoS protection
- [ ] Rate limiting
- [ ] Input validation
- [ ] HTTPS enforced
- [ ] Secrets in vault
- [ ] Dependency scanning
- [ ] SAST in CI
- [ ] MFA for admin

### Known Findings
| ID | Finding | Severity | Status |
|---|---|---|---|
| — | — | — | — |
