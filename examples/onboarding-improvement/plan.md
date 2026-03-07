# 实现计划

## 元数据

- 功能：空白 dashboard 引导卡片
- 负责人：工程
- 日期：2026-03-07
- 规格链接：`examples/onboarding-improvement/spec.md`

## 1. 摘要

在 dashboard 空状态区域增加一个轻量 onboarding 卡片。通过现有 workspace 数据判断是否为空，并在 UI 层根据条件显示卡片。主 CTA 跳转到首个关键操作入口，完成关键动作后通过已有状态或新标记隐藏卡片。首版优先验证用户是否理解下一步，而不是实现完整引导系统。

## 2. 当前状态

当前空白 dashboard 只显示基础空状态文案，没有明确的下一步引导。

## 3. 方案设计

### 受影响组件

- Dashboard empty state component
- Workspace state selector
- Analytics event tracking

### 数据模型变更

- 如现有状态不足，增加一个 `has_completed_first_action` 标记

### 接口或契约变更

- 如果前端无法直接判断，需要补一个轻量字段到 workspace payload

### 界面或流程变更

- 空状态区域新增 onboarding 卡片
- 主 CTA 指向第一个关键动作

## 4. 备选方案

- 方案 A：做完整多步骤引导
- 方案 B：只加一张 onboarding 卡片

选择 B，因为实现更快、风险更低，更适合先验证方向。

## 5. 交付策略

### 纵向切片

1. 加入静态 onboarding 卡片并只对空白 workspace 展示
2. 连接主 CTA 跳转与点击埋点
3. 在首次关键动作完成后隐藏卡片

### 发布方式

- 先对全部新 workspace 生效

### 回滚方式

- 可通过 feature flag 或配置关闭卡片展示

## 6. 测试策略

- 单元测试：判断空白 workspace 和展示条件
- 集成测试：CTA 跳转、完成首个动作后卡片隐藏
- 端到端或手动验证：新用户首次进入空白 workspace 的完整路径

## 7. 风险

- 技术风险：空白判断逻辑可能不稳
- 产品风险：文案不清楚导致 CTA 点击率低
- 运行风险：埋点缺失会削弱验证效果

## 8. 未知项

- 现有 payload 是否已有足够字段支撑隐藏逻辑

## 9. 退出条件

- [ ] 代码已实现
- [ ] 测试已补充或更新
- [ ] 文档或规格已更新
- [ ] 验证证据已记录
