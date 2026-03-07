# OpenClaw + Codex Product OS Seed

一个面向产品研发全流程的 Git 种子项目。

它的目标不是“更快地产生代码”，而是把 `OpenClaw + Codex` 组织成一套符合敏捷价值观、吸收 XP 习惯、并用 SDD 管理交付证据的研发操作系统。

## 语言规则

- 路径、文件名、slug、变量、命令、脚本名全部使用英文
- 说明性内容统一使用中文
- 实际项目工件只保留单份标准文件名，例如 `brief.md`
- 等规则稳定后，再统一翻译英文版本

详细规则见：[docs/language-policy.md](docs/language-policy.md)

## 方法总览

- `OpenClaw`：需求入口、协作入口、编排入口
- `Codex`：仓库内的执行代理
- `XP`：小步快跑、测试优先、持续重构
- `SDD`：先规格，后实现
- `Spec-Kit`：适合新能力或大功能的规格化启动
- `OpenSpec`：适合已有产品的持续变更管理
- `Superpowers`：强化 brainstorm、plan、execute、verify 的执行纪律

## 协作流程

```mermaid
flowchart LR
    A["发现一个值得推进的切片"] --> B["brief\n只澄清当前问题"]
    B --> C["spec\n只写当前切片验收"]
    C --> D["plan\n只写当前切片设计"]
    D --> E["tasks\n只拆当前批次任务"]
    E --> F["实现 + 测试 + 验证"]
    F --> G{"达到当前切片验收了吗？"}
    G -- "没有" --> H["更新理解\n补最少必要工件"]
    H --> D
    G -- "达到了" --> I["发布 / 复盘 / 进入下一切片"]
```

## 仓库结构

```text
.
├── README.md
├── docs/
│   ├── language-policy.md
│   ├── execution-playbook.md
│   ├── product-rd-operating-system.md
│   └── seed-project-guide.md
├── examples/
│   └── onboarding-improvement/
├── scripts/
├── specs/
│   ├── constitution.md
│   ├── features/
│   └── releases/
└── templates/
    └── *.md
```

## 快速开始

### 1. 使用种子项目

- 直接从这个仓库创建新仓库
- 或者 `Use this template`
- 或者 clone 后再推到自己的项目仓库

### 2. 初始化一个功能工作区

```bash
make new-feature SLUG=improve-onboarding
```

会生成同一套标准工件名：

- `specs/features/improve-onboarding/brief.md`
- `specs/features/improve-onboarding/spec.md`
- `specs/features/improve-onboarding/plan.md`
- `specs/features/improve-onboarding/tasks.md`

这些工件只服务于当前切片，不要求一次覆盖整个主题。

### 3. 本地校验

```bash
make validate-specs
```

当前会检查：

- `specs/features/<slug>/` 是否存在 `brief.md`
- `specs/features/<slug>/` 是否存在 `spec.md`
- `specs/features/<slug>/` 是否存在 `plan.md`
- `specs/features/<slug>/` 是否存在 `tasks.md`
- 这些文件是否保持标准中文章节结构

## 文档入口

- 操作系统总纲：[docs/product-rd-operating-system.md](docs/product-rd-operating-system.md)
- 执行手册：[docs/execution-playbook.md](docs/execution-playbook.md)
- 种子项目用法：[docs/seed-project-guide.md](docs/seed-project-guide.md)
- 语言策略：[docs/language-policy.md](docs/language-policy.md)
- 术语表：[docs/glossary.md](docs/glossary.md)
- 项目原则：[specs/constitution.md](specs/constitution.md)
- 迭代式示例：[examples/onboarding-improvement/README.md](examples/onboarding-improvement/README.md)

## 图片规则

本仓库默认优先使用 Mermaid 图来表达流程。

如果后续确实需要用生图模型生成图片，规则如下：

- 生成后必须做二次确认
- 只有在图片准确表达初衷时才纳入仓库
- 若图片存在歧义，优先回退到 Mermaid 或文字说明

## License

本项目默认使用 MIT License，见 [LICENSE](LICENSE)。
