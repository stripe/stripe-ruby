module Stripe
  class Source < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    def verify(params={}, opts={})
      response, opts = request(:post, resource_url + '/verify', params, opts)
      initialize_from(response, opts)
    end
  end
end
