require 'statify/version'
require 'statify/railtie'

# Statify.configure do |config|
#  config.statsd = StatD.new...
# end
# Statify.statsd = 
module Statify  
  def self.configure
    yield self
  end

  # This takes an instance of a StatsD
  # Statsd.new('127.1.1.1', 8125)
  def self.statsd=(statsd)
    @@statsd = statsd
  end

  def self.statsd
    @@statsd
  end

  def self.categories=(categories)
    @@categories = categories
  end

  def self.categories
    @@categories
  end
end