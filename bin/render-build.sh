#!/usr/bin/env bash
# exit on error

bundle install
rails'config.i18n.fallbacks = [I18n.default_locale]'
bundle exec rails db:migrate --trace
 