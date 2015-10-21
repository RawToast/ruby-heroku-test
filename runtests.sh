#!/bin/bash
set -ev
# Run ruby unit TestCase
bundle exec rake

# Push to dummy application
heroku git:remote -a rocky-scrubland-staging
heroku keys:add
git push heroku master

# Run selenium tests
nosetests --nocapture selenium/dummy_test.py
