# Minify Action Reload
This is an **updated** version of this original [repository](https://github.com/actions-marketplace-validations/DrA1ex_pages-minify).

This action is in theory more "up to date".

The goal: Github Action to minify js, css, and html files pushed to a branch, using the [Minify](https://github.com/coderaiser/minify) package.

### Versions
- Node.js v23.x
- Minify [latest npm minify](https://www.npmjs.com/package/minify)

### Usage
1. Optional: create [.minify.json](https://github.com/coderaiser/minify#options) in root folder
```json
{
    "js": {
        "type": "putout",
        "putout": {
            "quote": "'",
            "mangle": true,
            "mangleClassNames": true,
            "removeUnusedVariables": true,
            "removeConsole": false,
            "removeUselessSpread": true
        }
    },
    "img": {
        "maxSize": 4096
    },
    "html": {
        "removeComments": true,
        "removeCommentsFromCDATA": true,
        "removeCDATASectionsFromCDATA": true,
        "collapseWhitespace": true,
        "collapseBooleanAttributes": true,
        "removeAttributeQuotes": true,
        "removeRedundantAttributes": true,
        "useShortDoctype": true,
        "removeEmptyAttributes": true,
        "removeEmptyElements": false,
        "removeOptionalTags": true,
        "removeScriptTypeAttributes": true,
        "removeStyleLinkTypeAttributes": true,
        "minifyJS": true,
        "minifyCSS": true
    },
    "css": {
        "compatibility": "*"
    }
}
```

2. Add `minify` step right after checkout in default [GitHub Pages build](https://docs.github.com/ru/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#creating-a-custom-github-actions-workflow-to-publish-your-site) action
```yaml
# ...

jobs:
  # Build job or deploy for github-pages
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Minify Action Reload
        uses: sebviolet/action_pages-minify@1.2.2
# ...
```
