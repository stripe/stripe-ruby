module Stripe
  class ApplicationFee < APIResource
    include Stripe::APIOperations::List

    def self.url
      '/v1/application_fees'
    end

    def refund(params={}, opts={})
      response, opts = request(:post, refund_url, params, opts)
      refresh_from(response, opts)
    end

    private

    def refund_url
      url + '/refund'
    end
  end
end
