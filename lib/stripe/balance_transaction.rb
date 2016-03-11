module Stripe
  class BalanceTransaction < APIResource
    extend Stripe::APIOperations::List

    def self.resource_url
      '/v1/balance/history'
    end
  end
end
