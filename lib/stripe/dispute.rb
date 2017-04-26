module Stripe
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = 'dispute'

    def close(params={}, opts={})
      resp, opts = request(:post, close_url, params, opts)
      initialize_from(resp.data, opts)
    end

    def close_url
      resource_url + '/close'
    end
  end
end
