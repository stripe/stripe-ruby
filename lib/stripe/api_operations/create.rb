module Stripe
  module APIOperations
    module Create
      def create(params={}, opts={})
        response, opts = request(:post, resource_url, params, opts)
        Util.convert_to_stripe_object(response, opts)
      end
    end
  end
end
