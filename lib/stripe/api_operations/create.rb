module Stripe
  module APIOperations
    module Create
      module ClassMethods
        def create(params={}, opts={})
          api_key, headers = Util.parse_opts(opts)
          response, api_key = Stripe.request(:post, self.url, api_key, params, headers)
          Util.convert_to_stripe_object(response, api_key)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
