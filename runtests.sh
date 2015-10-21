#!/bin/bash
set -ev
# Run ruby unit TestCase
echo ##################
echo Running unit tests
echo ##################
bundle exec rake

# Push to dummy application
echo ##################
echo Pushing to STAGING
echo ##################
git remote add heroku git@heroku.com:rocky-scrubland-staging.git
git push heroku master

# Run selenium tests
echo ######################
echo Running selenium tests
echo ######################
nosetests --nocapture selenium/dummy_test.py
