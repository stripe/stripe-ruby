module Stripe
  module APIOperations
    module List
      module ClassMethods
        def all(filters={}, opts={})
          api_key, headers = Util.parse_opts(opts)
          response, api_key = Stripe.request(:get, url, api_key, filters, headers)
          Util.convert_to_stripe_object(response, api_key)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
