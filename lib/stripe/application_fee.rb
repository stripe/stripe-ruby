module Stripe
  class ApplicationFee < APIResource
    include Stripe::APIOperations::List

    def self.url
      '/v1/application_fees'
    end

    def refund(params={})
      response, api_key = Stripe.request(:post, refund_url, @api_key, params)
      refresh_from(response, api_key)
      self
    end

    private

    def refund_url
      url + '/refund'
    end
  end
end
