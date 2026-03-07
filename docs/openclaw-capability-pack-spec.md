# OpenClaw 能力包规范

## 目标

把针对 `OpenClaw` 的改造能力，从“方法说明”升级成“可安装、可启用、可停用、可升级”的能力包。

这份规范用于保证：

- 下游仓库可以快速复用能力
- 能力不依赖修改 `OpenClaw` 源码
- 能力可以按需组合，而不是整套一起搬走
- 后续可以独立增删和升级单个能力

## 核心原则

- 一个能力包只解决一种明确问题
- 默认通过配置、模板、prompt、脚本或外围适配层实现
- 能力包必须说明前置条件、接入方式、验证方式和回滚方式
- 能力包必须允许独立升级，不要求和其他能力同步发布
- 只有在扩展点明确不足时，能力包才可以标记“可能源码”

## 仓库结构

每个能力包放在：

`capabilities/<capability-slug>/`

标准结构如下：

```text
capabilities/
└── <capability-slug>/
    ├── README.md
    ├── capability.toml
    ├── prompts/
    │   └── *.md
    ├── templates/
    │   └── *.md
    ├── configs/
    │   └── *.example.*
    ├── scripts/
    │   └── *
    └── examples/
        └── *
```

## capability.toml 规范

每个能力包必须包含一个 `capability.toml`，至少包含这些字段：

```toml
id = "oc-feishu-router"
name = "Feishu Router"
version = "0.1.0"
category = "integration"
summary = "Route Feishu messages through OpenClaw before dispatching work."
recommended_layer = "extension"
status = "draft"

[compat]
requires_openclaw_source_changes = false
requires_codex_source_changes = false

[ownership]
backlog_id = "OC-007"
```

## README.md 规范

每个能力包的 `README.md` 至少包含：

- 能力目标
- 适用场景
- 前置条件
- 安装方式
- 启用方式
- 配置项
- 验证方式
- 回滚 / 停用方式
- 已知限制

## 生命周期

### 新增能力包

新增一个能力包时，至少要同时完成：

- 在 `docs/openclaw-backlog.md` 中登记或关联 backlog 条目
- 创建 `capabilities/<capability-slug>/`
- 补 `README.md`
- 补 `capability.toml`
- 提供最少一项实际资产
  - prompt
  - config
  - template
  - script

### 启用能力包

能力包启用后，应能明确回答：

- 需要拷贝或引用哪些文件
- 需要配置哪些参数
- 会影响哪个交互阶段
- 如何判断它已经生效

### 停用能力包

每个能力包都必须能单独停用，而不要求整体回滚。

因此能力包需要说明：

- 停用时移除哪些配置或 prompt
- 停用后会退回到什么默认行为
- 是否会影响其他能力包

### 升级能力包

能力包升级时，应优先保持：

- `id` 不变
- 接入位置尽量不变
- 升级说明清楚

如果升级会带来不兼容变化，必须在 `README.md` 中明确写出迁移步骤。

## 组合规则

多个能力包可以组合，但需要遵守：

- 不重复定义同一个审批节点
- 不重复改写同一类消息路由
- 不重复覆盖同一组输出 schema

如果能力之间会冲突，应在各自 `README.md` 中写清：

- 冲突对象
- 推荐顺序
- 是否可以同时启用

## 与 Backlog 的关系

`docs/openclaw-backlog.md` 记录的是长期能力需求。

`capabilities/` 记录的是已经被产品化的能力包。

推荐关系是：

- backlog 条目先出现
- 条目一旦进入产品化实现，就对应一个能力包
- 能力包成熟后，可以把 backlog 状态更新为 `done` 或 `in-progress`

## 验收标准

一个能力包至少在以下条件成立时，才算真正可复用：

- 能明确说明它解决什么问题
- 能在不改 `OpenClaw` 源码的前提下完成接入
- 能提供最少一种实际资产
- 能说明如何验证和如何停用
- 能独立升级，不绑死其他能力
