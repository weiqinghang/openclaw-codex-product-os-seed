# Execution Playbook

## Goal

把仓库里的方法论压缩成一套可以日常执行的操作规则，降低“知道理念，但不会落地”的摩擦。

## Standard Operating Path

### Step 1. Intake

触发条件：

- 新功能想法
- 用户反馈
- 缺陷修复
- 流程改进需求

动作：

1. 先开 GitHub issue
2. 用 `Feature Proposal` 或 `Bug Report` 模板收敛问题
3. 判断是否值得进入一个独立 delivery slice

退出条件：

- 问题、用户、目标、约束已经明确到可以写 `brief.md`

### Step 2. Create Feature Workspace

动作：

```bash
make new-feature SLUG=<feature-slug> LANG=cn
```

或：

```bash
make new-feature SLUG=<feature-slug> LANG=en
```

规则：

- `slug` 必须是小写 kebab-case
- 一个目录只承载一个交付切片
- 不要把多个无关需求塞进同一组工件

### Step 3. Write Brief

必须回答：

- 这是什么请求
- 谁受影响
- 成功后会发生什么变化
- 当前最小交付切片是什么

停止写 spec 的信号：

- 你还说不清真实用户是谁
- 你还没法描述最小切片
- 你只有技术方案，没有用户问题

### Step 4. Write Spec

必须回答：

- 问题是什么
- 哪些场景在本次范围内
- 哪些内容明确不做
- 验收标准是什么

规则：

- 至少写 3 条可测试的 `Acceptance Criteria`
- 每个 spec 都必须有 `Out of scope`
- 如果是缺陷修复，也要写用户场景，不要只写技术原因

### Step 5. Write Plan

必须回答：

- 影响哪些组件
- 哪种实现方案最合适
- 如何分批上线
- 如何回滚
- 如何验证

规则：

- plan 里必须写 `Risks`
- plan 里必须写 `Test Strategy`
- 如果无法解释为什么选这个方案，说明还不该进入实现

### Step 6. Write Tasks

任务拆分规则：

- 每个任务都必须可独立验证
- 每个任务都必须写 `Verification`
- 优先按用户价值纵切，不按技术层横切

坏拆分：

- 前端改完一批
- 后端改完一批
- 测试最后一起补

好拆分：

- 先交付一个可工作的最小路径
- 再补边界情况
- 再补体验和观测

### Step 7. Execute

执行节奏：

1. 改一个小片段
2. 跑相关检查
3. 更新对应工件
4. 再进入下一片

规则：

- 用户可见行为变化，先改 spec
- 不要把重构和新行为大规模混在一个提交里
- 每完成一个任务，就补充验证证据

### Step 8. Validate

本地至少运行：

```bash
make validate-specs
```

如果项目已有测试，还要运行项目自身测试。

必须确认：

- spec 工件结构完整
- 实现与 spec 一致
- 已知限制有记录

### Step 9. Open PR

PR 必须链接：

- Brief
- Spec
- Plan
- Tasks

PR 中必须写清：

- 改了什么
- 怎么验证
- 还剩什么风险

### Step 10. Release and Learn

发布前：

- 填写 release checklist

发布后：

- 记录 retrospective
- 如果出现重复摩擦，更新模板或文档，而不是只更新聊天记录

## Decision Rules

### When to split a feature

出现以下任一情况就应该拆分：

- 验收标准超过 5 条且差异很大
- 涉及多个角色且成功标准不同
- 一次改动跨越多个系统边界
- 无法在一次 review 中看懂

### When to skip a plan

只有同时满足以下条件才可以弱化 plan：

- 改动非常小
- 没有架构影响
- 没有 rollout 风险
- 人工 review 成本极低

即便如此，也建议在 PR 里保留一个简短方案说明。

### When to update constitution

当某条规则在 3 次以上迭代里重复被提及时，就不要只修单个 feature，要回流到：

- `docs/`
- `templates/`
- `specs/constitution.*.md`

## Definition of Done

一个 feature 只有在以下条件同时成立时才算完成：

- 真实代码变更已完成
- `brief/spec/plan/tasks` 已齐备
- 验证证据存在
- PR 模板信息完整
- 发布风险已说明
- 必要时已补 retrospective
