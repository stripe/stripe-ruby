module Stripe
  class Charge < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def refund(params={}, api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:post, refund_url, api_key, params)
      refresh_from(response, key)
      self
    end

    def capture(params={}, api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:post, capture_url, api_key, params)
      refresh_from(response, key)
      self
    end

    def update_dispute(params, api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:post, dispute_url, api_key, params)
      refresh_from({ :dispute => response }, key, true)
      dispute
    end

    def close_dispute(api_key=nil)
      api_key ||= @api_key
      response, key = Stripe.request(:post, close_dispute_url, api_key)
      refresh_from(response, key)
      self
    end

    private

    def refund_url
      url + '/refund'
    end

    def capture_url
      url + '/capture'
    end

    def dispute_url
      url + '/dispute'
    end

    def close_dispute_url
      url + '/dispute/close'
    end
  end
end
