#!/bin/bash
set -ev
# Run ruby unit TestCase
bundle exec rake

# Push to dummy application
git push heroku master

# Run selenium tests
nosetests --nocapture selenium/dummy_test.py
