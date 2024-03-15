# I am a teapot

## What is this project?

There's two things I'm trying to do here:

* create a [quine app](https://en.wikipedia.org/wiki/Quine_(computing)), like [TiddlyWiki](https://tiddlywiki.com/) and [FeatherWiki](https://feather.wiki/)
* create an app to handle the quine app, like [TiddlyDesktop](https://github.com/TiddlyWiki/TiddlyDesktop)

Why I want to do this? Just to be able to customize my app exactly the way I want it to be.

## Usage

(Currently both the quine app and the desktop app doesn't compile)

## Installation

(Currently both the quine app and the desktop app doesn't compile)

## Dev mode

If you want to dev, here some key elements to have in mind:

* This repository use only two programming languages: [LiveScript](https://livescript.net/) and [Sass](https://sass-lang.com/) (Sass version, not Scss). You can totally fork or copy this project in different languages, like CoffeeScript or JavaScript, it's up to you, just that you have to read some LiveScript first (and some Sass).
* This repository uses a [slightly modified version](https://www.npmjs.com/package/@othelarian/livefile) of LiveScript that includes a `live` command, similar to the [CoffeeScript](https://coffeescript.org/)'s `cake` command.
* There's some code to run a desktop app to work with the quine app, using [nw.js](https://nwjs.io). Some tasks won't work if the NW sdk isn't installed (ti's just an archive you have to unzip somewhere).

Now that you know this, let's dive.

### The documentation

The ??

??

??
(earl-grey.md)
(darjeeling.md)

### The ``config.ls` file

For configuring the package there's two files: `config.default.ls` and `config.ls`. The first one is, well, the default configuration. The second, `config.ls`, isn't tracked by git, first to let you set up your own configuration, and also to avoid sharing information by mistake on a git repository.

You have to create `config.ls` to get the NW part of the app working (or to modify `config.default.ls`, but it's a bad idea).

In `config.ls` the code will look like this:

```LiveScript
export cfg =
  nw-sdk: '../path/to/nw.exe'
```

`nw-sdk` have to be the path, relative or not, pointing to the `nw.exe`.

Note: you don't have to write the config in LiveScript, you can also write it on JavaScript or CoffeeScript (the `.gitignore` will take care of the 3 possible extensions, .ls .coffee and .js).

### Package commands

As noted above, this packge use the `live` command to launch all its related tasks. You can use `npm run [task]` to launch it, the `package.json` already contained everything you need. If you install `@othelarian/livescript` globally you can directly use the `live [task]` command. There's some differences between `npm run` and `live`, but don't worry, if they differ both syntax are indicated.

Here the available tasks and what they do:

* __clean__

  delete the `dist` and `nw` directories

* __compile__

  compile the quine app, generating the `index.html` into the `dist` (and creating the directory if it doesn't exist).

* __dev__ (`npm run`) or __compile -w__ (`live`)

  same as __compile__ but also exexcute the __serve__ task and watch the quine app source file to automatically rebuild it.

* __gen_nw__

  ??

* __github__

  ??

* __help__ (`npm run`)

  Just output the `live -h`, which show the list of available tasks.

* __run-nw__

  ??

* __serve__

  ??