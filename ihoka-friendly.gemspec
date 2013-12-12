# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name = "ihoka-friendly"
  s.summary = %Q{NoSQL with MySQL in Ruby}
  s.description = %Q{}
  s.version = File.read(File.dirname(__FILE__) + '/VERSION')
  s.email = "istvan.hoka@gmail.com"
  s.homepage = "http://friendlyorm.com"
  s.authors = ["James Golick", "Istvan Hoka"]

  s.add_development_dependency 'mysql',         '~> 2.9.1'
  s.add_development_dependency 'activesupport', '~> 2.3.18'
  s.add_development_dependency 'memcached',     '~> 1.7.2'
  s.add_development_dependency 'will_paginate', '~> 2.3.15'
  s.add_development_dependency 'yajl-ruby',     '~> 0.7.7'
  s.add_development_dependency 'rspec',         '~> 1.3.1'
  s.add_development_dependency 'jferris-mocha', '~> 0.9.8.20100526112143'
  s.add_dependency "sequel", "~> 3.16.0"
  s.add_dependency "activesupport", "~> 2.3.18"
  s.add_dependency "will_paginate", "~> 2.3.15"
  s.add_dependency "rufus-json", "~> 0.2.3"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]
end
