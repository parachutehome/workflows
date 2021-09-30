# workflows

## Test & Lint Workflow

```
name: Test & Lint
on: push

jobs:
  do:
    uses: parachutehome/workflows/.github/workflows/jest-test-and-lint.yml@trunk
    with:
      github-registry: '@org:registry'
```
