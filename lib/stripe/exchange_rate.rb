module Stripe
  class ExchangeRate < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "exchange_rate".freeze

    def self.resource_url
      "/v1/exchange_rates"
    end
  end
end
