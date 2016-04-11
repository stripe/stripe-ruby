module Stripe
  class Subscription < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete

    def resource_url
      "#{Customer.resource_url}/#{CGI.escape(customer)}/subscriptions/#{CGI.escape(id)}"
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Subscriptions cannot be retrieved without a customer ID. Retrieve a subscription using customer.subscriptions.retrieve('subscription_id')")
    end

    def delete_discount
      _, opts = request(:delete, discount_url)
      initialize_from({ :discount => nil }, opts, true)
    end

    private

    def discount_url
      resource_url + '/discount'
    end
  end
end
