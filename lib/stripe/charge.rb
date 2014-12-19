module Stripe
  class Charge < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def refund(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :post, refund_url, api_key || @api_key, params, headers)
      refresh_from(response, api_key)
    end

    def capture(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :post, capture_url, api_key || @api_key, params, headers)
      refresh_from(response, api_key)
    end

    def update_dispute(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :post, dispute_url, api_key || @api_key, params, headers)
      refresh_from({ :dispute => response }, api_key, true)
      dispute
    end

    def close_dispute(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(
        :post, close_dispute_url, api_key || @api_key, params, headers)
      refresh_from(response, api_key)
    end

    def mark_as_fraudulent
      params = {
        :fraud_details => { :user_report => 'fraudulent' }
      }
      response, api_key = Stripe.request(:post, url, @api_key, params)
      refresh_from(response, api_key)
    end

    def mark_as_safe
      params = {
        :fraud_details => { :user_report => 'safe' }
      }
      response, api_key = Stripe.request(:post, url, @api_key, params)
      refresh_from(response, api_key)
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
