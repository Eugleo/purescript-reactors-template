# Reactor template for Purescript

A project template for using [grid-reactors](https://github.com/Eugleo/purescript-grid-reactors). For the time being, the best way to use reactors in Purescript is to donwload the package from its repo, because it has not yet been published in a package set. The file `packages.dhall` in this template takes care of this.

## How to use

1. Sign-in to your GitHub account.
1. Click **Use this template** above the list of files. GitHub will walk you through creating your own repository with same folder structure as this one.
2. Clone your new repository using `git clone [repository url]`.
3. Move to the cloned repository with `cd [directory of the cloned repo]`.
4. Open the current folder in VS Code by running `code .`.
5. Run `npm install` to install the javascript dependencies, such as `spago` and `purescript`.
6. Run `npm run spago-build` to build the project and install the purescript dependencies. Anytime you want to build the project, use this command instead of `spago build`.
7. Finally, run `npm start` to start a server that will be serving your webpage. Update the code in `src/Main.purs`, and the webpage will change accordingly.

If you want to install additional spago packages, do so by running `npm run spago-install [package names]`.

### Changing the name of the project

Once you have a name for your project, make the updates in the following three places:

- Inbetween the `title` tags in `dev/index.html`. This will change the title of the webpage.
- The field `name` in `spago.dhall`.
- The field `name` in `package.json`.