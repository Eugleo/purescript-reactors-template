# Reactor template for Purescript

A project template for using [grid-reactors](https://github.com/Eugleo/purescript-grid-reactors). For the time being, the best way to use reactors in Purescript is to donwload the package from its repo, because it has not yet been published in a package set. The file `packages.dhall` in this template takes care of this.

## How to use

Click **Use this template** above the list of files. GitHub will walk you through creating your own repository with same folder structure as this one.

## Troubleshooting

This project uses `npm` to manage `purs` and `spago`, instead of using the globally installed binaries. If you're using the Purescript extension in VS Code, be sure to set `Purescript: Add Npm Path` in the preferences to true. This way, the extension will be using the `npm`-managed packages as well.
