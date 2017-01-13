module Stripe
  class Source < APIResource
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    def verify(params={}, opts={})
      self.response, opts = request(:post, resource_url + '/verify', params, opts)
      initialize_from(response.data, opts)
    end
  end
end
