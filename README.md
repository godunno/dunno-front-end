# Dunno App Front-End

Love Chips 'n Dips? This is **WAY** better! This is the front-end
repository for the hottest, prettiest, tastiest app ever made, Dunno
App! Wanna grab some delicious Slim 'n Sass? See how bellow!

Don't know what the hell I'm talking about? Check it out!

  * [Slim](http://slim-lang.com/)
  * [Sass](http://sass-lang.com/guide)

## Prepare your tools

You can't make a lasagna without a baking dish! Before diving your
fingers on those **HOT** Slim 'n Sass, you'll need to get the following
tools:

  * [Ruby](http://www.ruby-lang.org): Follow the instructions on the
    website.
  * [RubyGems](http://rubygems.org): Follow the instructions on the
    website.
  * [Bundler](http://bundler.io): Run `gem install bundler`

We strongly recommend you to use the RVM (Ruby Version Manager) though,
as it makes the installation process simpler and it isolates the
project's environment. The project's already configured to use it, if
present. Just install it and you're ready! Besides, it's
**super cool**, like a pantry and a food processor all mixed up!

  * [RVM](http://rvm.io/): Run `curl -sSL https://get.rvm.io | bash -s stable`

Is this your first time cooking? Get the ingredients and turn on the oven!

```bash
git clone git@github.com:godunno/dunno-front-end.git
cd dunno-front-end
bundle
```

After that, to download any changes made by your bros run:

```bash
git pull
```

Remember! You can't download anything while there's changes not yet
commited on your files. You don't want to make a mess on your kitchen,
do you?

## Cooking up

### Compiling

While you're working on your project, you'll need someone to watch your
back (and the recipes you make with Slim 'n Sass, then compile
them to boring HTML and CSS)! You need a watchman. You need a **guard**.
Run:

`guard`

Now you can start cooking *YOUR* recipe! Get your hands dirty! When
you're finished, just type `exit` on the terminal and hit
<kbd>Enter</kbd>.

### Taste your mix

To taste the glorious piece of food you've just gave birth to, open the
file `public/index.html` on the web browser and begin the feast!

If you're starting to love the smell of command line as much as I do,
you probably are there already and don't wanna open the file explorer.
Running `google-chrome public/index.html` will open a new tab with the
file on the active Google Chrome window! Don't you use Chrome? Any
browser works, even a hipster like Opera! Just spare a minute and search
for the correct command.

Also, do you know you can open new tabs on the terminal? On Ubuntu, just
hit <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>T</kbd>.

## Be organized

Don't get lost while working on those dishes, keep your table clean! You
should change only the files on the `src/` directory!

### Sass

  * `src/sass/*`: Sass files go in here
  * `src/sass/_settings.sass`: Foundation configuration settings go in here
  * `src/sass/app.sass`: Application styles go here

### Slim

  * `src/templates/*`: Slim files go in here

### Compiled files

**[WARNING]** These should **NOT** be altered in any circumstance. If
 you do, **YOU'LL CAUSE A CATASTROPHIC GLACIAL MELTDOWN AND DOOM US
ALL**. Also, a kitten will die. You've been warned.

These files are generated by processing the source Sass and Slim files.
Any changes will be overridden on the next compilation.

  * `public/*`: All compiled files go in here, the HTML on the root and
    the CSS on the `public/css` directory

## Share it with your bros

Wanna share your masterpiece with some buds and make them impressed?
CHECK. IT. OUT.

  * `git add some_tasty_chips` - Add the file's changes to the commit.
    PROTIP: wanna throw the whole thing in without a second thought?
    Just run `git add .`!
  * `git commit -m "Just added pepper, now it's AWESOME"` - Send a
    message to your bros! It's a **MUST**! Seriously, you cannot commit
    without a message, I've tried. Besides, you don't wanna be rude, DO
    YOU?
  * `git pull` - Before shoving your meal down the throats of your
    buddies, it would be nice to check if they've been preparing
    something for themselves.
  * `git push` - Put it on the fridge (a.k.a. Github) and just wait to
    see them faces!
