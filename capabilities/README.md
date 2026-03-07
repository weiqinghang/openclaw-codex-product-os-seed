# OpenClaw 能力包

这个目录用于沉淀可安装、可启用、可停用、可升级的 `OpenClaw` 能力包。

目标不是只记录方法论，而是让下游仓库可以把这里的能力快速实装到自己的 `OpenClaw` 工作流中。

## 使用规则

- 一个子目录代表一个能力包
- 能力包必须遵守 [OpenClaw 能力包规范](../docs/openclaw-capability-pack-spec.md)
- 能力包默认优先通过配置、模板、prompt、脚本或外围适配层实现
- 如果某个能力包需要源码改造，必须在 `capability.toml` 中明确标记

## 推荐流程

1. 先在 [OpenClaw 改造 Backlog](../docs/openclaw-backlog.md) 中登记能力需求
2. 再按本目录规范创建能力包
3. 为能力包补齐：
   - `README.md`
   - `capability.toml`
   - 最少一项实际资产
4. 完成后回写 backlog 状态

## 当前状态

当前仓库已开始沉淀具体能力包实现。

- `oc-feishu-router`：先在飞书入口收敛请求，再决定沉淀 GitHub 还是转交 `Codex`
- `oc-context-pruner`：在 `OpenClaw -> Codex` 交接前裁剪上下文，只保留当前阶段、当前目标和最小必要输入。
- `oc-result-classifier`：把 `Codex` 返回结果归类成可继续、需 review、需决策、需补充输入
- `oc-approval-store`：持久化阶段、审批节点、最后决定和关联工件
- `oc-approval-state-machine`：把审批网关规则收敛成可执行状态机
