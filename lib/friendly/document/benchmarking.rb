require 'colored'

module Friendly
  module Document
    module Benchmarking
      extend Mixin

      module ClassMethods
        def first(query)
          benchmark("First #{name} in :time.".green) { super }
        end

        def all(query)
          benchmark("All #{name}s in :time.".green) { super }
        end

        def count(query)
          benchmark("Counted #{name}s in :time".green) { super }
        end
      end

      def save
        benchmark("Saved #{self.class.name} in :time.".green) { super }
      end

      def destroy
        benchmark("Destroyed #{self.class.name} in :time.".green) { super }
      end
    end
  end
end
