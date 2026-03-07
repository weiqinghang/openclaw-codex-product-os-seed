# 示例说明：空白页引导改进

这个示例故意不用“一次性设计完整 onboarding”的理想化方式，而是拆成两个切片：

- `slice-1-card`
- `slice-2-persist`

它体现的是：

- 先验证最小价值
- 再根据反馈补下一切片
- 不是一次把所有想法写完

## 切片 1：先验证用户是否需要明确下一步

目标：

- 在空白 dashboard 上加一张引导卡片
- 验证用户是否会点击主动作按钮

不做：

- 不做完整引导流程
- 不做跨会话持久化
- 不做复杂个性化逻辑

对应工件：

- [slice-1-card/brief.md](slice-1-card/brief.md)
- [slice-1-card/spec.md](slice-1-card/spec.md)
- [slice-1-card/plan.md](slice-1-card/plan.md)
- [slice-1-card/tasks.md](slice-1-card/tasks.md)

## 切片 2：在切片 1 通过后，再补持久化和关闭逻辑

目标：

- 用户完成首次关键动作后不再看到卡片
- 补最小持久化逻辑

不做：

- 不引入完整 onboarding 状态机
- 不统一所有新手引导入口

对应工件：

- [slice-2-persist/brief.md](slice-2-persist/brief.md)
- [slice-2-persist/spec.md](slice-2-persist/spec.md)
- [slice-2-persist/plan.md](slice-2-persist/plan.md)
- [slice-2-persist/tasks.md](slice-2-persist/tasks.md)

## 这个示例想表达什么

- 同一个主题可以分多次推进
- 后一切片建立在前一切片已验证的结果上
- 规格和计划是迭代更新的，不是一次写死
