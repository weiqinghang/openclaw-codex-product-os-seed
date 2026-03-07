# Execution Playbook

## Goal

Turn the repository methodology into an operational routine that people can follow day to day.

## Standard Operating Path

### Step 1. Intake

Triggers:

- new feature idea
- user feedback
- bug fix
- workflow improvement request

Actions:

1. Open a GitHub issue
2. Use the `Feature Proposal` or `Bug Report` template
3. Decide whether the work deserves its own delivery slice

Exit condition:

- the problem, user, outcome, and constraints are clear enough to write `brief.md`

### Step 2. Create Feature Workspace

```bash
make new-feature SLUG=<feature-slug> LANG=en
```

Rules:

- `slug` must be lowercase kebab-case
- one directory should represent one delivery slice
- do not combine unrelated work in one artifact set

### Step 3. Write Brief

You must answer:

- what the request is
- who is affected
- what changes if it succeeds
- what the smallest slice is

### Step 4. Write Spec

You must answer:

- what the problem is
- what is in scope
- what is explicitly out of scope
- what the acceptance criteria are

Rules:

- include at least 3 testable `Acceptance Criteria`
- always include `Out of scope`

### Step 5. Write Plan

You must answer:

- which components are affected
- which approach is preferred
- how rollout works
- how rollback works
- how verification works

### Step 6. Write Tasks

Task rules:

- every task must be independently verifiable
- every task must include `Verification`
- prefer vertical slices over layer-based batches

### Step 7. Execute

Cadence:

1. change a small slice
2. run relevant checks
3. update artifacts
4. continue

### Step 8. Validate

Run at minimum:

```bash
make validate-specs
```

### Step 9. Open PR

The PR must link:

- Brief
- Spec
- Plan
- Tasks

### Step 10. Release and Learn

- fill the release checklist before release
- write a retrospective after release
- feed repeated friction back into the system

## Definition of Done

A feature is complete only when code, artifacts, validation evidence, risk notes, and release context are all in place.
