#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: scripts/new-feature.sh <feature-slug>"
  exit 1
fi

slug="$1"

if [[ ! "$slug" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "Feature slug must be lowercase kebab-case."
  exit 1
fi

feature_dir="specs/features/$slug"

if [[ -e "$feature_dir" ]]; then
  echo "Feature directory already exists: $feature_dir"
  exit 1
fi

mkdir -p "$feature_dir"
mkdir -p "specs/releases"

cp "templates/feature-brief.md" "$feature_dir/brief.md"
cp "templates/feature-spec.md" "$feature_dir/spec.md"
cp "templates/implementation-plan.md" "$feature_dir/plan.md"
cp "templates/task-breakdown.md" "$feature_dir/tasks.md"

echo "Created feature workspace:"
echo "  $feature_dir/brief.md"
echo "  $feature_dir/spec.md"
echo "  $feature_dir/plan.md"
echo "  $feature_dir/tasks.md"
echo
echo "Next:"
echo "  1. Fill in brief.md from the incoming request."
echo "  2. Refine into spec.md and plan.md."
echo "  3. Break execution into tasks.md."
