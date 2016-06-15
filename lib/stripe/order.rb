module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    def pay(params, opts={})
      response, opts = request(:post, pay_url, params, opts)
      initialize_from(response, opts)
    end

    def return_order(params, opts={})
      response, opts = request(:post, returns_url, params, opts)
      Util.convert_to_stripe_object(response, opts)
    end

    private

    def pay_url
      resource_url + '/pay'
    end

    def returns_url
      resource_url + '/returns'
    end
  end
end
