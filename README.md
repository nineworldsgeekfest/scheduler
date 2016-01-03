# scheduler
Scheduling solution for a content-heavy conference, built on Rails

## Status badges

[![Stories in Ready](https://badge.waffle.io/nineworldsgeekfest/scheduler.png?label=ready&title=Ready)](http://waffle.io/nineworldsgeekfest/scheduler)

[![Build Status](https://travis-ci.org/nineworldsgeekfest/scheduler.svg?branch=master)](https://travis-ci.org/nineworldsgeekfest/scheduler)

## How to get started developing on this project

* Rails 4.2.5 is the current base install. Ruby version is defined in Gemfile as 2.2.1, with automatic RVM config in .ruby-gemset and .ruby-version.
* To get started, you should [obtain RVM](https://rvm.io/), and execute `rvm install 2.2.1; rvm use 2.2.1; rvm gemset create scheduler`
* PostgreSQL is the database, and [requires setup on each development instance](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-14-04). `development` and `test` environmnts currently make the following assumptions:
  * The database is located on `localhost` and is accessible via UNIX socket
  * The PostgreSQL user matching your username can be authenticated as the current user via a passwordless authentication mechanism. You may need to edit your `pg_hba.conf` to achieve this - setting your user to `peer` authentication via UNIX sockets is a working method.
  * The PostgreSQL user has the `CREATEDB` privilege (as `postgres` execute `ALTER USER {username} CREATEDB`)
  * Heroku users should be fine, as long as the `DATABASE_URL` is set in the environment. Likewise, if you wish to override these settings, you can also craft a `DATABASE_URL` environment variable to do so.
* `capybara-webkit` is required by this project and will be installed automatically into your gemset by `bundler`.
  * It depends upon [Qt being installed](https://github.com/thoughtbot/capybara-webkit), and preferably Qt5. This can be achieved with `brew install qt` on OSX, or `sudo apt-get install qt5-default libqt5webkit5-dev` on Linux Mint. 
  * It also depends upon a JS driver of some description, so you may need to `sudo apt-get install nodejs` too, if you don't already have one installed.
  * The approach to back and front end testing roughly follows [this advice from Thoughtbot](https://robots.thoughtbot.com/how-we-test-rails-applications).
* Once these pre-requisites have been satisfied, you should be able to run the setup script at bin/setup.

## Style notes

* Hound CI uses Rubocop with the [community Ruby style guide](https://github.com/bbatsov/ruby-style-guide) and so do we. All pull requests will return in-line comments on style violations. 
* Rubocop is included in the Gemfile under dev and can be used to find and fix style issues on your local dev environment.
