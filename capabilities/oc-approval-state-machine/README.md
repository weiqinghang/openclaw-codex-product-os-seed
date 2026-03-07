# OpenClaw Approval State Machine

## 目标

把审批网关模型映射成稳定状态机，明确什么事件会推进、阻塞、回退或重新下发任务。

## 适用场景

- `OpenClaw` 需要根据固定节点判断是否可自动推进
- 需要把审批行为从“经验判断”变成“可执行规则”
- 需要和结果分类器、审批状态存储联动

## 前置条件

- 已采用审批网关模型
- 已有结果分类器输出
- 已有审批状态存储

## 安装方式

1. 将 `prompts/gateway-transition-rules.md` 接入审批判断层。
2. 参考 `configs/approval-state-machine.example.toml` 配置状态和事件。
3. 使用 `templates/approval-decision-brief.md` 生成对人的决策摘要。

## 启用方式

- `OpenClaw` 每收到一次结果分类，就用状态机判定下一状态。
- 命中审批节点时，输出结构化决策摘要并写入状态存储。
- 收到人类批准、驳回或补充后，再执行下一次状态转移。

## 配置项

- `initial_state`：默认起始状态
- `auto_continue_classes`：允许自动推进的结果分类
- `blocking_classes`：会阻塞自动推进的结果分类
- `gateway_to_state`：审批节点与状态映射

## 验证方式

- 用 `examples/approval-state-transitions.md` 检查关键流转是否覆盖
- 确认未触发网关时会自动继续
- 确认命中网关时会进入等待审批，而不是继续执行

## 回滚 / 停用方式

- 移除状态机规则和状态映射配置
- 恢复为人工判断是否触发审批
- 停用后仍可保留审批状态存储作为只读记录

## 已知限制

- 该能力包只定义状态机规则，不带运行时执行器
- 若结果分类错误，状态转移也会错误
- 复杂并行分支需要上游编排器额外支持
