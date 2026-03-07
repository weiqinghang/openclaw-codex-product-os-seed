# Seed Project Guide

## What this repository is

This repository is suitable as a Git seed project if you want every new product or codebase to start with the same delivery operating system.

Today it supports:

- A shared constitution
- A standard artifact flow from intake to retrospective
- A repeatable folder structure for feature work
- Lightweight bootstrap scripts for creating new feature workspaces

It does not yet provide:

- Automatic syncing from this seed into downstream repos
- Direct OpenClaw command integrations
- CI workflows that enforce the process

## Recommended downstream usage

For each new project:

1. Create a repository from this seed.
2. Update `specs/constitution.md` for the domain.
3. Keep the process docs unless the team has a better replacement.
4. Add project-specific build, test, and release automation.
5. Version improvements back into this seed when they are cross-project useful.

## Suggested repository conventions

Use this layout:

- `specs/features/<feature-slug>/brief.md`
- `specs/features/<feature-slug>/spec.md`
- `specs/features/<feature-slug>/plan.md`
- `specs/features/<feature-slug>/tasks.md`
- `specs/releases/<release-slug>.md`

Naming rules:

- Use lowercase kebab-case slugs
- One feature directory per delivery slice
- Do not overwrite old specs after release-critical decisions; append updates instead

## What makes the flow executable now

The flow is executable because each step has:

- an entry artifact
- an expected output
- an owner
- exit criteria

That is enough for consistent human and agent collaboration.

## What would make it fully automated later

Add these in later iterations:

- CI checks for required spec artifacts
- scripts that scaffold release notes and retrospective logs
- repo-local commands for OpenClaw intake and Codex execution
- sync tooling to propagate seed changes into downstream repos
