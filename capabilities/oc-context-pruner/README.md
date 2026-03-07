# OpenClaw Context Pruner

## 目标

在 `OpenClaw` 调用 `Codex` 前，把输入收敛成“当前阶段 + 单一目标 + 最小必要上下文”，避免把整段历史对话直接下发。

## 适用场景

- 人类在飞书或聊天里给了很长的背景，但当前只需要执行一个切片
- 已有 `brief / spec / plan / tasks`，需要只把当前批次交给 `Codex`
- 需要降低 `Codex` 接收噪音、历史包袱和跨切片信息污染

## 前置条件

- 已采用 [`Codex` 任务包模板](../../templates/codex-task-packet.md)
- 当前请求已能识别所属阶段
- 当前至少能指出相关工件或代码范围

## 安装方式

1. 复制 `prompts/context-pruning-checklist.md` 到你的 `OpenClaw` 系统提示或路由层。
2. 复制 `templates/pruned-codex-task-packet.md` 作为 `OpenClaw -> Codex` 默认任务包模板。
3. 参考 `configs/context-pruner.example.toml` 配置保留项、裁剪阈值和升级条件。

## 启用方式

- `OpenClaw` 在每次准备调用 `Codex` 前，先按裁剪清单生成精简任务包。
- 若无法把目标收敛成单一问题，先停在 `OpenClaw`，不要下发给 `Codex`。
- 若缺少关键输入，直接归类为“需补充输入”。

## 配置项

- `max_context_items`：最多保留多少条上下文输入
- `allow_history_summary`：是否允许保留一段历史摘要
- `required_artifacts_by_stage`：不同阶段必须给 `Codex` 的工件
- `escalate_when_missing`：缺失关键输入时回退给 `OpenClaw` 的条件

## 验证方式

- 用 `examples/feature-implementation-pruned-packet.md` 对照检查生成结果
- 确认任务包只包含当前目标，不混入未来切片或无关背景
- 确认缺失设计、验收或代码范围时会停止下发

## 回滚 / 停用方式

- 移除路由层中的裁剪清单和配置
- 恢复原始 `Codex` 任务包模板
- 停用后行为退回为人工整理上下文，不影响其他能力包

## 已知限制

- 该能力包只定义裁剪规则，不自带真实消息总线或调用拦截器
- 阶段识别仍依赖上游判断；若阶段判断错，裁剪结果也会偏
- 多目标请求会被主动拦下，不会自动拆分成多个任务包
