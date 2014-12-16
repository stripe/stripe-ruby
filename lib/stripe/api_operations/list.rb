module Stripe
  module APIOperations
    module List
      module ClassMethods
        def all(filters={}, api_key=nil, headers={})
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
