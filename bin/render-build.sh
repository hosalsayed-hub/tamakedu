#!/usr/bin/env bash
# exit on error
bundle install
bundle exec rails db:drop 
bundle exec rails db:create 
bundle exec rails db:migrate
bundle exec rails db:seed