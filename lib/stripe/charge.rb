module Stripe
  class Charge < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def refund(params={}, opts={})
      response, opts = request(:post, refund_url, params, opts)
      refresh_from(response, opts)
    end

    def capture(params={}, opts={})
      response, opts = request(:post, capture_url, params, opts)
      refresh_from(response, opts)
    end

    def update_dispute(params={}, opts={})
      response, opts = request(:post, dispute_url, params, opts)
      refresh_from({ :dispute => response }, opts, true)
      dispute
    end

    def close_dispute(params={}, opts={})
      response, opts = request(:post, close_dispute_url, params, opts)
      refresh_from(response, opts)
    end

    def mark_as_fraudulent
      params = {
        :fraud_details => { :user_report => 'fraudulent' }
      }
      response, opts = request(:post, url, params)
      refresh_from(response, opts)
    end

    def mark_as_safe
      params = {
        :fraud_details => { :user_report => 'safe' }
      }
      response, opts = request(:post, url, params)
      refresh_from(response, opts)
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
