module Stripe
  class Invoice < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Create

    def self.upcoming(params, opts={})
      response, opts = request(:get, upcoming_url, params, opts)
      Util.convert_to_stripe_object(response, opts)
    end

    def pay(opts={})
      response, opts = request(:post, pay_url, {}, opts)
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
