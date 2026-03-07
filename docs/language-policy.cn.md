# Language Policy

## Goal

本仓库采用“英文结构，按需双语正文”的策略，兼顾：

- 人类可读性
- Agent 稳定识别结构
- GitHub 可维护性
- 实际项目工件的语言自由

## Rules

### 1. Structural elements use English

以下内容统一使用英文：

- 路径
- 文件名
- 目录名
- slug
- 变量名
- 环境变量
- 命令
- 脚本名
- 模板章节标题
- 固定字段名

### 2. Descriptive content may be bilingual

说明性内容可以提供中英文版本：

- README
- `docs/`
- `specs/constitution`
- `templates/`

中文版使用 `.cn.md`，英文版使用 `.en.md`。

### 3. Real project artifacts remain single-source

真实执行工件只保留单份标准文件名：

- `brief.md`
- `spec.md`
- `plan.md`
- `tasks.md`

不要为真实工件创建 `brief.cn.md` 或 `brief.en.md` 两份。

### 4. Real project artifact body text is user-selectable

真实工件正文可使用中文或英文，但必须保留英文结构标题，以便：

- Codex / OpenClaw 稳定识别
- GitHub Actions 做结构校验
- 多语言团队共享同一份执行工件

## Examples

允许：

```md
## Problem

当前用户在首次使用时无法判断下一步操作。
```

也允许：

```md
## Problem

Users cannot tell what to do next during their first session.
```

## Operational Rule

模板仓库提供 `.cn.md` 和 `.en.md` 两个版本，脚手架根据 `LANG=cn|en` 生成同一套标准工件名。
