module Stripe
  class OrderReturn < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'order_return'

    def self.resource_url
      "/v1/order_returns"
    end
  end
end
