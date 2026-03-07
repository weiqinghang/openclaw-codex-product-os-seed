# Language Policy

## Goal

This repository uses an "English structure, bilingual prose when needed" strategy to balance:

- human readability
- stable agent parsing
- GitHub maintainability
- flexible real-project artifact language

## Rules

### 1. Structural elements use English

The following stay in English:

- paths
- filenames
- directory names
- slugs
- variable names
- environment variables
- commands
- script names
- template headings
- fixed field names

### 2. Descriptive content may be bilingual

Descriptive content can ship in Chinese and English:

- README
- `docs/`
- `specs/constitution`
- `templates/`

Chinese files use `.cn.md`; English files use `.en.md`.

### 3. Real project artifacts remain single-source

Execution artifacts stay single-source with standard filenames:

- `brief.md`
- `spec.md`
- `plan.md`
- `tasks.md`

Do not split them into `brief.cn.md` and `brief.en.md`.

### 4. Real project artifact body text is user-selectable

Artifact body text may be written in Chinese or English, but the structural headings must remain in English so that:

- Codex / OpenClaw can parse consistently
- GitHub Actions can validate structure
- multilingual teams can share one working artifact

## Operational Rule

This seed repository provides `.cn.md` and `.en.md` templates, while scaffolding still generates one set of standard artifact filenames via `LANG=cn|en`.
