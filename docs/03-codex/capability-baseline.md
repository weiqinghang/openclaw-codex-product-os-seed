# Codex 能力基线

## 目标

定义 `Codex` 作为后台执行者时，长期应具备的能力基线。

这份文档用于回答：

- `Codex` 当前承担哪些职责
- 为了完成这些职责，`Codex` 需要哪些 skills、MCP 和工具能力
- 哪些能力属于基础必备
- 哪些能力可以按需补充
- 哪些能力当前尚未安装或尚未产品化

## 角色定位

在当前操作系统里，`Codex` 固定承担后台执行者职责，主要负责：

- 技术分析
- 规格落仓
- 代码实现
- 测试与验证
- 证据整理
- 技术方案与实现层决策

因此，`Codex` 的能力建设重点不是前台编排，而是：

- 方法能力
- 设计理解能力
- UI / 交互验证能力
- GitHub 协作能力
- 文档与数据处理能力

## 能力分层

### 1. 基础必备能力

这些能力应被视为 `Codex` 的第一梯队基线。

| 能力域 | 能力项 | 作用 | 当前判断 |
|---|---|---|---|
| 方法 | `Spec-Kit` | 支撑新能力或大功能的规格化启动。 | 目标补齐 |
| 方法 | `OpenSpec` | 支撑已有产品的持续变更管理。 | 目标补齐 |
| 方法 | `Superpowers` | 强化 brainstorm / plan / execute / verify 的执行纪律。 | 目标补齐 |
| 工程实践 | `test-driven-development` | 用红-绿-重构流程约束实现质量。 | 目标补齐 |
| 工程实践 | `code-review` | 用标准 checklist 进行代码审查。 | 目标补齐 |
| 工程实践 | `refactoring` | 为安全重构提供步骤和边界。 | 目标补齐 |
| 调试 | `systematic-debugging` | 用系统化方式定位复杂缺陷和触发链。 | 目标补齐 |
| 设计 | `figma` | 获取设计上下文、截图、变量、资产并支撑设计到代码映射。 | 已具备方向 |
| UI 验证 | `playwright` | 进行真实浏览器交互、截图、流程调试和界面验证。 | 已具备方向 |

### 2. 强烈建议能力

这些能力不一定每次都要用到，但对 `Codex` 的长期执行质量影响很大。

| 能力域 | 能力项 | 作用 | 当前判断 |
|---|---|---|---|
| 前端实现 | `artifacts-builder` | 构建复杂 React/Tailwind/shadcn/ui 交互组件。 | 目标补齐 |
| 前端审查 | `frontend-code-review` | 对 React/CSS 等前端代码进行专项审查。 | 目标补齐 |
| 架构 | `software-architecture` | 在实现前强化架构、分层和 SOLID 约束。 | 目标补齐 |
| 任务拆解 | `subagent-driven-development` | 支撑复杂任务的拆分和执行组织。 | 目标补齐 |
| 方法论 | `llm-project-methodology` | 为大型 AI / LLM 项目提供标准化方法。 | 目标补齐 |
| 元技能 | `skill-writer` / `skill-creator` | 帮助沉淀和生成新的高质量 skill。 | 目标补齐 |
| 发布沟通 | `Changelog Generator` | 根据提交历史生成用户可读更新日志。 | 目标补齐 |
| GitHub 协作 | `gh-address-comments` | 处理 PR review comments 和协作收尾。 | 已具备方向 |
| GitHub 协作 | `gh-fix-ci` | 检查并修复 GitHub Actions 失败。 | 已具备方向 |
| 文档 | `docx` | 创建、编辑和分析 Word 文档。 | 目标补齐 |
| 文档 | `pdf` | 处理 PDF 生成、阅读、比对和审查。 | 已具备方向 |
| 文档 | `pptx` | 生成和调整 PPT 幻灯片。 | 目标补齐 |
| 文档 | `xlsx` | 处理复杂表格、公式、汇总和图表。 | 目标补齐 |
| 内容转换 | `Markdown-to-EPUB` | 将 Markdown 或对话沉淀为 EPUB。 | 目标补齐 |
| 数据 | `spreadsheet` | 处理 CSV / XLSX / TSV、公式和表格检查。 | 已具备方向 |

### 3. 按需能力

这些能力依赖具体项目场景，不应强制当成默认基线。

| 能力域 | 能力项 | 作用 | 当前判断 |
|---|---|---|---|
| 设计扩展 | `ui-ux-pro-max-skill` | 更强的设计评审、体验推演和前端审美增强。 | 重点候选 |
| 浏览器扩展 | `playwright-interactive` | 需要长期保持浏览器会话时使用。 | 已具备方向 |
| 系统截图 | `screenshot` | 桌面级截图或工具无法直接采集时使用。 | 已具备方向 |
| 数据分析 | `CSV Data Summarizer` | 自动读取 CSV 并生成摘要或图表。 | 目标补齐 |
| 调试扩展 | `root-cause-tracing` | 对复杂日志和错误链做深度溯源。 | 目标补齐 |
| 自动化扩展 | `Playwright-Automation` | 用浏览器自动化做抓取、测试和流程操作。 | 目标补齐 |
| 工具扩展 | `mcp-builder` | 构建符合 MCP 的自定义工具接入层。 | 目标补齐 |

## 当前已知能力来源

### 已在当前仓库会话中明确可用的方向

- `figma`
- `playwright`
- `playwright-interactive`
- `gh-address-comments`
- `gh-fix-ci`
- `pdf`
- `spreadsheet`
- `screenshot`

### 已明确需要，但当前还未作为本仓库能力资产沉淀的方向

- `Spec-Kit`
- `OpenSpec`
- `Superpowers`

### 当前仍不明确的方向

- `ui-ux-pro-max-skill` 的本地接入方式是否完全适配当前体系
- `Spec-Kit`
- `OpenSpec`
- `Superpowers`

这类能力当前不能直接假定为可用，应先作为目标能力记录，再决定：

- 是否已有对应 skill
- 是否需要新增 capability pack
- 是否需要外部仓库安装

## 职责到能力映射

### 1. 规格与方法职责

对应能力：

- `Spec-Kit`
- `OpenSpec`
- `Superpowers`

目标：

- 让 `Codex` 不只是会写代码，还能稳定按规格驱动方式工作
- 让 `Codex` 在项目启动、切片定义、变更推进时有统一方法支撑

### 2. 设计理解与落地职责

对应能力：

- `figma`
- `playwright`
- `ui-ux-pro-max-skill`
- 未来可能补充的设计扩展能力

目标：

- 让 `Codex` 能消费设计定版来源
- 让 `Codex` 能进行设计到代码映射
- 让 `Codex` 能对实现后的 UI 进行验证

### 3. 工程实现与验证职责

对应能力：

- `playwright`
- 语言/框架本地工具
- `Superpowers`
- `test-driven-development`
- `refactoring`
- `systematic-debugging`

目标：

- 让 `Codex` 从计划推进到实现、验证和回写

### 4. 协作与收尾职责

对应能力：

- `gh-address-comments`
- `gh-fix-ci`
- `code-review`
- `Changelog Generator`

目标：

- 让 `Codex` 能参与 PR 协作闭环和 CI 修复

### 5. 文档与数据处理职责

对应能力：

- `docx`
- `pdf`
- `pptx`
- `xlsx`
- `spreadsheet`
- `Markdown-to-EPUB`

目标：

- 让 `Codex` 能处理研发流程中常见的文档、报表和表格型工件

## 基线原则

- 先补“方法 + 设计 + 验证”三类能力，再补边缘能力
- 先补通用能力，再补项目专用能力
- 先补可复用 skills / MCP / 工具接入，再讨论更复杂的 agent 化能力
- 能力缺失应进入 backlog，而不是靠每次会话临时记忆

## 推荐基线

当前建议把下面这些视为 `Codex` 的默认能力基线：

1. `Spec-Kit`
2. `OpenSpec`
3. `Superpowers`
4. `test-driven-development`
5. `code-review`
6. `systematic-debugging`
7. `figma`
8. `playwright`
9. `gh-address-comments`
10. `gh-fix-ci`

第二梯队补充：

1. `refactoring`
2. `artifacts-builder`
3. `frontend-code-review`
4. `software-architecture`
5. `pdf`
6. `docx`
7. `pptx`
8. `xlsx`
9. `spreadsheet`
10. `playwright-interactive`
11. `screenshot`
12. `ui-ux-pro-max-skill`

## 与 Backlog 的关系

这份文档定义的是能力基线。

具体长期补齐、安装、产品化和升级维护，应记录在：

- `docs/03-codex/backlog.md`

发现来源和接入流程应记录在：

- `docs/03-codex/skill-sourcing-playbook.md`

如果后续也要把 `Codex` 能力做成可复制能力资产，可以继续演进成与 `OpenClaw` 类似的 capability pack 体系。
