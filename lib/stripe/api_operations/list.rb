module Stripe
  module APIOperations
    module List
      module ClassMethods
        def all(filters={}, opts={})
          opts = Util.normalize_opts(opts)

          list = Stripe::ListObject.construct_from({ url: url }, opts)
          list.all(filters, opts)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
