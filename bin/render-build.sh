#!/usr/bin/env bash
# exit on error
bundle install
config.eager_load = true
bundle exec rails db:migrate --trace
 