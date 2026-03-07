# OpenClaw Feishu Router

## 目标

把飞书中的原始请求先收敛为结构化入口，再由 `OpenClaw` 判断是继续在飞书内澄清、沉淀为 GitHub 项目级 issue，还是下发给 `Codex`。

## 适用场景

- 人类先在飞书里提出项目想法、问题或变更请求
- 飞书消息通常混有背景、情绪、历史和多个目标
- 需要避免把飞书聊天直接当成正式任务输入

## 前置条件

- 飞书是人类与 `OpenClaw` 的主协作入口
- 已采用项目级 / 切片级分层规则
- 已采用 `OpenClaw -> Codex` 任务包模型

## 安装方式

1. 将 `prompts/feishu-intake-normalizer.md` 接入 `OpenClaw` 的飞书入口提示词。
2. 将 `templates/feishu-intake-summary.md` 作为飞书请求的标准收敛格式。
3. 参考 `configs/feishu-router.example.toml` 配置路由判定规则。

## 启用方式

- 每条飞书请求先输出一份收敛摘要。
- `OpenClaw` 依据路由规则，把请求归到：继续澄清、创建 GitHub issue、触发审批、下发 `Codex`。
- 未完成收敛前，不允许直接把飞书全文转给 `Codex`。

## 配置项

- `default_route`：默认先回到澄清，而不是直接执行
- `project_issue_required_for_execution`：未建项目级 issue 时，禁止进入仓库执行
- `route_when_design_missing`：依赖设计但缺设计时的回退动作
- `route_when_scope_is_multi_goal`：多目标请求的默认去向

## 验证方式

- 用 `examples/feishu-routing-examples.md` 检查同一条消息能否被稳定收敛
- 确认项目想法会进入“GitHub 项目级 issue”路线
- 确认切片执行请求在缺少必要工件时不会直接进入 `Codex`

## 回滚 / 停用方式

- 移除飞书入口上的收敛提示词和路由配置
- 恢复为人工判断下一步去向
- 停用后不影响 `Codex` 任务包或审批状态能力

## 已知限制

- 该能力包只定义路由规则，不包含真实飞书机器人接入代码
- 若上游无法识别项目级与切片级，路由结果会偏差
- 多轮飞书上下文摘要仍需要上游会话记忆支持
