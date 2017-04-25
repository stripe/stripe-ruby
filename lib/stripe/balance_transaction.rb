module Stripe
  class BalanceTransaction < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'balance_transaction'

    def self.resource_url
      '/v1/balance/history'
    end
  end
end
