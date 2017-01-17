module Stripe
  class Source < APIResource
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    def verify(params={}, opts={})
      resp, opts = request(:post, resource_url + '/verify', params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
