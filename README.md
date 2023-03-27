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

## Verify Unimported Files

Add a `npm run unimported` script to your `package.json` that executes [unimported](https://www.npmjs.com/package/unimported).

```
name: Unimported
on:
    pull_request:
        branches: [main]
        paths-ignore:
            - '.github'

jobs:
    do:
        uses: parachutehome/workflows/.github/workflows/unimported.yml@v1
        secrets:
            github_npm_token: ${{ secrets.GH_ACTIONS_PAT }}
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
