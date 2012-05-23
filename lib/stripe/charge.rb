module Stripe
  class Charge < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def refund(params={})
      response, api_key = Stripe.request(:post, refund_url, @api_key, params)
      refresh_from(response, api_key)
      self
    end

    def capture(params={})
      response, api_key = Stripe.request(:post, capture_url, @api_key, params)
      refresh_from(response, api_key)
      self
    end

    private

    def refund_url
      url + '/refund'
    end

    def capture_url
      url + '/capture'
    end
  end
end