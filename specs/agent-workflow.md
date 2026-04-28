# Agent Workflow Spec

AI agents should use this loop:

```text
1. Read AGENTS.md.
2. Read task.md and config.md.
3. Read relevant specs.
4. If the requested feature has no spec, add or update a spec first.
5. Implement within the allowed scope.
6. Add or update examples when public APIs change.
7. Run compile or smoke-test commands.
8. Report changed files and verification results.
```

## Agent Defaults

- Prefer minimal, reviewable changes.
- Preserve current working examples.
- Use public imports in examples.
- Do not infer architecture from examples alone.
- Do not rewrite low-level style internals unless the task asks for it.

## Required Final Report

Agents should report:

```text
changed files
what changed
verification command and result
known gaps
```

