# OpenClaw Result Classifier

## 目标

把 `Codex` 返回结果统一归类为“可自动继续 / 需人类 review / 需人类决策 / 需补充输入”，避免 `OpenClaw` 每次临场解释结果去向。

## 适用场景

- `Codex` 返回实现、验证、方案或风险结论
- `OpenClaw` 需要判断下一步是自动推进还是中止升级
- 需要为审批状态机和人类摘要提供稳定输入

## 前置条件

- 已采用 `Codex` 任务包模板
- 任务包包含升级条件
- 已有审批网关模型

## 安装方式

1. 将 `prompts/result-classification-rules.md` 接入 `OpenClaw` 的结果处理层。
2. 将 `templates/classified-codex-result.md` 作为结果标准格式。
3. 参考 `configs/result-classifier.example.toml` 配置分类阈值。

## 启用方式

- `Codex` 返回结果后，先执行分类，再决定是否继续流转。
- 分类结果写回审批状态存储。
- 只有分类为“可自动继续”时，`OpenClaw` 才能自动推进下一步。

## 配置项

- `default_class`：默认结果分类
- `classify_as_review_when_artifact_changed`：工件变化是否强制 review
- `classify_as_decision_when_scope_changes`：范围变化是否强制决策
- `classify_as_input_needed_when_missing_dependencies`：缺输入时是否直接回退

## 验证方式

- 用 `examples/result-classification-examples.md` 校验四类结果是否可区分
- 确认实现完成且验证通过时可自动继续
- 确认范围、周期、风险变化时会升级为人类决策

## 回滚 / 停用方式

- 移除结果处理层中的分类规则
- 恢复为人工阅读 `Codex` 原始返回
- 停用后不影响任务包和飞书路由能力

## 已知限制

- 分类质量取决于 `Codex` 是否明确写出风险、缺失项和结论
- 若任务包升级条件定义不清，分类容易漂移
- 该能力包只做分类，不负责生成审批卡片
