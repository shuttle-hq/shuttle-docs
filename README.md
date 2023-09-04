# Shuttle Docs

## Contributing

If you found an error in our docs, or you simply want to make them better, contributions are always appreciated!

Our docs are powered by [mintlify](https://mintlify.com/). To run them for local development:

Install [their cli](https://www.npmjs.com/package/mintlify):

*NOTE: This requires Node v19*

```bash
npm i -g yarn
npm i -g mintlify
```

And from the root of the repository, run:

```bash
mintlify dev
```

## Contribution docs

Changes to `community/contribute.mdx` should be made in the [main repo](https://github.com/shuttle-hq/shuttle/blob/main/CONTRIBUTING.md),
since they will be automatically implemented here by the `.github/workflows/replicate.yml` workflow.
