# PROTOBOR

Protobor site pages

## Installation

We going to use **Jekyll** for site pages for various reasons.

Jekyll is written on ruby and you should be prepared for this.
To make it work on macOS, you’ll need to install ruby modules called «gems» using sudo,
or adjust ENV, or install some ruby version manager. If you’re not a ruby developer,
there is an easy way. Read about [some](https://github.com/rubygems/rubygems/issues/660)
[issues](https://stackoverflow.com/questions/24507983/how-to-set-ruby-executable-in-gemrc), if you want.

First of all, you’ll need to:

 * configure ruby to install gems into your home directory;
 * apply environment variable to avoid restarting terminal;
 * make sure ruby scripts from gems are executable after installation;

``` sh
echo "export GEM_HOME=~/.gem" >>~/.profile
export GEM_HOME=~/.gem
echo "gem: --bindir /usr/local/bin" >>~/.gemrc
```

Then install `bundler`, software which allow you to install Jekyll dependencies.

``` sh
gem install bundle
```

After bundler installed, you should configure it and launch to install Jekyll deps.
I prefer to install all dependencies into `.bundle` subdirectory of your project.
Bundler save project configuration into the same directory.

** macOS 10.12 Sierra note: **

Seems like latest version of nokogiri gem is not compatible with ruby 2.0,
so you'll need to add `gem "nokogiri", "1.6.8.1"` to your `Gemfile`

``` sh
bundle config --local path .bundle
bundle config --local build.nokogiri --use-system-libraries
bundle install --path vendor/bundle
```

If installation finished without errors you probably can launch Jekyll now:

``` sh
bundle exec jekyll s
```

One extra step allows you to have autoreload when site generated.
You'll need to add hawkins plugin to your Gemfile:

```
group :jekyll_plugins do
  gem 'hawkins'
end
```

Now, the command `liveserve` can be used to have both watching and livereload.

``` sh
bundle exec jekyll liveserve
```

## Third party

### Theme

A Jekyll version of the "Forty" theme by [HTML5 UP](https://html5up.net/).

![Forty Theme](assets/images/forty.jpg "Forty Theme")

Repository [Jekyll logo](https://github.com/jekyll/brand) icon licensed under a [Creative Commons Attribution 4.0 International License](http://choosealicense.com/licenses/cc-by-4.0/).
