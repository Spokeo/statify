# Statify

Pop this gem in your rails >= 3 application.  This gem will utilize a statsd instance and easily track basic performance stats for your application.  This gem can track the following:

- Performance stats broken down by controller and action and further broken down by view rendering times and SQL duration times.
- SQL calls durations
- Ruby garbage collection stats
- Cache hit and miss rates

## Installation

Add this line to your application's Gemfile:

    gem 'statify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install statify

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
