module Friendly
  module Document
    module Mixin
      # FIXME: I'm not in love with this. But, I also don't think it's the
      # end of the world.
      def included(klass)
        if klass.const_defined?(:ClassMethods, false)
          klass.const_get(:ClassMethods, false).send(:include, const_get(:ClassMethods))
        else
          klass.send(:extend, const_get(:ClassMethods))
        end
      end
    end
  end
end
