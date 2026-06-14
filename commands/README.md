# Slash Commands

Reusable slash commands for agent CLIs.

| Command | Description |
| :--- | :--- |
| [pm-os-bootstrap](productivity/pm-os-bootstrap/command.md) | Bootstrap a complete PM OS in a project through an interview-driven setup workflow. Use when setting up PM identity, product context, stakeholder rules, output folders, and recurring PM workflow commands. |

## Provider Mapping

| Provider | Source File | Install Target |
| :--- | :--- | :--- |
| Claude Code | `command.md` | `.claude/commands/pm-os-bootstrap.md` |
| Codex | `command.md` | `.codex/commands/pm-os-bootstrap.md` |
| Gemini CLI | generated from `command.md` | `.gemini/commands/pm-os-bootstrap.toml` |

Gemini custom commands use TOML, so the installer generates a TOML command file from the shared markdown prompt.
