# 种子项目使用指南

## 仓库定位

这个仓库适合作为 Git 种子项目，用于让新产品或新代码库从第一天开始就继承同一套研发操作系统。

## 推荐用法

1. 从这个 seed 创建新仓库
2. 根据领域调整 `specs/constitution.md`
3. 保留流程文档，按项目补充构建、测试、发布自动化
4. 把跨项目通用的改进回流到这个 seed

## 建议目录约定

- `specs/features/<feature-slug>/brief.md`
- `specs/features/<feature-slug>/spec.md`
- `specs/features/<feature-slug>/plan.md`
- `specs/features/<feature-slug>/tasks.md`
- `specs/releases/<release-slug>.md`

## 当前已具备

- 统一宪章
- 项目启动到切片执行的分层方法
- OpenClaw 前台编排与 Codex 后台执行的操作模型
- 面向本地 OpenClaw 改造的任务包与审批网关模板
- 面向本地 OpenClaw 长线演进的 backlog
- 面向下游仓库复用的 OpenClaw 能力包规范
- 从需求进入到复盘的标准工件流
- 新功能工作区脚手架
- GitHub Actions 的工件结构校验
- 更具体的执行手册
- 面向当前切片的质量检查清单
- 端到端示例工件

## 当前未自动化

- 飞书到 GitHub 项目级 issue 的自动投递
- seed 到下游仓库的同步
- OpenClaw 专用命令集成
- 更强的 CI 内容约束
