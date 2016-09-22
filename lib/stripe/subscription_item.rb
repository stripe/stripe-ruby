module Stripe
  class SubscriptionItem < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    def self.resource_url
      '/v1/subscription_items'
    end
  end
end
