module Stripe
  module APIOperations
    module Delete
      def delete
        response, api_key = Stripe.request(:delete, url, @api_key)
        refresh_from(response, api_key)
        self
      end
    end
  end
end
