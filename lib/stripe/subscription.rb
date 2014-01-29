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
  end
end
