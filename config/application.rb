require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"
  
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Complexity
  class Application < Rails::Application
    config.secret_key_base = 'secret'
  end
end

