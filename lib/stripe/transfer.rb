module Stripe
  class Transfer < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def cancel
      response, api_key = self.request(:post, cancel_url)
      initialize_from(response, api_key)
    end

    def cancel_url
      resource_url + '/cancel'
    end

  end
end
