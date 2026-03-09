# Codex Skill 发现与接入手册

## 目标

定义 `Codex` 所需 skills / MCP / 工具能力的发现、筛选、接入和验证流程。

这份手册关注的是：

- 去哪里发现候选 skills
- 如何判断一个 skill 是否值得进入 `Codex` 基线
- 如何把候选 skill 变成稳定可用能力
- 如何记录已接入、待接入和待验证状态

## 主要发现来源

当前应优先把下面这些仓库作为 skill 发现入口：

- [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills)
- [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills)

这两个仓库应被当作主要发现阵地，而不是偶尔参考。

## 当前重点候选

### 方法与工程实践类

- `Spec-Kit`
- `OpenSpec`
- `Superpowers`
- `test-driven-development`
- `code-review`
- `refactoring`
- `systematic-debugging`
- `artifacts-builder`
- `frontend-code-review`
- `software-architecture`
- `subagent-driven-development`
- `llm-project-methodology`
- `skill-writer` / `skill-creator`
- `Changelog Generator`

### 设计与前端类

- `figma`
- `ui-ux-pro-max-skill`
- `playwright`
- `playwright-interactive`

### 文档与内容处理类

- `docx`
- `pdf`
- `pptx`
- `xlsx`
- `Markdown-to-EPUB`

### 数据分析与工具集成类

- `CSV Data Summarizer`
- `root-cause-tracing`
- `Playwright-Automation`
- `mcp-builder`

## 当前重点外部仓库

### UI UX Pro Max

当前已明确的重点外部 skill：

- [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)

当前已知信息：

- 这是一个面向 UI / UX 设计智能的 skill 包
- 仓库声明支持 Codex 形态接入
- 仓库中提供 `.codex/skills/ui-ux-pro-max/` 作为 Codex 接入路径
- 其能力覆盖 UI 风格、配色、字体、UX 规则和多种技术栈建议

在当前体系里，应把它优先视为：

- `Codex` 设计扩展能力的重要候选
- `CX-010` 的首要外部参考对象

## 评估标准

一个候选 skill 是否应进入 `Codex` 基线，至少看这几项：

### 1. 职责匹配

它是否直接增强 `Codex` 当前承担的职责：

- 方法
- 设计理解
- 工程实现
- 验证
- 协作
- 文档与数据处理

### 2. 可复制性

它是否能被下游仓库稳定复用，而不是只适合单人本地环境。

### 3. 接入成本

它是否需要：

- 额外安装依赖
- 外部 API 凭证
- 本地服务或 MCP
- 特定目录结构

### 4. 稳定性

它是否：

- 有明确仓库来源
- 有清晰说明
- 有最近维护迹象
- 能被实际验证

### 5. 与当前体系兼容

它是否会：

- 和现有 skills 冲突
- 重复定义同类职责
- 引入过重的上下文负担

## 接入流程

### 第 1 步：登记候选

先把候选能力登记到：

- `docs/03-codex/backlog.md`

不要直接默认已经可用。

### 第 2 步：判断归属

判断它属于：

- 基础必备能力
- 强烈建议能力
- 按需能力

### 第 3 步：记录来源

至少记录：

- 来源仓库
- 官方或上游链接
- 对应 skill 名
- 是否需要 MCP / 额外依赖

### 第 4 步：验证接入方式

至少要验证：

- 如何安装
- 如何启用
- 如何触发
- 如何判断生效

### 第 5 步：回写基线与 backlog

验证通过后，更新：

- `docs/03-codex/capability-baseline.md`
- `docs/03-codex/backlog.md`

必要时再决定是否进一步产品化。

## 记录规则

### 已发现

说明：

- 已找到来源
- 已确认大致用途
- 但尚未完成接入验证

### 已接入

说明：

- 已完成安装或接入
- 已验证触发方式
- 已知如何在项目中使用

### 已产品化

说明：

- 不只是本地可用
- 已沉淀成可复制资产
- 可以被下游仓库复用

## 当前优先顺序

当前建议按下面顺序推进：

1. `Spec-Kit`
2. `OpenSpec`
3. `Superpowers`
4. `ui-ux-pro-max-skill`
5. `test-driven-development`
6. `code-review`
7. `refactoring`
8. `systematic-debugging`
9. `artifacts-builder`
10. `frontend-code-review`

原因：

- 先补方法与工程纪律，再补设计智能
- 先补长期反复使用的能力，再补边缘能力
- 先补直接改善 `Codex` 主职责的能力，再补外围便利能力
