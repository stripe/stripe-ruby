module Stripe
  class Source < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    def verify(params={}, opts={})
      self.response, opts = request(:post, resource_url + '/verify', params, opts)
      initialize_from(response.data, opts)
    end
  end
end
