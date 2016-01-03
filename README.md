# scheduler
Scheduling solution for a content-heavy conference, built on Rails

## Status badges

[![Stories in Ready](https://badge.waffle.io/nineworldsgeekfest/scheduler.png?label=ready&title=Ready)](http://waffle.io/nineworldsgeekfest/scheduler)

[![Build Status](https://travis-ci.org/nineworldsgeekfest/scheduler.svg?branch=master)](https://travis-ci.org/nineworldsgeekfest/scheduler)

## Build notes

* There is a setup script at bin/setup.
* Rails 4.2.5 is the current base install. Ruby version is defined in Gemfile as 2.2.1, with automatic RVM config in .ruby-gemset and .ruby-version.
* PostgreSQL is the database, and [requires setup on each development instance](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-14-04).
* Installing capybara-webkit requires [QT to be installed on the dev instance](https://github.com/thoughtbot/capybara-webkit). This can be achieved with `brew install qt` on OSX, or `sudo apt-get install qt5-default libqt5webkit5-dev` on Linux Mint. You will also need a JS driver of some description, so you may need to `sudo apt-get install nodejs` too. The approach to back and front end testing roughly follows [this advice from Thoughtbot](https://robots.thoughtbot.com/how-we-test-rails-applications).

## Style notes

Hound CI uses Rubocop with the [community Ruby style guide](https://github.com/bbatsov/ruby-style-guide) and so do we. All pull requests will return in-line comments on style violations, and Rubocop is included in the Gemfile under dev and can be used to find and fix style issues on your local dev environment.
