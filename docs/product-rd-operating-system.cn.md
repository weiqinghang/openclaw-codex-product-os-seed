# Product R&D Operating System

## Goal

构建一条完整的产品交付闭环，让想法从 OpenClaw 进入，转成可执行规格，经由 Codex 在仓库内完成实现，并在 XP 纪律下验证后发布。

## Role Assignment

### OpenClaw

- 收集原始产品意图
- 把模糊请求整理成结构化 brief
- 把需求路由进仓库形成有边界的变更请求

### Codex

- 检查代码库和既有规格
- 把 brief 转成 repo 级实现工作
- 修改代码、运行检查、产出可审查结果

### XP

- 小批次
- 快反馈
- 测试优先
- 持续重构

### SDD

- 先定义意图，再实现
- 区分需求、设计、执行
- 保留从产品问题到已交付行为的可追踪性

## Lifecycle

1. `Feature Brief`
2. `Constitution Check`
3. `Feature Spec`
4. `Implementation Plan`
5. `Task Breakdown`
6. `Execution`
7. `Review and Verification`
8. `Release and Learn`

## Working Agreement

- 问题不清楚时先 brainstorm
- 设计不清楚时先写 plan
- 用户可见变更先更新 spec
- 重复摩擦要回流到模板或 constitution
