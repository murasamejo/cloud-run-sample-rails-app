require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module CloudRunSampleRailsApp
  class Application < Rails::Application
    config.load_defaults 7.0
    config.api_only = false
    config.time_zone = 'Tokyo'

    config.generators do |generator|
      generator.test_framework(
        :rspec,
        fixtures: true,
        controller_specs: true,
        helper_specs: false,
        routing_specs: false
      )

      generator.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
