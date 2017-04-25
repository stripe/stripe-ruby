module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    OBJECT_NAME = 'order'

    def pay(params, opts={})
      resp, opts = request(:post, pay_url, params, opts)
      initialize_from(resp.data, opts)
    end

    def return_order(params, opts={})
      resp, opts = request(:post, returns_url, params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
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
