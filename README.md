# Statify

[![Build Status](https://travis-ci.org/Spokeo/statify.png?branch=master)](https://travis-ci.org/Spokeo/statify)

Pop this gem in your rails >= 3 application.  Simply give this gem the location of your statsd instance and it can seamlessly track the following:

- Performance stats broken down by controller and action and further broken down by view, database, and overall runtimes
- Overall SQL calls durations
- Ruby garbage collection stats (this will run after every controller response cycle)
- Cache hit and miss rates

## Installation

Add this line to your application's Gemfile:

    gem 'statify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install statify

## Pre-Requisities

You will need to have a statsd instance running somewhere that you can connect to.  If you want to graph what is coming out of statsd there are different front ends to use with statsd.  One of them is Graphite: http://graphite.wikidot.com/

This gem is only tested on ruby-1.9.3.  YMMV on any ruby version prior to ruby-1.9.3.

## Usage

In your Rails App put these following lines in your config/application.rb:

    config.statify.categories = [:sql, :garbage_collection, :cache, :controller]
    config.statify.statsd = Statsd.new('127.0.0.1', 8125)

Obviously put in the address of your own statsD ip address and port into the statsd.new call.  The categories are opt-in, so put in what you want to use.

Special note on garbage collection: It will not collect stats for ruby-1.8.7


### Supported categories

- garbage_collection 
- controller
- cache
- sql 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
