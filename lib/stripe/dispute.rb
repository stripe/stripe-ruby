module Stripe
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    def close(params={}, opts={})
      resp, opts = request(:post, close_url, params, opts)
      initialize_from(resp.data, opts)
    end

    def close_url
      resource_url + '/close'
    end
  end
end
