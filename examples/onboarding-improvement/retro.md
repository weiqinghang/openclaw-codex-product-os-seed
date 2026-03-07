# Iteration Retrospective

## Metadata

- Iteration: onboarding-improvement-v1
- Feature: Empty dashboard onboarding card
- Date: 2026-03-15

## 1. Intended Outcome

帮助首次进入空白 workspace 的用户更快完成第一次关键动作。

## 2. What Shipped

- 空白 dashboard onboarding 卡片
- 主 CTA 跳转
- 曝光与点击埋点
- 首个关键动作完成后的隐藏逻辑

## 3. Evidence

- Tests: 展示条件与隐藏逻辑已覆盖
- Manual verification: 首次进入、点击 CTA、完成动作后回访均验证通过
- User or stakeholder feedback: 产品确认首版已满足验证目标

## 4. What Went Well

- 先做最小卡片而不是完整引导，交付更快
- 规格和计划帮助压缩了争论范围

## 5. Friction

- 空白 workspace 的判断条件定义一开始不够明确
- 埋点命名在实现阶段才统一，偏晚

## 6. Bugs, Risks, and Follow-ups

- 后续需要观察卡片是否对已有回访用户造成干扰
- 需要评估是否引入第二步引导

## 7. Process Updates

- 以后涉及埋点的 feature，应该在 plan 阶段明确事件命名
- 涉及状态判断的 feature，应该在 spec 里更早写清判断依据
