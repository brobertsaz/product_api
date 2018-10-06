require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'

Bundler.require(*Rails.groups)

Mongoid.load! './config/mongoid.yml'

module ProjectsTest
  class Application < Rails::Application
    config.load_defaults 5.1

    # Access-Control-Allow-Origin
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'localhost:1337'
        resource '*', headers: :any, methods: :any
      end
    end
    config.api_only = true
  end
end
