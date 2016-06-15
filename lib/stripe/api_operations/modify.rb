module Stripe
  module APIOperations
    module Modify
      def modify(id, params={}, opts={})
        response, opts = request(:post, "#{resource_url}/#{id}", params, opts)
        Util.convert_to_stripe_object(response, opts)
      end
    end
  end
end
