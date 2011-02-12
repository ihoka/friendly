require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "friendly"
  gem.summary = %Q{NoSQL with MySQL in Ruby}
  gem.description = %Q{}
  gem.email = "jamesgolick@gmail.com"
  gem.homepage = "http://friendlyorm.com"
  gem.authors = ["James Golick"]
  gem.add_development_dependency 'mysql',         '~> 2.8.1'
  gem.add_development_dependency 'activesupport', '~> 2.3.10'
  gem.add_development_dependency 'sequel',        '~> 3.16.0'
  gem.add_development_dependency 'rufus-json',    '~> 0.2.3'
  gem.add_development_dependency 'memcached',     '~> 0.20.1'
  gem.add_development_dependency 'will_paginate', '~> 2.3.15'
  gem.add_development_dependency 'yajl-ruby',     '~> 0.7.7'
  gem.add_development_dependency 'rspec',         '~> 1.3.1'
  gem.add_development_dependency 'jferris-mocha', '~> 0.9.8.20100526112143'
  gem.add_development_dependency 'jeweler',       '~> 1.5.2'
  gem.add_dependency "sequel", ">= 3.7.0"
  gem.add_dependency "activesupport", "~> 2.3.5"
  gem.add_dependency "will_paginate", "~> 2.3.0"
  gem.add_dependency "rufus-json", "=0.2.3"
  # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
  spec.rcov = true
  spec.rcov_opts = %w{-I spec:lib --exclude gems\/,spec\/}
end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "friendly #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc "Sync website."
task :website do
  `rsync -avz website/* friendlyorm.com:/var/www/friendlyorm.com`
end

