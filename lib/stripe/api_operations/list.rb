module Stripe
  module APIOperations
    module List
      module ClassMethods
        def all(filters={}, opts={})
          opts = Util.normalize_opts(opts)
          response, opts = request(:get, url, filters, opts)
          Util.convert_to_stripe_object(response, opts)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
