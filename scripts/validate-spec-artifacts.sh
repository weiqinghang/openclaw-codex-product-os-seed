#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

required_files=(
  "brief.md"
  "spec.md"
  "plan.md"
  "tasks.md"
)

errors=0

log_error() {
  printf 'ERROR: %s\n' "$1" >&2
  errors=$((errors + 1))
}

require_heading() {
  local file="$1"
  local heading="$2"

  if ! grep -Fq -- "$heading" "$file"; then
    log_error "$file is missing required heading: $heading"
  fi
}

feature_root="specs/features"

if [[ ! -d "$feature_root" ]]; then
  log_error "Missing feature root directory: $feature_root"
fi

real_feature_dirs=()
while IFS= read -r dir; do
  real_feature_dirs+=("$dir")
done < <(find "$feature_root" -mindepth 1 -maxdepth 1 -type d | sort)

if [[ ${#real_feature_dirs[@]} -eq 0 ]]; then
  echo "No feature directories found under $feature_root. Structural check passed."
  exit 0
fi

for feature_dir in "${real_feature_dirs[@]}"; do
  slug="$(basename "$feature_dir")"

  if [[ ! "$slug" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    log_error "$feature_dir must use a lowercase kebab-case slug"
  fi

  for file in "${required_files[@]}"; do
    if [[ ! -f "$feature_dir/$file" ]]; then
      log_error "$feature_dir is missing required artifact: $file"
    fi
  done

  if [[ -f "$feature_dir/brief.md" ]]; then
    require_heading "$feature_dir/brief.md" "## 1. Request Summary"
    require_heading "$feature_dir/brief.md" "## 3. Desired Outcome"
    require_heading "$feature_dir/brief.md" "## 6. Initial Slice Proposal"
  fi

  if [[ -f "$feature_dir/spec.md" ]]; then
    require_heading "$feature_dir/spec.md" "## 1. Problem"
    require_heading "$feature_dir/spec.md" "## 5. User Scenarios"
    require_heading "$feature_dir/spec.md" "## 8. Acceptance Criteria"
    require_heading "$feature_dir/spec.md" "## 10. Risks and Assumptions"
  fi

  if [[ -f "$feature_dir/plan.md" ]]; then
    require_heading "$feature_dir/plan.md" "## 3. Proposed Design"
    require_heading "$feature_dir/plan.md" "## 5. Delivery Strategy"
    require_heading "$feature_dir/plan.md" "## 6. Test Strategy"
    require_heading "$feature_dir/plan.md" "## 7. Risks"
  fi

  if [[ -f "$feature_dir/tasks.md" ]]; then
    require_heading "$feature_dir/tasks.md" "## Tasks"
    require_heading "$feature_dir/tasks.md" "### Task 1"
    require_heading "$feature_dir/tasks.md" "- Verification:"
    require_heading "$feature_dir/tasks.md" "## Execution Rules"
  fi
done

if [[ $errors -gt 0 ]]; then
  printf '\nSpec artifact validation failed with %d error(s).\n' "$errors" >&2
  exit 1
fi

echo "Spec artifact validation passed."
