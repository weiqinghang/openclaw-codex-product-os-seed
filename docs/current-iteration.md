# 当前迭代

**主题：通过 OpenClaw 驱动本项目持续生长**

## 关联工件

- [x] Backlog 条目：[`docs/02-openclaw/backlog.md#backlog`](./02-openclaw/backlog.md#backlog)
- [x] 需求简报：[`specs/features/openclaw-seed-maintainer-agent/brief.md`](../specs/features/openclaw-seed-maintainer-agent/brief.md)
- [x] 功能规格：[`specs/features/openclaw-seed-maintainer-agent/spec.md`](../specs/features/openclaw-seed-maintainer-agent/spec.md)
- [x] 实现计划：[`specs/features/openclaw-seed-maintainer-agent/plan.md`](../specs/features/openclaw-seed-maintainer-agent/plan.md)
- [x] 工作手册：[`specs/features/openclaw-seed-maintainer-agent/handbook.md`](../specs/features/openclaw-seed-maintainer-agent/handbook.md)
- [x] 验收期线程补充：[`specs/features/openclaw-seed-maintainer-agent/thread-workflow.md`](../specs/features/openclaw-seed-maintainer-agent/thread-workflow.md)
- [x] OpenClaw 架构背景：[`plan.md#2-当前状态`](../specs/features/openclaw-seed-maintainer-agent/plan.md#2-当前状态)
- [x] 任务拆解：[`specs/features/openclaw-seed-maintainer-agent/tasks.md`](../specs/features/openclaw-seed-maintainer-agent/tasks.md)
- [x] 验证台账：[`specs/features/openclaw-seed-maintainer-agent/validation-log.md`](../specs/features/openclaw-seed-maintainer-agent/validation-log.md)

## 已完成

- [x] 理解目前 `OpenClaw` 的多 Agent 能力和现有接入方式
- [x] 定义一个能在飞书中直接调用的 seed 项目维护 Agent
- [x] 明确这个 Agent 与人类、`OpenClaw`、`ACP/Codex` 的分工边界
- [x] 定义它维护 `openclaw-codex-product-os-seed` 的输入、输出和升级条件
- [x] 为 `龟丞相` 补齐工作手册与飞书线程工作流
- [x] 为后续接入实现准备规格工件

## 待继续

- [x] 基于已完成配对的 `龟丞相`，拆出最小实施批次
- [x] 把本机 `OpenClaw` 多 Agent 架构约束映射到 `龟丞相` 接入实现
- [x] 固化飞书线程中的回报格式与状态模型
- [ ] 验证 `龟丞相` 是否能稳定维护 `openclaw-codex-product-os-seed`

## 稳定性验收标准（v0）

> 用于判定“是否可把当前 inprogress 收敛为 done 候选”。

通过条件（需同时满足）：

1. 连续 3 轮真实飞书请求，均能完成“分类 -> 最小必要读取 -> 四段式汇报”。
2. 连续 3 轮内人工纠偏次数 <= 1（仅允许轻微表述纠偏）。
3. 连续 3 轮内出现越权行为次数 = 0（不跨仓、不自动提交/推送、不擅改边界）。
4. 连续 3 轮内工件回写完整率 >= 90%（应回写项均有对应落仓）。
5. 异常场景出现时，升级路径正确（人类 / `ACP/Codex`）且有记录。

未通过判定（任一满足即未通过）：

- 出现一次边界违规。
- 连续两轮分类不稳定，导致错误读取或错误建议。
- 应回写但未回写，且影响后续迭代判断。

## 验证记录

- 验证台账：`specs/features/openclaw-seed-maintainer-agent/validation-log.md`
- 当前进度：已建立模板，已完成 1 条飞书样例和 2 条 CLI 链路验证；后续仍需补足连续 3 轮真实飞书请求。
- 当前判断：CLI 侧默认读取、差距盘点、推进建议、`done` 候选判断链路都可用；`v0` 通过口径仍未满足。
- 综合评价：当前验证通过率 `88.9%`（`16/18`）；短板集中在“真实飞书连续轮次”和“回写闭环”。

## 本轮人类参与

- [x] 人类提供飞书应用并完成配对
- [x] 人类确认这个 Agent 的权限边界和默认职责
- [x] 人类确认何时允许它自动推进，何时必须回到人类
