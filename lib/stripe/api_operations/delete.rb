module Stripe
  module APIOperations
    module Delete
      def delete(params = {}, api_key=nil, headers={})
        response, api_key = Stripe.request(:delete, url, api_key, params, headers)
        refresh_from(response, api_key)
      end
    end
  end
end
