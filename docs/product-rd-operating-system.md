# Product R&D Operating System

## 1. Goal

Build a full product delivery loop where ideas can enter from OpenClaw, become executable specifications, flow into Codex for implementation, and be verified under XP discipline before release.

This operating system treats specs, plans, tasks, tests, and review notes as first-class artifacts.

## 2. Role Assignment

### OpenClaw

Use OpenClaw as the outer orchestration plane.

- Collect raw product intent from chat, voice, or operational channels
- Convert ambiguous requests into structured feature briefs
- Route work into the repository as a bounded change request
- Trigger or supervise recurring operational tasks later if needed

### Codex

Use Codex as the inner execution plane inside the repository.

- Inspect the codebase and existing specs
- Refine the feature brief into repo-specific implementation work
- Make code changes, run checks, and produce reviewable output
- Keep changes aligned to repository rules and operating principles

### XP

Use XP as the delivery discipline.

- Small batches
- Tight feedback loops
- Test first where practical
- Continuous refactoring
- Frequent integration
- Human review on boundary decisions

### SDD

Use SDD as the lifecycle backbone.

- Define intent before implementation
- Separate requirements, design, and execution
- Keep specs executable and updateable
- Preserve traceability from product need to shipped behavior

### Spec-Kit

Use Spec-Kit primarily for greenfield or major new feature flows.

- Constitution/principles
- Feature specification
- Technical plan
- Task generation
- Implementation execution

### OpenSpec

Use OpenSpec-style artifacts for iterative and brownfield evolution.

- Requirements
- Design
- Implementation tasks

This is useful when a feature already exists and the team needs a change proposal that remains easy to review asynchronously.

### Superpowers

Use Superpowers-style working habits to enforce execution quality.

- Brainstorm before coding when problem framing is still weak
- Write explicit plans before large changes
- Execute in batches with verification between batches
- Prefer TDD, debugging discipline, and evidence-based completion

## 3. Lifecycle

### Phase 0. Intake

Entry artifact: `feature brief`

Owner:

- OpenClaw collects the request
- Human or Codex normalizes the request into a brief

Exit criteria:

- Problem, user, outcome, constraints, and urgency are explicit
- Request is small enough for one delivery slice

### Phase 1. Principles Check

Entry artifact: `feature brief`

Owner:

- Codex checks the brief against the project constitution

Exit criteria:

- The work does not violate core product or engineering principles
- Conflicts are surfaced early

### Phase 2. Specification

Entry artifact: `feature brief`

Output artifact: `feature spec`

Recommended mode:

- Greenfield or large capability: Spec-Kit style
- Existing capability update: OpenSpec-style

Exit criteria:

- User scenarios are concrete
- Non-goals are explicit
- Acceptance criteria are testable
- Ambiguities are either resolved or tracked

### Phase 3. Technical Design

Entry artifact: `feature spec`

Output artifact: `implementation plan`

Owner:

- Codex drafts
- Human approves architecture and risk posture

Exit criteria:

- Architecture impact is understood
- Data, API, UI, and operational changes are named
- Test strategy is explicit
- Rollback path exists for risky changes

### Phase 4. Task Decomposition

Entry artifact: `implementation plan`

Output artifact: `task breakdown`

Rules:

- Tasks should be independently verifiable
- Each task should produce a meaningful checkpoint
- Prefer vertical slices over layered batching

Exit criteria:

- Each task has definition of done
- Dependencies are visible
- Verification method is attached to each task

### Phase 5. Execution

Entry artifact: `task breakdown`

Owner:

- Codex executes inside the repo
- Human steers scope and validates intent

XP rules:

- Red -> Green -> Refactor where feasible
- Keep diffs small
- Run checks continuously
- Do not mix unrelated changes

Exit criteria:

- Code, tests, and docs are updated together
- Every completed task has evidence

### Phase 6. Review and Verification

Artifacts:

- Test output
- Manual verification notes
- Risk summary

Rules:

- Review behavior, not only code style
- Confirm spec coverage, not just passing tests
- Record known gaps clearly

Exit criteria:

- Shippable quality is demonstrated
- Remaining risks are explicit and acceptable

### Phase 7. Release and Learn

Artifacts:

- Release note
- Retrospective
- Constitution or template updates if a pattern repeats

Exit criteria:

- Product learning is captured
- Process improvements feed back into the system

## 4. Artifact Map

- `specs/constitution.md`: non-negotiable product and engineering principles
- `specs/`: accepted feature specs and plans
- `templates/feature-brief.md`: intake normalization template
- `templates/feature-spec.md`: requirement template
- `templates/implementation-plan.md`: design and delivery plan template
- `templates/task-breakdown.md`: task decomposition template
- `templates/release-checklist.md`: release readiness and risk template
- `templates/iteration-retrospective.md`: learning loop template

## 5. Cadence Model

Use three nested loops:

- Strategy loop: choose product bets and update constitution-level priorities
- Delivery loop: spec -> plan -> tasks -> implement -> review
- Feedback loop: production signals, user feedback, defects, and retrospectives

Recommended default cadence:

- Weekly: prioritize and approve specs
- Daily: execute one or more verified vertical slices
- Per change: review evidence before merge or release

## 6. Working Agreement

Use this decision rule:

- If the problem is unclear, brainstorm
- If the intent is clear but design is unclear, write a plan
- If the plan is clear, execute in small batches
- If the change touches user-visible behavior, update the spec first
- If the change reveals a recurring rule, update the constitution or templates

## 7. Recommended Command Mapping

Spec-Kit command flow:

- `/speckit.constitution`
- `/speckit.specify`
- `/speckit.plan`
- `/speckit.tasks`
- `/speckit.implement`

Superpowers command flow:

- `/superpowers:brainstorm`
- `/superpowers:write-plan`
- `/superpowers:execute-plan`

Practical mapping:

- Use Spec-Kit to create the canonical artifacts
- Use Superpowers habits to improve how those artifacts are produced and executed
- Use OpenClaw to source requests and push them into this repo loop
- Use Codex to perform repo-aware implementation and verification

## 8. First Adoption Path

Week 1:

- Finalize constitution
- Choose one pilot feature
- Write one full spec, one plan, and one task breakdown
- Execute the feature end to end

Week 2:

- Refine templates based on friction
- Define release checklist
- Add defect intake and change request handling

Week 3:

- Add automation where repeatability is already proven
- Do not automate unstable decisions

## 9. Design Tension To Preserve

Do not let agent speed erase product thinking.

The point of this system is not "faster code generation". The point is:

- better problem framing
- smaller and safer delivery slices
- stronger traceability
- repeatable engineering judgment
