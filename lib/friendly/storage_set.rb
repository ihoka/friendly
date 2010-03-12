module Friendly
  class StorageSet
    attr_reader :klass, :storage_factory, :indexes, :caches, :document_table

    def initialize(klass, storage_factory = StorageFactory.new)
      @klass           = klass
      @storage_factory = storage_factory
      @indexes         = []
      @caches          = []
      @document_table  = storage_factory.document_table(klass)
    end

    def add_index(*args)
      indexes << storage_factory.index(klass, *args)
    end

    def add_cache(fields, options)
      caches << storage_factory.cache(klass, fields, options)
    end
    
    def index_for(conditions)
      index = tables.detect { |i| i.satisfies?(conditions) }
      if index.nil?
        raise MissingIndex, "No index found to satisfy: #{conditions.inspect}."
      end
      index
    end

    def cache_for(query)
      caches.detect { |c| c.satisfies?(query) }
    end

    def each_store
      stores.each { |s| yield(s) }
    end

    def stores
      tables + caches
    end

    protected
      def tables
        indexes + [document_table]
      end
  end
end
