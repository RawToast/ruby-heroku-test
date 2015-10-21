require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test 'the truth (articles)' do
    assert true
  end

# Travis will fail when running rake tests if this test is enabled.
# This would hault the build after rake tets, and prevent deployment or
# the selenium tests from running.
#  test 'the truth is a lie' do
#    assert false
#  end
end
