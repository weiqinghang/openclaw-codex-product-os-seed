# OpenClaw Approval Store

## 目标

持久化记录 `OpenClaw` 当前阶段、当前审批节点、最后一次人类决定、关联工件和阻塞原因，让流转不依赖会话记忆。

## 适用场景

- 同一个项目跨多轮飞书、GitHub 和仓库执行
- `OpenClaw` 需要知道当前是否卡在审批中
- 需要追踪某次决定基于哪些工件和证据做出

## 前置条件

- 已定义审批网关模型
- 已采用结果分类器
- 已有稳定的项目 ID 或切片 ID

## 安装方式

1. 参考 `configs/approval-store.example.toml` 创建状态存储结构。
2. 使用 `templates/approval-state-record.md` 作为人工可读快照模板。
3. 参考 `examples/approval-state-record.json` 对接你的实际存储实现。

## 启用方式

- 每次阶段变化、网关触发、审批结论更新时写入一条状态记录。
- `OpenClaw` 在继续自动推进前，先读取当前状态。
- 若状态仍为待审批或待补充输入，不允许继续下发执行。

## 配置项

- `storage_backend`：文件、KV、数据库等
- `project_key_field`：项目唯一标识字段
- `slice_key_field`：切片唯一标识字段
- `retain_history_entries`：保留多少条历史记录

## 验证方式

- 用 `examples/approval-state-record.json` 检查必要字段是否齐全
- 确认同一项目跨轮次能恢复到上次审批节点
- 确认人类未批准前不会被误判成可继续

## 回滚 / 停用方式

- 移除状态读写接入
- 清理或归档存储中的状态记录
- 停用后系统退回为会话内短期记忆，不影响路由或裁剪规则

## 已知限制

- 该能力包只定义状态结构，不绑定具体数据库
- 若项目 ID 或切片 ID 不稳定，状态会串线
- 历史审计仍需要上游日志系统配合
