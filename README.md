# Reactor template for Purescript

A project template for using [grid-reactors](https://github.com/Eugleo/purescript-grid-reactors). For the time being, the best way to use reactors in Purescript is to donwload the package from its repo, because it has not yet been published in a package set. The file `packages.dhall` in this template takes care of this.

## How to use

1. Click **Use this template** above the list of files. GitHub will walk you through creating your own repository with same folder structure as this one.
2. Clone your new repository using `git clone`.
3. Move to the cloned repository with `cd`.
5. Run `npm install` to install the javascript dependencies, such as `spago` and `purescript`.
6. Run `npm run spago-build` to build the project and install the purescript dependencies. Anytime you want to build the project, use this command instead of `spago build`.
7. Finally, run `npm start` to start a server that will be serving your webpage. Update the code in `src/Main.purs`, and the webpage will change accordingly.
