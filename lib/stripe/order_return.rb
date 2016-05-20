module Stripe
  class OrderReturn < APIResource
    extend Stripe::APIOperations::List

    def self.resource_url
      "/v1/order_returns"
    end
  end
end
