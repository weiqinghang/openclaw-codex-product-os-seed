# Seed Project Guide

## What this repository is

这个仓库适合作为 Git 种子项目，用于让新产品或新代码库从第一天开始就继承同一套研发操作系统。

## Recommended downstream usage

1. 从这个 seed 创建新仓库
2. 根据领域调整 `specs/constitution.cn.md` 和 `specs/constitution.en.md`
3. 保留流程文档，按项目补充构建、测试、发布自动化
4. 把跨项目通用的改进回流到这个 seed

## Suggested repository conventions

- `specs/features/<feature-slug>/brief.md`
- `specs/features/<feature-slug>/spec.md`
- `specs/features/<feature-slug>/plan.md`
- `specs/features/<feature-slug>/tasks.md`
- `specs/releases/<release-slug>.md`

## Executable today

今天已经支持：

- 统一 constitution
- 从 intake 到 retrospective 的标准工件流
- 新 feature 工作区脚手架
- GitHub Actions 的工件结构校验

## Not automated yet

- seed 到下游仓库的同步
- OpenClaw 专用命令集成
- 更强的 CI 内容约束
