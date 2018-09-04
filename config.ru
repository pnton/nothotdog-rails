# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
=begin
require 'rack/cors'
use Rack::Cors do
  allow do
    origins 'nothotdog-rails.herokuapp.com'
    resource '*', 
        :headers => :any, 
        :methods => [:get, :post, :delete, :put, :options, :patch]
  end
end
=end