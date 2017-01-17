module Stripe
  class Source < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    def verify(params={}, opts={})
      resp, opts = request(:post, resource_url + '/verify', params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
