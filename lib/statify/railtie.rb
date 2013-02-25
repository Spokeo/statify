require 'rails'
module Statify
  class Railtie < Rails::Railtie
    # The config object available to the Railtie is the application configuration object.
    config.statify = ActiveSupport::OrderedOptions.new

    initializer "statify.configure" do |app|
      Statify.configure do |config|
        config.categories = app.config.statify[:categories]
        config.statsd = app.config.statify[:statsd]
      end
    end

    initializer "statify.initialize", :after => "statify.configure" do |app|
      Statify.subscribe
    end
  end
end