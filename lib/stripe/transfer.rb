module Stripe
  class Transfer < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    OBJECT_NAME = 'transfer'

    def cancel
      resp, api_key = self.request(:post, cancel_url)
      initialize_from(resp.data, api_key)
    end

    def cancel_url
      resource_url + '/cancel'
    end
  end
end
