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
    log_error "$file 缺少必需章节：$heading"
  fi
}

feature_root="specs/features"

if [[ ! -d "$feature_root" ]]; then
  log_error "缺少功能根目录：$feature_root"
fi

real_feature_dirs=()
while IFS= read -r dir; do
  real_feature_dirs+=("$dir")
done < <(find "$feature_root" -mindepth 1 -maxdepth 1 -type d | sort)

if [[ ${#real_feature_dirs[@]} -eq 0 ]]; then
  echo "$feature_root 下尚无功能目录，结构校验通过。"
  exit 0
fi

for feature_dir in "${real_feature_dirs[@]}"; do
  slug="$(basename "$feature_dir")"

  if [[ ! "$slug" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    log_error "$feature_dir 必须使用小写 kebab-case slug"
  fi

  for file in "${required_files[@]}"; do
    if [[ ! -f "$feature_dir/$file" ]]; then
      log_error "$feature_dir 缺少必需工件：$file"
    fi
  done

  if [[ -f "$feature_dir/brief.md" ]]; then
    require_heading "$feature_dir/brief.md" "## 1. 请求概述"
    require_heading "$feature_dir/brief.md" "## 3. 期望结果"
    require_heading "$feature_dir/brief.md" "## 6. 初始切片建议"
  fi

  if [[ -f "$feature_dir/spec.md" ]]; then
    require_heading "$feature_dir/spec.md" "## 1. 问题"
    require_heading "$feature_dir/spec.md" "## 5. 用户场景"
    require_heading "$feature_dir/spec.md" "## 8. 验收标准"
    require_heading "$feature_dir/spec.md" "## 10. 风险与假设"
  fi

  if [[ -f "$feature_dir/plan.md" ]]; then
    require_heading "$feature_dir/plan.md" "## 3. 方案设计"
    require_heading "$feature_dir/plan.md" "## 5. 交付策略"
    require_heading "$feature_dir/plan.md" "## 6. 测试策略"
    require_heading "$feature_dir/plan.md" "## 7. 风险"
  fi

  if [[ -f "$feature_dir/tasks.md" ]]; then
    require_heading "$feature_dir/tasks.md" "## 任务列表"
    require_heading "$feature_dir/tasks.md" "### 任务 1"
    require_heading "$feature_dir/tasks.md" "- 验证："
    require_heading "$feature_dir/tasks.md" "## 执行规则"
  fi
done

if [[ $errors -gt 0 ]]; then
  printf '\n规格工件校验失败，共 %d 处错误。\n' "$errors" >&2
  exit 1
fi

echo "规格工件校验通过。"
