module Friendly
  class StorageSet
    attr_reader :klass, :storage_factory, :indexes, :caches

    def initialize(klass, storage_factory = StorageFactory.new)
      @klass           = klass
      @storage_factory = storage_factory
      @indexes         = []
      @caches          = []
    end

    def add_index(*args)
      indexes << storage_factory.index(klass, *args)
    end

    def add_cache(fields, options)
      caches << storage_factory.cache(klass, fields, options)
    end
  end
end
