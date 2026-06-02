# Strapi Decision Guide

Use this guide when a Strapi task needs architectural judgment before implementation.

## Layer Choice

| Concern | Layer |
|---|---|
| Allow or deny access | Policy, returning `true` or `false` before the controller |
| Request/response cross-cutting behavior | Middleware wrapping Koa context |
| Entity operation side effect | Lifecycle hook such as `beforeCreate` or `afterUpdate` |
| Override plugin internals | Extension in `src/extensions/` |
| Portable, self-contained feature | Plugin that owns content types and optional admin UI |
| Project-specific data and CRUD | API content-type |

Use `register()` only for custom fields or type-definition extension, because plugins are not fully loaded yet. Use `bootstrap()` for startup behavior such as cron jobs, webhooks, seeding, and event listeners.

## Error Handling

| Layer | Pattern |
|---|---|
| Controller | `ctx.notFound()`, `ctx.badRequest()`, or `ctx.forbidden()` for known client-facing states |
| Service business rule | `throw new ApplicationError('message')` from `@strapi/utils` |
| Service bad input shape | `throw new ValidationError('message', { errors })` from `@strapi/utils` |
| Policy | `ctx.forbidden('reason')` and return `false` |

Avoid raw `Error` for expected service failures because Strapi will usually expose it as a generic 500.

## Data API

For new Strapi v5 content-type code, prefer Document Service:

```ts
await strapi.documents('api::article.article').findMany({
  filters: { category: 'tech' },
  locale: 'en',
  status: 'published',
  populate: { author: { fields: ['name'] } },
});
```

Use `entityService` in v5 only when maintaining v4 compatibility or following a project convention that already standardizes on it. In v4, use `entityService` as the default and drop to `strapi.db.query` for raw aggregations, joins, or unsupported polymorphic queries.

## Content Modeling

| Question | Prefer |
|---|---|
| Reused structure across multiple types | Component |
| Variable structure per entry | Dynamic zone |
| Shared reference data such as author or category | Separate content type plus relation |
| Owned metadata such as SEO or OpenGraph | Component nested in the parent type |
| Needs localization | Enable i18n at creation when possible |
| Needs draft workflow | Enable `draftAndPublish` at creation when possible |

Retrofitting i18n or draft/publish later usually needs migration planning. For relation cardinality, load `references/strapi-schema.md`.

## Plugin vs API Content-Type

Choose a plugin when the feature needs to be portable across projects, owns reusable content types, registers custom fields, or needs admin panel UI. Choose an API content-type for project-specific data and ordinary CRUD.

## Auth and Access

| Scenario | Prefer |
|---|---|
| User login and roles | `users-permissions` JWT |
| Server-to-server calls | API tokens |
| Resource-level ownership or business access | Custom policy |

Extend `users-permissions` where needed instead of inventing unrelated JWT handling.

## GraphQL vs REST

Use GraphQL when multiple consumers need different data shapes or clients have unpredictable selection needs. Prefer REST for a single consumer, straightforward CRUD, or performance-critical endpoints with a stable response shape.

When enabling GraphQL, configure `depthLimit` and `amountLimit`. Load `references/strapi-graphql.md` for setup and resolver extension patterns.

## Populate Strategy

Over-populating is a common Strapi performance bug.

- Populate only fields and relations the client renders.
- Select fields on nested relations.
- Build controlled populate objects in services instead of passing ad-hoc client populate through controllers.
- On public endpoints, call `sanitizeQuery` for unsafe input params and `sanitizeOutput` for private fields.
