# 审批状态流转示例

## 示例 1：正常自动推进

- 当前状态：codex_running
- 事件：codex_result_received
- 分类：可自动继续
- 下一状态：approved_to_continue

## 示例 2：首个切片需要 review

- 当前状态：codex_running
- 事件：gateway_triggered
- 分类：需人类 review
- 下一状态：awaiting_human_review

## 示例 3：方案影响周期

- 当前状态：codex_running
- 事件：gateway_triggered
- 分类：需人类决策
- 下一状态：awaiting_human_decision

## 示例 4：缺输入回退

- 当前状态：ready_for_codex
- 事件：missing_input_detected
- 分类：需补充输入
- 下一状态：awaiting_input
