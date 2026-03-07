# Task Breakdown

## Metadata

- Feature: Empty dashboard onboarding card
- Plan link: `examples/onboarding-improvement/plan.md`
- Owner: Engineering

## Tasks

### Task 1

- Goal: 在空白 dashboard 展示 onboarding 卡片
- Inputs: `spec.md`, dashboard empty state component
- Changes: 新增卡片 UI 和空白判断逻辑
- Verification: 手动确认空白 workspace 可见、非空 workspace 不可见
- Definition of done: UI 已接入且展示条件正确

### Task 2

- Goal: 接入主 CTA 跳转与曝光/点击埋点
- Inputs: routing, analytics hooks
- Changes: 绑定 CTA 行为与埋点
- Verification: 手动点击可跳转；事件日志中可看到曝光和点击
- Definition of done: CTA 和关键埋点可用

### Task 3

- Goal: 完成首次关键动作后隐藏卡片
- Inputs: 关键动作完成状态
- Changes: 增加隐藏条件和回归测试
- Verification: 完成首次关键动作后重新进入 dashboard，卡片不再显示
- Definition of done: 隐藏逻辑可靠通过测试

## Dependency Notes

- Task 3 依赖关键动作完成状态可判断

## Execution Rules

- Keep tasks independently reviewable.
- Prefer shipping a thin vertical slice first.
- Attach verification to each task, not only at the end.
