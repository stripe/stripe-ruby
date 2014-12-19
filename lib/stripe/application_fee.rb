module Stripe
  class ApplicationFee < APIResource
    include Stripe::APIOperations::List

    def self.url
      '/v1/application_fees'
    end

    def refund(params={}, opts={})
      api_key, headers = Util.parse_opts(opts)
      response, api_key = Stripe.request(:post, refund_url, api_key, params, headers)
      refresh_from(response, api_key)
    end

    private

    def refund_url
      url + '/refund'
    end
  end
end
