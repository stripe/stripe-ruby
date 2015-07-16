module Stripe
  class Dispute < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def close(params={}, opts={})
      response, opts = request(:post, close_url, params, opts)
      refresh_from(response, opts)
    end

    def close_url
      url + '/close'
    end
  end
end
