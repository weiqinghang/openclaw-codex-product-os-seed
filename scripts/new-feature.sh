#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "用法：scripts/new-feature.sh <feature-slug>"
  exit 1
fi

slug="$1"

if [[ ! "$slug" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "feature slug 必须使用小写 kebab-case。"
  exit 1
fi

feature_dir="specs/features/$slug"

if [[ -e "$feature_dir" ]]; then
  echo "功能目录已存在：$feature_dir"
  exit 1
fi

mkdir -p "$feature_dir"
mkdir -p "specs/releases"

cp "templates/feature-brief.md" "$feature_dir/brief.md"
cp "templates/feature-spec.md" "$feature_dir/spec.md"
cp "templates/implementation-plan.md" "$feature_dir/plan.md"
cp "templates/task-breakdown.md" "$feature_dir/tasks.md"

echo "已创建功能工作区："
echo "  $feature_dir/brief.md"
echo "  $feature_dir/spec.md"
echo "  $feature_dir/plan.md"
echo "  $feature_dir/tasks.md"
echo
echo "下一步："
echo "  1. 根据需求填写 brief.md。"
echo "  2. 细化 spec.md 和 plan.md。"
echo "  3. 将执行拆到 tasks.md。"
