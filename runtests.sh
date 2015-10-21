#!/bin/bash
set -ev
# Run ruby unit TestCase
bundle exec rake
# Run selenium tests
nosetests --nocapture selenium/dummy_test.py
