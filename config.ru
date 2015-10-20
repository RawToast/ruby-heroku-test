# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

require "rack"

# authentication
use Rack::Auth::Basic, "Hello, World" do |username, password|
  'secret' == password
end