module Stripe
  class Invoice < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Create

    def self.upcoming(params, api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:get, upcoming_url, api_key, params)
      Util.convert_to_stripe_object(response, key)
    end

    def pay(api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:post, pay_url, api_key)
      refresh_from(response, key)
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
