module Stripe
  class Invoice < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update

    def self.upcoming(params)
      response, api_key = Stripe.request(:get, upcoming_url, @api_key, params)
      Util.convert_to_stripe_object(response, api_key)
    end

    def pay
      response, api_key = Stripe.request(:post, pay_url, @api_key)
      refresh_from(response, api_key)
      self
    end

    private

    def self.upcoming_url
      url + '/upcoming'
    end

    def pay_url
      url + '/pay'
    end
  end
end
