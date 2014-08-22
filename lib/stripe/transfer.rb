module Stripe
  class Transfer < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

    def cancel
      response, api_key = Stripe.request(:post, cancel_url, @api_key)
      refresh_from(response, api_key)
    end

    def cancel_url
      url + '/cancel'
    end

  end
end
