#!/usr/bin/env bash
# exit on error
bundle install
bundle exec rails db:drop   --trace
bundle exec rails db:create --trace
bundle exec rails db:migrate --trace
bundle exec rails db:seed  --trace
 