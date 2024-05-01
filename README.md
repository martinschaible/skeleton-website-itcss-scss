# Skeleton for developing websites
A clean skeleton for developing websites

## Features

* A finely-tuned theme or template.
* Build with **Bootstrap 5.3.3**, **Bootstrap Icons 1.11.3** or **Font Awesome 6.5.2**.
* We use **SASS**.
* Very small footprint of the compiled css and js files. 
* Fully modular. Easy to maintain by using **ITCSS**
* Optional **BEM Methodology**

## Preparation of the development environment

A development environment is needed for:
* Compiling the SCSS and Javascript sources
* Minifying the CSS and Javascript files
* Optimizing

## Creating the directory structure of the project
For your convenience, i created the batch file `create-folders.cmd` which creates the directory structure.
Run the batch in **the root folder of your project**.
This is the directory structure of the project:

```
|- build
│- dist
|    |- assets
|    |    |- css
|    |    |- fonts
|    |    |- images
|    |    |    |- favicon
|    |    |- js
|- node_modules
|- src
     |- build
     |- js
     |- scss
     |    |- components
     |    |- elements
     |    |- generic
     |    |- objects
     |    |- settings
     |    |- tools
     |    |- utilities
     |- vendor
          |- bootstrap
          |   |- build
          |   |- js
          |   |- scss
          |        |- forms
          |        |- helpers
          |        |- mixins
          |        |- tests
          |        |- utilities
          |        |- vendor
          |- bootstrap.icons
          |- fontawesome
```

### Installation Node.js
A bunch of software needs to be installed on your PC.

* Get Node.js from [Here](https://nodejs.org/en/).
* Choose the latest **LTS** version (Version 20.12.2 in may 2024).
* Store the downloaded file to a temporary location.
* Run the installer of Node.js. Accept the default settings and click to OK as many as they ask for.
* Open a command prompt (That's cmd.exe) and type **path**.
* Be sure, that Node.js has a path to it's binaries, eg. `C:\Program Files\nodejs`.

Node.js installed **npm**, which is a package manager. **npm** allows us to download and install additional modules which we need.

### Check the version of Node.js and npm

* Open a command prompt
* Get the version of Node.js by typing **node --version**.
* Get the version of npm by typing **npm -v**.

### List of the packages

A list which packages are needed. This is stored in the package file `package.json`. This file is located in the **root directory of your project**:  

```json
  "devDependencies": {
    "autoprefixer": "^10.4.19",
    "clean-css-cli": "^5.6.3",
    "nodemon": "^3.1.0",
    "npm-run-all2": "^6.1.2",
    "postcss": "^8.4.38",
    "postcss-cli": "^11.0.0",
    "purgecss": "^6.0.0",
    "rollup": "^4.17.0",
    "sass": "^1.75.0",
    "stylelint": "^16.4.0",
    "stylelint-config-twbs-bootstrap": "^14.1.0",
    "terser": "^5.30.4",
    "@popperjs/core": "^2.11.8",
    "@rollup/plugin-babel": "^6.0.4",
    "@rollup/plugin-commonjs": "^25.0.7",
    "@rollup/plugin-node-resolve": "^15.2.3",
    "@rollup/plugin-replace": "^5.0.5",
  }
```

Details of the packages can be found here:

* **[autoprefixer](https://www.npmjs.com/package/autoprefixer)** - Parses CSS and adds vendor prefixes to CSS rules using values from [Can I Use website](https://caniuse.com/). 
* **[clean-css-cli](https://www.npmjs.com/package/clean-css-cli)** - A command-line interface to clean-css - fast and efficient CSS optimizer
* **[nodemon](https://www.npmjs.com/package/nodemon)** - Restarts automatically the node application when file changes in the directory are detected.
* **[npm-run-all2](https://www.npmjs.com/package/npm-run-all2)** - A CLI tool to run multiple npm-scripts in parallel or sequential.
* **[postcss](https://www.npmjs.com/package/postcss)** - Transforms styles with JS plugins. These plugins can lint your CSS, support variables and mixins, transpile future CSS syntax, inline images, and more.
* **[postcss-cli](https://www.npmjs.com/package/postcss-cli)** - 
* **[purgecss](https://www.npmjs.com/package/purgecss)** - It removes unused selectors from your css, resulting in smaller css files.
* **[rollup](https://www.npmjs.com/package/rollup)** - Rollup is a module bundler for JavaScript which compiles small pieces of code into something larger and more complex.
* **[sass](https://www.npmjs.com/package/sass)** - Distribution of **Dart Sass**, compiled to pure JavaScript with no native code or external dependencies.
* **[stylelint](https://www.npmjs.com/package/stylelint)** - Modern linter that helps you avoid errors and enforce conventions in your styles.
* **[stylelint-config-twbs-bootstrap](https://www.npmjs.com/package/stylelint-config-twbs-bootstrap)** - Default stylelint configuration used by Bootstrap.
* **[terser](https://www.npmjs.com/package/terser)** - A JavaScript mangler/compressor toolkit.
* **[@popperjs/core](https://www.npmjs.com/package/@popperjs/core)** - Tooltip & Popover Positioning Engine.
* **[@rollup/plugin-babel](https://www.npmjs.com/package/@rollup/plugin-babel)** - A Rollup plugin for seamless integration between Rollup and Babel.
* **[@rollup/plugin-commonjs](https://www.npmjs.com/package/@rollup/plugin-commonjs)** - A Rollup plugin to convert CommonJS modules to ES6, so they can be included in a Rollup bundle.
* **[@rollup/plugin-node-resolve](https://www.npmjs.com/package/@rollup/plugin-node-resolve)** - A Rollup plugin which locates modules using the Node resolution algorithm.
* **[@rollup/plugin-replac](https://www.npmjs.com/package/@rollup/plugin-replace)** - A Rollup plugin which replaces targeted strings in files while bundling.

### Installation of the packages
Our environment is almost ready to use. Finally the packages needs to be installed.
Let's do this by opening a _Command Prompt_.
It is important, that the following command **must be executed from the location** where the file `package.json` is stored. Again, this is the **root folder of your project**.

**npm** is our package manager. The installation starts with this command:

```
npm install
```

The folder `node_modules` will be created and about 41 MB of stuff will be downloaded and stored.
This installation can be repeated anytime by deleting the folder `node_modules` and running the installation again.


## Installation of Bootstrap

Get the zip file from [Download - Bootstrap](https://getbootstrap.com/docs/5.3/getting-started/download/). We need the *Source files*.
This is the content of the zip file:

```
│- bootstrap-5.3.3
     |- build
     |- dist
     |-- js
     |    |- dist
     |    |- src
     |    |- tests
     |- nuget
     |- scss
     |    |- forms
     |    |- helpers
     |    |- mixins
     |    |- tests
     |    |- utilities
     |    |- vendor
     |- site
```

**Golden rule: We never change the content any files in the folder  `src\vendor` and subfolders**

* Browse to the root folder of your project.
* Open the zip file and extract the content of the folder `bootstrap-5.3.3\scss` including subfolders to the folder `src\vendor\bootstrap\scss`.
* Unzip the subfolders of the folder `bootstrap-5.3.3\js\src` to the folder `src\vendor\bootstrap\js`.
* Unzip the file `bootstrap-5.3.3\js\index.umd.js` to the folder `src\vendor\bootstrap\js`
* Unzip the file `bootstrap-5.3.3\build\banner.mjs` to the folder `src\vendor\bootstrap\build`
* Unzip the file `bootstrap-5.3.3\build\postcss.config.mjs` to the folder `src\vendor\bootstrap\build`
* Unzip the file `bootstrap-5.3.3\build\rollup.config.mjs` to the folder `src\vendor\bootstrap\build`

Next: We copy some files as our editable **working copies**:
* The file `src\vendor\bootstrap\js\index.umd.js` should be copied to the folder `src\js`
* The three files of the folder `src\vendor\bootstrap\build` should be copyied to the folder `src\build`

The file `src\build\index.umd.js` contains a list of JS files for the components of Bootstrap.

To avoid a bloated JavaScript file, not used scripts for certain components can be disabled. To make this possible a component can be remarked the file `src\build\index.umd.js`. 

* We need to change the path to those JS files: `./src/` needs to be changed to `../vendor/bootstrap/js`.

The file `src\build\banner.mjs` creates a banner which will be placed at the top of the generated js file.

* The path to the package file needs to be changed: `../package.json` goes to `../../package.json`.

The file `src\build\rollup.config.mjs` contains the path to the banner file which needs to be changed: `../dist` goes to `../../dist`. If you don't want the banner, remark the line `banner: banner(),`. 

## Installation of Bootstrap icons

Get the zip file from [Github - twbs/icons](https://github.com/twbs/icons/).
This is the content of the zip file:

```
│- icons-main
     |- build
     |- docs
     |- font
     |    |- fonts
     |- icons
```

We have different choices to use these fonts:

### Use the font files
* Open the zip file and extract the two files of the folder `icons-main\font\fonts` to the folder `dist\assets\fonts`
* Extract the file `icons-main\font\bootstrap-icons.scss` to the folder `src\vendor\bootstrap.icons`
* Unzip the content of the folder `icons-main` to the folder `src\vendor\bootstrap.icons`.

__-- More instructions will follow soon. --__

### Installation of Font Awesome

Get the zip file from [Font Awesome](https://fontawesome.com/download/). We use the Version *Free For Web*.
This is the content of the zip file:

```
│- fontawesome-free-6.5.2-web
     |- css
     |- js
     |- less
     |- metadata
     |- scss
     |- sprites
     |- svgs
     |- webfonts
```

### Use the font files
* Open the zip file and extract the files of the folder `icons-main\font\fonts` to the folder `dist\assets\fonts`

__-- More instructions will follow soon. --__

## Getting Started with compiling
Note: I don't use *Gulp* nor *Grunt*. I prefer the fast and direct way for the compiling process using *npm* only. This is the same way as Bootstrap goes and an easy way to get the configuration from there. 

Without changing anything, we could compile a valid and working css file right now.

To do this, we will use these scripts defined in the file `package.json`:

```json
"scripts": {
    "css-compile": "sass --style expanded --no-source-map --no-error-css src/scss/main.scss dist/assets/css/main.css",
    "css-prefix": "postcss --config src/vendor/bootstrap/build/postcss.config.mjs --replace \"dist/assets/css/main.css\"",
    "css-purge": "purgecss --css dist/assets/css/main.css --content dist/*.html --output dist/assets/css/",
    "css-minify": "cleancss -O1 --format breakWith=lf --with-rebase --output dist/assets/css/main.min.css dist/assets/css/main.css",
    "css-lint": "stylelint \"**/*.{css,scss}\" --cache --cache-location .cache/.stylelintcache",
    "js-compile-bundle": "rollup --environment BUNDLE:true --config src/build/rollup.config.mjs",
    "js-minify-bundle": "terser --compress passes=2 --mangle --comments \"/^!/\" --output dist/assets/js/bootstrap.bundle.min.js dist/assets/js/bootstrap.bundle.js",
    "make-dev": "npm-run-all css-compile css-prefix",
    "make-dist": "npm-run-all css-compile css-prefix css-minify",
    "watch-css": "nodemon --delay 5 --watch src/scss/ --ext scss --exec \"npm-run-all css-compile css-prefix\""
  }
```

The default configuration does not support *source maps* for CSS and for JavaScript. If you want source maps, then replace the affected lines with this:

```json
"scripts": {
    "css-compile": "sass --style expanded --source-map --no-error-css src/scss/main.scss dist/assets/css/main.css",
    "css-minify": "cleancss -O1 --format breakWith=lf --with-rebase --source-map --source-map-inline-sources --output dist/assets/css/main.min.css dist/assets/css/main.css",
    "js-compile-bundle": "rollup --environment BUNDLE:true --config src/build/rollup.config.mjs --sourcemap",
    "js-minify-bundle": "terser --compress passes=2 --mangle --comments \"/^!/\"  --source-map \"content=dist/js/bootstrap.bundle.js.map,includeSources,url=bootstrap.bundle.min.js.map\" --output dist/assets/js/bootstrap.bundle.min.js dist/assets/js/bootstrap.bundle.js",
  }
```

### The job collections for SCSS/CSS:

* **make-dev** - Compiles the SCSS files for **development** usage: No minifying and no other tuning will happen.
* **make-dist** - Compiles the SCSS files for **production** usage including minifying and tuning.
* **watch-css** - Watches for changes and compiles the sources for **development** usage.

### The jobs for SCSS/CSS: 

* **css-compile** - Compiles the source SCSS files to the file `dist/assets/css/main.css`.
* **css-prefix** - Runs postcss
* **css-purge** - Removes all unused css. Use this with care!
* **css-minify** - Minifies the file `dist/assets/css/main.css` to `dist/assets/css/main.min.css`.
* **css-lint** - Lints all source files in the folder `src/scss` and target files in the folder `dist/assets/css`.

### The jobs for JavaScripts: 

We need **popper**, a *tooltip and popover positioning engine*.
This is a 3rd party software. We compile a **bundle**. This means, that popper will be bundled with the JavaScript files from Bootstrap.

* **js-compile-bundle** - Compiles the source JS files to the file `dist/assets/js/bootstrap.bundle.js`.
* **js-minify-bundle** - Minifies the file `dist/assets/js/bootstrap.bundle.js` to `dist/assets/js/bootstrap.bundle.min.js`.

Open a _Command Prompt_ from the base folder and run a script:

```
npm run css-compile
```

This is the usual running sequence of the jobs: 

> **css-compile > css-prefix > css-minify > css-purge**

or 

> **css-compile > css-prefix > css-purge>**

## Links

Node.js:
* [Node.js's Website](https://nodejs.org/en/)  
* [npm's Website](https://www.npmjs.com/)  

Bootstrap:
* [Bootstrap 5.3 Documentation](https://getbootstrap.com/docs/5.3/getting-started/introduction/)
* [Bootstrap Icons](https://icons.getbootstrap.com)

Font Awesome:
* [Font Awesome Free](https://fontawesome.com/start)

SASS/SCSS:
* [Sass Guidelines](http://sass-guidelin.es)
* [Sass Reference](http://www.sitepoint.com/sass-reference/)
* [Getting Started with Sass](http://www.sitepoint.com/getting-started-with-sass/)
* [SassDoc](http://sassdoc.com/)

ITCSS:
* [ITCSS: Scalable and Maintainable CSS Architecture](https://www.xfive.co/blog/itcss-scalable-maintainable-css-architecture/)
* [Manage large CSS projects with ITCSS](https://www.creativebloq.com/web-design/manage-large-css-projects-itcss-101517528/)

BEM Methodology:
* [Methodology BEM. Block, Element, Modifier](https://en.bem.info/method/)
* [BMindBEMding – getting your head ’round BEM syntax](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax//)
* [Introduction to the BEM Methodology](http://webdesign.tutsplus.com/articles/an-introduction-to-the-bem-methodology--cms-19403)
* [BEM Style Naming for Sass Color Variables](http://www.juliecameron.com/blog/2013/11/06/bem-naming-for-sass-color-variables-what1/)

I have used some patterns and photos from here:
* Free background patterns: [Subtle Pattern](http://subtlepatterns.com) and [DinPattern](http://www.dinpattern.com).
* Free photos: [Unsplash](https://unsplash.com/) and [Gratisography](http://www.gratisography.com).

Any filler text is from here:
* Fillerama: [Fillerama](http://fillerama.io/).


## License
The code is available under the [MIT license](LICENSE.txt).
