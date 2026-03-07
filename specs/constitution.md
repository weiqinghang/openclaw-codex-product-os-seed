# Project Constitution

## Purpose

This constitution defines the default rules for product and engineering decisions in this repository.

## Product Principles

### 1. Outcome over output

Every feature must name the user problem, desired behavior change, and success signal.

### 2. Smallest valuable slice

Prefer the smallest release that creates real user value and preserves future options.

### 3. Explicit non-goals

Each spec must say what is intentionally excluded from the current slice.

## Engineering Principles

### 4. Spec before implementation

User-visible changes require a written spec before coding starts.

### 5. Tests are delivery evidence

Passing tests are not optional proof for behavior that can be verified automatically.

### 6. Refactor continuously

Leave the codebase clearer after each meaningful change.

### 7. Keep changes reviewable

Avoid large mixed-purpose diffs. Split work when behavior and refactoring are both substantial.

### 8. Prefer boring architecture

Choose the simplest design that satisfies the spec, unless complexity is justified by a clear constraint.

## Operating Principles

### 9. Plans must mention risk

Every implementation plan must name technical risk, rollout risk, and verification approach.

### 10. Completion requires evidence

A task is only complete when code, tests, and verification notes support the claim.

### 11. Learning updates the system

Repeated friction should update templates, not just conversations.

## Governance

- If a task conflicts with this constitution, the conflict must be stated explicitly before implementation.
- Temporary exceptions require a written reason in the related spec or plan.
- When this constitution changes, downstream templates should be updated in the same cycle.
