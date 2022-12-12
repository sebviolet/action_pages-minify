# Minify Action
[![GitHub release](https://img.shields.io/github/release/DrA1ex/minify-action.svg?color=orange)](https://gitHub.com//minify-action/releases/)
[![MIT license](https://img.shields.io/github/license/anthonyftwang/minify-action.svg?color=blue)](https://github.com/anthonyftwang/minify-action/blob/master/LICENSE)

This is an **updated** version of original [repository](https://github.com/anthonyftwang/minify-action).

Github Action to minify js, css, and html files pushed to a branch, using the [Minify](https://github.com/coderaiser/minify) package.

### Versions
- Node.js v18.12.1
- Minify v9.1.0

### Usage
1. Optinal: create [.minify.json](https://github.com/coderaiser/minify#options) in root folder
```json
{
    "html": {
        "removeAttributeQuotes": false
    },
    "css": {
        "compatibility": "*"
    },
    "js": {
        "ecma": 2020,
        "module": true
    }
}
```

2. Add `minify` step right after checkout in default [GitHub Pages build](https://docs.github.com/ru/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#creating-a-custom-github-actions-workflow-to-publish-your-site) action
```yaml
# ...

jobs:
  # Build job
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Minify Action
        uses: dra1ex/minify-action@v1.0.3
# ...
```
