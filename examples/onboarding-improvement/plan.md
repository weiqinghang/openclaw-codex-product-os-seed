# Implementation Plan

## Metadata

- Feature: Empty dashboard onboarding card
- Owner: Engineering
- Date: 2026-03-07
- Spec link: `examples/onboarding-improvement/spec.md`

## 1. Summary

在 dashboard 空状态区域增加一个轻量 onboarding 卡片。通过现有 workspace 数据判断是否为空，并在 UI 层根据条件显示卡片。主 CTA 跳转到首个关键操作入口，完成关键动作后通过已有状态或新标记隐藏卡片。首版优先验证用户是否理解下一步，而不是实现完整引导系统。

## 2. Current State

当前空白 dashboard 只显示基础空状态文案，没有明确的下一步引导。

## 3. Proposed Design

### Components affected

- Dashboard empty state component
- Workspace state selector
- Analytics event tracking

### Data model changes

- 如现有状态不足，增加一个 `has_completed_first_action` 标记

### API or contract changes

- 如果前端无法直接判断，需要补一个轻量字段到 workspace payload

### UI or workflow changes

- 空状态区域新增 onboarding 卡片
- 主 CTA 指向第一个关键动作

## 4. Alternatives Considered

- Option A: 做完整多步骤引导
- Option B: 只加一张 onboarding 卡片

选择 B，因为实现更快、风险更低，更适合先验证方向。

## 5. Delivery Strategy

### Vertical slices

1. 加入静态 onboarding 卡片并只对空白 workspace 展示
2. 连接主 CTA 跳转与点击埋点
3. 在首次关键动作完成后隐藏卡片

### Rollout

- 先对全部新 workspace 生效

### Rollback

- 可通过 feature flag 或配置关闭卡片展示

## 6. Test Strategy

- Unit: 判断空白 workspace 和展示条件
- Integration: CTA 跳转、完成首个动作后卡片隐藏
- End-to-end/manual: 新用户首次进入空白 workspace 的完整路径

## 7. Risks

- Technical risk: 空白判断逻辑可能不稳
- Product risk: 文案不清楚导致 CTA 点击率低
- Operational risk: 埋点缺失会削弱验证效果

## 8. Unknowns

- 现有 payload 是否已有足够字段支撑隐藏逻辑

## 9. Exit Criteria

- [ ] Code implemented
- [ ] Tests added or updated
- [ ] Docs/spec updated
- [ ] Verification evidence captured
