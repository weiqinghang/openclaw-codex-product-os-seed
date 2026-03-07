# 示例：实现阶段的精简任务包

## 元数据

- 任务标题：完善 onboarding 卡片关闭后持久化
- 发起方：OpenClaw
- 阶段：实现
- 优先级：高
- 相关 issue：onboarding-improvement / slice-2-persist

## 1. 当前目标

实现“用户关闭 onboarding 卡片后，本会话内不再重复展示”。

## 2. 上下文边界

### 允许使用

- `examples/onboarding-improvement/slice-2-persist/brief.md`
- `examples/onboarding-improvement/slice-2-persist/spec.md`
- 当前相关代码目录
- 当前切片验证要求

### 不要使用

- onboarding 后续切片设想
- 项目级长期路线图
- 无关 issue 讨论

## 3. 缺失项检查

- 是否缺设计定版：否
- 是否缺验收标准：否
- 是否缺代码范围：否
- 若缺失，是否停止下发：是

## 4. 预期产出

- 实现补丁
- 验证结果
- 风险说明

## 5. 升级条件

### 必须回到 OpenClaw

- 发现当前切片无法在现有状态管理模型内完成
- 发现实现会扩展到下一个切片

### 必须提交给人类

- 持久化方案会影响用户可见行为或验收口径

## 6. 返回结果分类

- 可自动继续：实现完成且验证通过
- 需人类 review：行为有变化，需要确认体验
- 需人类决策：实现将改变范围或周期
- 需补充输入：缺少设计或验收标准
