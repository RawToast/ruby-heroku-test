#!/bin/bash
set -ev
# Run ruby unit TestCase
bundle exec rake

# Push to dummy application
git remote add heroku git@heroku.com:rocky-scrubland-staging.git
git push heroku master -q

# Run selenium tests
nosetests --nocapture selenium/dummy_test.py
