#!/usr/bin/env bash
# =============================================================================
# blvck-skills.sh — Entry point for the blvck-skills command
#
# Usage:
#   blvck-skills
# =============================================================================

set -euo pipefail

script_source="${BASH_SOURCE[0]}"
while [ -L "$script_source" ]; do
  script_dir="$(cd -P "$(dirname "$script_source")" && pwd)"
  script_source="$(readlink "$script_source")"
  case "$script_source" in
    /*) ;;
    *) script_source="$script_dir/$script_source" ;;
  esac
done
script_dir="$(cd -P "$(dirname "$script_source")" && pwd)"

source "$script_dir/_skills-lib.sh"

read_prompt() {
  local var_name="$1" prompt prompt_answer
  shift
  prompt="$1"
  printf '%s' "$prompt" >&2
  if ! IFS= read -r prompt_answer; then
    echo "" >&2
    exit 0
  fi
  printf -v "$var_name" '%s' "$prompt_answer"
}

printf "\n${BOLD}${CYAN}  blvck-skills${NC}\n"
printf "  ${GRAY}%s${NC}\n\n" "$REPO_ROOT"
printf "  ${BOLD}1)${NC}  Install\n"
printf "  ${BOLD}2)${NC}  Uninstall\n"
echo ""

while true; do
  read_prompt answer "  Action [1]: "
  [ -n "$answer" ] || answer="1"
  case "$answer" in
    1|install)   exec "$script_dir/install-skills.sh" ;;
    2|uninstall) exec "$script_dir/uninstall-skills.sh" ;;
    *) printf "  ${YELLOW}⚠${NC}  Enter 1 or 2.\n" ;;
  esac
done
