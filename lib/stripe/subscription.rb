module Stripe
  class Subscription < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete

    def url
      "#{Customer.url}/#{CGI.escape(customer)}/subscriptions/#{CGI.escape(id)}"
    end

    def self.retrieve(id, api_key=nil)
      raise NotImplementedError.new("Subscriptions cannot be retrieved without a customer ID. Retrieve a subscription using customer.subscriptions.retrieve('subscription_id')")
    end

    def delete_discount
      Stripe.request(:delete, discount_url, @api_key)
      refresh_from({ :discount => nil }, api_key, true)
    end

    private

    def discount_url
      url + '/discount'
    end
  end
end
