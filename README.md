# workflows

## Test & Lint Workflow

```
name: Test & Lint
on: push

jobs:
  do:
    uses: parachutehome/workflows/.github/workflows/jest-test-and-lint.yml@v1
    secrets:
      github_npm_token: ${{ secrets.GH_NPM_TOKEN }}
```

## Tag Release

```
name: Tag Release
on:
  push:
    branches: [main]

jobs:
  do:
    uses: parachutehome/workflows/.github/workflows/tag-release.yml@v1
    secrets:
      github_npm_token: ${{ secrets.GH_NPM_TOKEN }}
      github_repo_token: ${{ secrets.GH_REPO_TOKEN }}
```
