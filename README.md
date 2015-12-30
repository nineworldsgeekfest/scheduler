# scheduler
Scheduling solution for a content-heavy conference, built on Rails

## Status badges

[![Stories in Ready](https://badge.waffle.io/nineworldsgeekfest/scheduler.png?label=ready&title=Ready)](http://waffle.io/nineworldsgeekfest/scheduler)

[![Build Status](https://travis-ci.org/nineworldsgeekfest/scheduler.svg?branch=master)](https://travis-ci.org/nineworldsgeekfest/scheduler)

## Build notes

* There is a setup script at bin/setup.
* Rails 4.2.5 is the current base install. Ruby version is defined in Gemfile as 2.2.1, with automatic RVM config in .ruby-gemset and .ruby-version.
* PostgreSQL is the database, and [requires setup on each development instance](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-14-04).
* Installing capybara-webkit requires QT to be installed on the dev instance. This can be achieved with `brew install qt` on OSX, or `sudo apt-get install qt5-default libqt5webkit5-dev` on Linux Mint.
