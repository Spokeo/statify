# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statify/version'

Gem::Specification.new do |gem|
  gem.name          = "statify"
  gem.version       = Statify::VERSION
  gem.authors       = ["Austin Fonacier"]
  gem.email         = ["austin@spokeo.com"]
  gem.description   = "Pop this gem in your rails >= 3 application.  This gem will utilize statsd and easily track basic performance stats for your application."
  gem.summary       = "Pop this gem in your rails >= 3 application.  This gem will utilize statsd and easily track basic performance stats for your application."
  gem.homepage      = "https://github.com/spokeo/statify"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'sqlite3'
  gem.add_development_dependency 'rails'
  gem.add_development_dependency 'statsd'

  gem.add_dependency 'statsd', '~> 0.5.4'
  gem.add_dependency 'statsd-ruby', '~> 1.2.0'
end
