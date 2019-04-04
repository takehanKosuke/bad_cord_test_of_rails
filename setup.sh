#!/bin/bash
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:migrate:reset
bundle exec rake db:seed
rails s
