# Product R&D Operating System

## Goal

Build a complete delivery loop where ideas enter from OpenClaw, become executable specifications, flow into Codex for implementation, and are verified under XP discipline before release.

## Role Assignment

### OpenClaw

- Collect raw product intent
- Normalize ambiguous requests into structured briefs
- Route work into the repository as bounded change requests

### Codex

- Inspect the codebase and existing specs
- Refine briefs into repo-specific implementation work
- Make code changes, run checks, and produce reviewable output

### XP

- Small batches
- Tight feedback loops
- Test first
- Continuous refactoring

### SDD

- Define intent before implementation
- Separate requirements, design, and execution
- Preserve traceability from need to shipped behavior

## Lifecycle

1. `Feature Brief`
2. `Constitution Check`
3. `Feature Spec`
4. `Implementation Plan`
5. `Task Breakdown`
6. `Execution`
7. `Review and Verification`
8. `Release and Learn`

## Working Agreement

- Brainstorm when the problem is unclear
- Write a plan when design is unclear
- Update the spec before user-visible changes
- Feed repeated friction back into templates or constitution
