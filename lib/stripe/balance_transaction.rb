module Stripe
  class BalanceTransaction < APIResource
    include Stripe::APIOperations::List

    def self.url
      '/v1/balance/history'
    end
  end
end
