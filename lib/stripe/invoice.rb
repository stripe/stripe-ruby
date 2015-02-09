module Stripe
  class Invoice < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Create

    def self.upcoming(params, opts={})
      opts = Util.normalize_opts(opts)
      response, api_key = Stripe.request(:get, upcoming_url, opts, params)
      Util.convert_to_stripe_object(response, opts)
    end

    def pay
      response, opts = Stripe.request(:post, pay_url, @opts, {})
      refresh_from(response, opts)
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
