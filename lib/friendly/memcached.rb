require 'friendly/logging'
require 'friendly/benchmarking'

module Friendly
  class Memcached
    include Logging
    include Benchmarking

    attr_reader :cache

    def initialize(cache)
      @cache = cache
    end

    def set(key, value)
      benchmark("[CACHE] Set #{key} to #{value} in :time.") do
        @cache.set(key, value)
      end
    end

    def get(key)
      benchmark("[CACHE] Got #{key} in :time.") do
        @cache.get(key)
      end
    rescue ::Memcached::NotFound
      if block_given?
        benchmark("[CACHE] Missed #{key} in :time.") do
          miss(key) { yield }
        end
      end
    end

    def multiget(keys)
      return {} if keys.empty?

      hits = benchmark("[CACHE] Multiget #{keys.join(",")} in :time.") do
        @cache.get(keys)
      end
      missing_keys = keys - hits.keys

      if !missing_keys.empty? && block_given?
        missing_keys.each do |missing_key|
          benchmark("[CACHE] Multiget missed #{missing_key} in :time.") do
            hits.merge!(missing_key => miss(missing_key) { yield(missing_key) })
          end
        end
      end

      hits
    end

    def delete(key)
      benchmark("[CACHE] Deleted #{key} in :time.") do
        cache.delete(key)
      end
    rescue ::Memcached::NotFound
    end

    protected
      def miss(key)
        value = yield
        @cache.set(key, value)
        value
      end
  end
end
