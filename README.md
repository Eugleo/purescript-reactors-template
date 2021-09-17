# Reactor template for Purescript

A project template for using [grid-reactors](https://github.com/Eugleo/purescript-grid-reactors). For the time being, the best way to use reactors in Purescript is to donwload the package from its repo, because it has not yet been published in a package set. The file `packages.dhall` in this template takes care of this.

## How to use

If you haven't already, install [nvm](https://github.com/nvm-sh/nvm), or [nvm-windows](https://github.com/coreybutler/nvm-windows). Then:

1. Sign-in to your GitHub account.
2. Click **Use this template** above the list of files. GitHub will walk you through creating your own repository with same folder structure as this one.
3. Clone your new repository using `git clone [repository url]`.
4. Move to the cloned repository with `cd [directory of the cloned repo]`.
5. Open the current folder in VS Code by running `code .`.

Now it's time to setup `npm` for our project. We'll use `nvm` to do that (the commands in the parentheses are for `nvm-windows`).

6. List the `14.x.x` versions of `node` by running `nvm ls-remote v14` (`nvm list available`).
2. Install the latest `14.x.x` version of `node` by running `nvm install [chosen version]`.  The template is tested with `v14.17.6`.
3. Make sure the active folder is the project folder. Activate the `node` version you just installed by running `nvm use [chosen version]`.
4. Verify that `node --version` now returns the version you activated.

Finally, we get to install purescript and other required dependencies.

10. Run `npm install` to install the javascript dependencies, such as `spago` and `purescript`.
6. Run `npm run spago-build` to build the project and install the purescript dependencies. Anytime you want to build the project, use this command instead of `spago build`.
7.  Finally, run `npm start` to start a server that will be serving your webpage. Update the code in `src/Main.purs`, and the webpage will change accordingly.

If you want to __install additional spago packages__, do so by running `npm run spago-install [package names]`.

### Changing the name of the project

Once you have a name for your project, make updates in the following three places:

- Inbetween the `title` tags in `dev/index.html`. This will change the title of the reactor webpage.
- The field `name` in `spago.dhall`.
- The field `name` in `package.json`.