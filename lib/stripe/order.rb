module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def pay(params, opts={})
      response, opts = request(:post, pay_url, params, opts)
      refresh_from(response, opts)
    end

    private

    def pay_url
      url + "/pay"
    end

  end
end
