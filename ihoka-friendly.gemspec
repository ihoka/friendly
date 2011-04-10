# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ihoka-friendly}
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Golick"]
  s.date = %q{2011-04-10}
  s.description = %q{}
  s.email = %q{jamesgolick@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "CHANGELOG.md",
    "CONTRIBUTORS.md",
    "LICENSE",
    "README.md",
    "lib/friendly.rb",
    "lib/friendly/associations.rb",
    "lib/friendly/associations/association.rb",
    "lib/friendly/associations/set.rb",
    "lib/friendly/attribute.rb",
    "lib/friendly/boolean.rb",
    "lib/friendly/cache.rb",
    "lib/friendly/cache/by_id.rb",
    "lib/friendly/data_store.rb",
    "lib/friendly/document.rb",
    "lib/friendly/document/associations.rb",
    "lib/friendly/document/attributes.rb",
    "lib/friendly/document/convenience.rb",
    "lib/friendly/document/mixin.rb",
    "lib/friendly/document/scoping.rb",
    "lib/friendly/document/storage.rb",
    "lib/friendly/document_table.rb",
    "lib/friendly/index.rb",
    "lib/friendly/indexer.rb",
    "lib/friendly/memcached.rb",
    "lib/friendly/newrelic.rb",
    "lib/friendly/query.rb",
    "lib/friendly/scope.rb",
    "lib/friendly/scope_proxy.rb",
    "lib/friendly/sequel_monkey_patches.rb",
    "lib/friendly/storage.rb",
    "lib/friendly/storage_factory.rb",
    "lib/friendly/storage_proxy.rb",
    "lib/friendly/table.rb",
    "lib/friendly/table_creator.rb",
    "lib/friendly/time.rb",
    "lib/friendly/translator.rb",
    "lib/friendly/uuid.rb",
    "rails/init.rb"
  ]
  s.homepage = %q{http://friendlyorm.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{NoSQL with MySQL in Ruby}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<mysql>, ["~> 2.8.1"])
      s.add_development_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_development_dependency(%q<sequel>, ["~> 3.16.0"])
      s.add_development_dependency(%q<rufus-json>, ["~> 0.2.3"])
      s.add_development_dependency(%q<memcached>, ["~> 0.20.1"])
      s.add_development_dependency(%q<will_paginate>, ["~> 2.3.15"])
      s.add_development_dependency(%q<yajl-ruby>, ["~> 0.7.7"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.1"])
      s.add_development_dependency(%q<jferris-mocha>, ["~> 0.9.8.20100526112143"])
      s.add_development_dependency(%q<rcov>, ["~> 0.9.9"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<mysql>, ["~> 2.8.1"])
      s.add_development_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_development_dependency(%q<sequel>, ["~> 3.16.0"])
      s.add_development_dependency(%q<rufus-json>, ["~> 0.2.3"])
      s.add_development_dependency(%q<memcached>, ["~> 0.20.1"])
      s.add_development_dependency(%q<will_paginate>, ["~> 2.3.15"])
      s.add_development_dependency(%q<yajl-ruby>, ["~> 0.7.7"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.1"])
      s.add_development_dependency(%q<jferris-mocha>, ["~> 0.9.8.20100526112143"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_runtime_dependency(%q<sequel>, [">= 3.7.0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3.5"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 2.3.0"])
      s.add_runtime_dependency(%q<rufus-json>, ["= 0.2.3"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<mysql>, ["~> 2.8.1"])
      s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_dependency(%q<sequel>, ["~> 3.16.0"])
      s.add_dependency(%q<rufus-json>, ["~> 0.2.3"])
      s.add_dependency(%q<memcached>, ["~> 0.20.1"])
      s.add_dependency(%q<will_paginate>, ["~> 2.3.15"])
      s.add_dependency(%q<yajl-ruby>, ["~> 0.7.7"])
      s.add_dependency(%q<rspec>, ["~> 1.3.1"])
      s.add_dependency(%q<jferris-mocha>, ["~> 0.9.8.20100526112143"])
      s.add_dependency(%q<rcov>, ["~> 0.9.9"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<mysql>, ["~> 2.8.1"])
      s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_dependency(%q<sequel>, ["~> 3.16.0"])
      s.add_dependency(%q<rufus-json>, ["~> 0.2.3"])
      s.add_dependency(%q<memcached>, ["~> 0.20.1"])
      s.add_dependency(%q<will_paginate>, ["~> 2.3.15"])
      s.add_dependency(%q<yajl-ruby>, ["~> 0.7.7"])
      s.add_dependency(%q<rspec>, ["~> 1.3.1"])
      s.add_dependency(%q<jferris-mocha>, ["~> 0.9.8.20100526112143"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<sequel>, [">= 3.7.0"])
      s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
      s.add_dependency(%q<will_paginate>, ["~> 2.3.0"])
      s.add_dependency(%q<rufus-json>, ["= 0.2.3"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<mysql>, ["~> 2.8.1"])
    s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
    s.add_dependency(%q<sequel>, ["~> 3.16.0"])
    s.add_dependency(%q<rufus-json>, ["~> 0.2.3"])
    s.add_dependency(%q<memcached>, ["~> 0.20.1"])
    s.add_dependency(%q<will_paginate>, ["~> 2.3.15"])
    s.add_dependency(%q<yajl-ruby>, ["~> 0.7.7"])
    s.add_dependency(%q<rspec>, ["~> 1.3.1"])
    s.add_dependency(%q<jferris-mocha>, ["~> 0.9.8.20100526112143"])
    s.add_dependency(%q<rcov>, ["~> 0.9.9"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<mysql>, ["~> 2.8.1"])
    s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
    s.add_dependency(%q<sequel>, ["~> 3.16.0"])
    s.add_dependency(%q<rufus-json>, ["~> 0.2.3"])
    s.add_dependency(%q<memcached>, ["~> 0.20.1"])
    s.add_dependency(%q<will_paginate>, ["~> 2.3.15"])
    s.add_dependency(%q<yajl-ruby>, ["~> 0.7.7"])
    s.add_dependency(%q<rspec>, ["~> 1.3.1"])
    s.add_dependency(%q<jferris-mocha>, ["~> 0.9.8.20100526112143"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<sequel>, [">= 3.7.0"])
    s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
    s.add_dependency(%q<will_paginate>, ["~> 2.3.0"])
    s.add_dependency(%q<rufus-json>, ["= 0.2.3"])
  end
end

