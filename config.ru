# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

require "rack"

# authentication
use Rack::Auth::Basic, 'Enter super secret password' do |username, password|
  'secret' == password
end