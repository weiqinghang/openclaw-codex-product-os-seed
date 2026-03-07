# Seed Project Guide

## What this repository is

This repository is suitable as a Git seed project for teams that want every new product or codebase to start with the same development operating system.

## Recommended downstream usage

1. Create a new repository from this seed
2. Adjust `specs/constitution.cn.md` and `specs/constitution.en.md` for the domain
3. Keep the workflow docs and add project-specific build, test, and release automation
4. Feed broadly useful improvements back into this seed

## Suggested repository conventions

- `specs/features/<feature-slug>/brief.md`
- `specs/features/<feature-slug>/spec.md`
- `specs/features/<feature-slug>/plan.md`
- `specs/features/<feature-slug>/tasks.md`
- `specs/releases/<release-slug>.md`

## Executable today

- shared constitution
- standard artifact flow from intake to retrospective
- feature workspace scaffolding
- GitHub Actions structural validation

## Not automated yet

- seed-to-downstream sync
- OpenClaw-specific command integrations
- deeper CI content enforcement
