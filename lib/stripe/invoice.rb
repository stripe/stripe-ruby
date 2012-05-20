module Stripe
  class Invoice < APIResource
    include Stripe::APIOperations::List

    def self.upcoming(params)
      response, api_key = Stripe.request(:get, upcoming_url, @api_key, params)
      Util.convert_to_stripe_object(response, api_key)
    end

    private

    def self.upcoming_url
      url + '/upcoming'
    end
  end
end