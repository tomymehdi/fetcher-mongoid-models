# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fetcher/mongoid/models/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Olivier Ducroux","Tomas Mehdi"]
  gem.email         = ["oli@gmail.com", "tomymehdi@gmail.com"]
  gem.description   = %q{Fetcher Mongoid Models}
  gem.summary       = %q{Fetcher Mongoid Models}
  gem.homepage      = "http://github.com/Fetcher/fetcher-mongoid-models"

  gem.add_dependency 'mongoid'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fetcher-mongoid-models"
  gem.require_paths = ["lib"]
  gem.version       = Fetcher::Mongoid::Models::VERSION
end