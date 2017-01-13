module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    def pay(params, opts={})
      self.response, opts = request(:post, pay_url, params, opts)
      initialize_from(response.data, opts)
    end

    def return_order(params, opts={})
      resp, opts = request(:post, returns_url, params, opts)
      Util.convert_to_stripe_object(resp.data, opts, response: resp)
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
