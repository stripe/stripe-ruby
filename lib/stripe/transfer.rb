module Stripe
  class Transfer < APIResource
    include Stripe::APIOperations::List

    def transactions(params={})
      response, api_key = Stripe.request(:get, transactions_url, @api_key, params)
      Util.convert_to_stripe_object(response, api_key)
    end

    private

    def transactions_url
      url + '/transactions'
    end
  end
end
