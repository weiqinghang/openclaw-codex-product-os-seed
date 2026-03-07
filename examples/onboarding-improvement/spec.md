# Feature Spec

## Metadata

- Title: Empty dashboard onboarding card
- Status: Draft
- Owner: Product + Engineering
- Date: 2026-03-07
- Related request: onboarding-improvement

## 1. Problem

首次进入空白工作区的用户无法判断下一步动作，导致早期流失，并降低首次激活率。

## 2. Users and Context

受影响用户是第一次创建工作区、且当前没有任何内容的新用户。问题发生在 workspace 创建完成后首次进入空白 dashboard 的场景。

## 3. Desired Outcome

用户能够在首次进入时理解推荐动作，并通过主 CTA 完成第一步关键行为。

## 4. Scope

### In scope

- 在空白 dashboard 显示 onboarding 卡片
- 展示一句说明文案
- 展示一个主 CTA
- 展示一个帮助链接

### Out of scope

- 完整的新手引导流程
- 多步骤 tutorial
- 非空 dashboard 的引导逻辑

## 5. User Scenarios

1. As a first-time user
2. I want to know what to do next after creating a workspace
3. So that I can start using the product immediately

失败路径：

- 用户关闭或忽略卡片，页面仍然可正常使用
- 若帮助链接不可用，主 CTA 仍然可用

## 6. Functional Requirements

- 仅在空白 dashboard 首次加载时展示卡片
- 卡片包含标题、描述、主 CTA、帮助链接
- 点击主 CTA 后进入第一个关键动作页面
- 当用户完成第一次关键动作后，不再显示卡片

## 7. Non-Functional Requirements

- Performance: 不应显著增加 dashboard 首屏延迟
- Reliability: CTA 失败时应有降级提示
- Security/privacy: 不引入新增权限范围
- Accessibility: 卡片可通过键盘聚焦和操作
- Observability: 记录卡片曝光和 CTA 点击

## 8. Acceptance Criteria

- [ ] 空白 workspace 用户首次进入 dashboard 时可以看到 onboarding 卡片
- [ ] 非空 workspace 用户不会看到 onboarding 卡片
- [ ] 点击主 CTA 后可以进入预期的第一步页面
- [ ] 用户完成第一次关键动作后，卡片不再显示

## 9. Open Questions

- 帮助链接是指向文档还是应用内说明？

## 10. Risks and Assumptions

- Assumptions: 存在“空白 workspace”的可靠判断条件
- Risks: 如果判断条件不准，可能误向已有用户展示卡片

## 11. Notes

首版先验证最小引导是否提升激活，不追求完整 onboarding 体验。
