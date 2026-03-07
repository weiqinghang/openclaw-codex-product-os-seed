# Codex 能力 Backlog

## 目标

把 `Codex` 的长期能力建设集中维护在一个地方，作为本项目的一部分持续演进。

这份 backlog 关注的是：

- `Codex` 还缺哪些关键能力
- 哪些能力应优先补齐
- 哪些能力当前只是目标方向，还未真正落地
- 哪些能力后续应被产品化成可复用资产

## 使用规则

- 每个条目只记录一种能力建设方向
- 先记录能力价值，再决定具体实现方式
- 能力应优先围绕 `Codex` 的职责来补，不为“看起来很强”而堆能力
- 已经稳定具备的能力，可以改为 `done`，但不要删除

## 状态说明

- `todo`：已识别，但尚未开始
- `in-progress`：正在建设或接入
- `done`：已具备并可稳定使用
- `blocked`：被依赖或外部条件阻塞

## Backlog

| ID | 能力项 | 简述 | 类型 | 状态 |
|---|---|---|---|---|
| CX-001 | `Spec-Kit` 基线接入 | 让 `Codex` 具备新能力或大功能的规格化启动能力。 | 方法 | todo |
| CX-002 | `OpenSpec` 基线接入 | 让 `Codex` 具备已有产品持续变更管理能力。 | 方法 | todo |
| CX-003 | `Superpowers` 基线接入 | 让 `Codex` 的 brainstorm / plan / execute / verify 更有纪律。 | 方法 | todo |
| CX-004 | `test-driven-development` 基线接入 | 让 `Codex` 默认按红-绿-重构方式推进实现。 | 工程实践 | todo |
| CX-005 | `code-review` 基线接入 | 让 `Codex` 具备标准化代码审查能力。 | 工程实践 | todo |
| CX-006 | `refactoring` 基线接入 | 让 `Codex` 具备安全重构流程。 | 工程实践 | todo |
| CX-007 | `systematic-debugging` 基线接入 | 让 `Codex` 系统化定位深层缺陷。 | 调试 | todo |
| CX-008 | `artifacts-builder` 前端实现基线 | 让 `Codex` 稳定构建复杂 React/Tailwind/shadcn/ui 组件。 | 前端 | todo |
| CX-009 | `frontend-code-review` 前端审查基线 | 让 `Codex` 对 React/CSS 进行专项审查。 | 前端 | todo |
| CX-010 | `software-architecture` 架构基线 | 让 `Codex` 在实现前遵循架构和设计原则。 | 架构 | todo |
| CX-011 | `subagent-driven-development` 任务拆解能力 | 让 `Codex` 更好地拆解复杂任务。 | 方法 | todo |
| CX-012 | `llm-project-methodology` 项目方法能力 | 让 `Codex` 更好地支撑大型 AI 项目实施。 | 方法 | todo |
| CX-013 | `skill-writer` / `skill-creator` 元技能 | 让 `Codex` 能持续沉淀和产出高质量 skills。 | 元技能 | todo |
| CX-014 | `Changelog Generator` 发布沟通能力 | 让 `Codex` 根据提交历史生成用户可读更新日志。 | 协作 | todo |
| CX-015 | `figma` 设计基线 | 让 `Codex` 稳定获取设计上下文、资产和设计到代码映射能力。 | 设计 | in-progress |
| CX-016 | `ui-ux-pro-max-skill` 设计扩展能力 | 评估并接入更强的设计智能能力。 | 设计 | todo |
| CX-017 | `playwright` UI 验证基线 | 让 `Codex` 稳定进行 UI 流程验证、截图和浏览器调试。 | 验证 | in-progress |
| CX-018 | GitHub review 协作能力 | 让 `Codex` 能处理 review comments 与协作收尾。 | 协作 | in-progress |
| CX-019 | GitHub CI 修复能力 | 让 `Codex` 能定位并修复 GitHub Actions 失败。 | 协作 | in-progress |
| CX-020 | `docx` 文档处理能力 | 让 `Codex` 能处理 Word 文档。 | 文档 | todo |
| CX-021 | `pdf` 文档处理能力 | 让 `Codex` 能阅读、生成、审查 PDF。 | 文档 | in-progress |
| CX-022 | `pptx` 幻灯片处理能力 | 让 `Codex` 能生成和调整 PPT。 | 文档 | todo |
| CX-023 | `xlsx` 表格处理能力 | 让 `Codex` 能处理复杂电子表格。 | 数据 | todo |
| CX-024 | Spreadsheet 处理能力 | 让 `Codex` 能处理 CSV / XLSX / TSV 等表格型工件。 | 数据 | in-progress |
| CX-025 | `Markdown-to-EPUB` 内容转换能力 | 让 `Codex` 能将 Markdown 或对话沉淀为 EPUB。 | 文档 | todo |
| CX-026 | `CSV Data Summarizer` 数据总结能力 | 让 `Codex` 能自动读取 CSV 并生成摘要或报表。 | 数据 | todo |
| CX-027 | `root-cause-tracing` 深度溯源能力 | 让 `Codex` 对复杂错误日志做根因分析。 | 调试 | todo |
| CX-028 | `Playwright-Automation` 自动化扩展 | 让 `Codex` 用浏览器自动化执行抓取、测试或流程操作。 | 自动化 | todo |
| CX-029 | `mcp-builder` 工具扩展能力 | 让 `Codex` 能帮助构建符合 MCP 的自定义工具接入层。 | 工具 | todo |
| CX-030 | Codex 能力基线版本化 | 为 `Codex` 能力基线定义版本、最小安装集和升级节奏。 | 治理 | todo |
| CX-031 | Codex 技能发现流程固化 | 把发现来源、筛选规则、验证流程固化成标准手册。 | 治理 | done |
| CX-032 | Codex 能力资产产品化 | 评估是否将部分 `Codex` 能力也沉淀成可复用 capability packs 或 skill bundles。 | 治理 | todo |

## 当前优先级

当前建议优先推进的条目：

1. `CX-001` `Spec-Kit` 基线接入
2. `CX-002` `OpenSpec` 基线接入
3. `CX-003` `Superpowers` 基线接入
4. `CX-004` `test-driven-development` 基线接入
5. `CX-005` `code-review` 基线接入
6. `CX-007` `systematic-debugging` 基线接入
7. `CX-015` `figma` 设计基线
8. `CX-016` `ui-ux-pro-max-skill` 设计扩展能力
9. `CX-017` `playwright` UI 验证基线

原因是这几项决定了：

- `Codex` 是否真的能承担规格驱动执行
- `Codex` 是否具备工程纪律和调试能力
- `Codex` 是否能消费设计输入并验证 UI
- `Codex` 是否能在方法层和执行层都稳定工作

## 维护说明

- 当新增一类 `Codex` 能力需求时，先在这里登记
- 当某项能力已经稳定可用时，更新状态而不是删除
- 如果后续把 `Codex` 能力产品化为复用资产，应补充对应位置和安装方式
- 当前技能发现和筛选规则见：`docs/codex-skill-sourcing-playbook.md`
