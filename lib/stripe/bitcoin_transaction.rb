module Stripe
  class BitcoinTransaction < APIResource
    extend Stripe::APIOperations::List

    def self.resource_url
      "/v1/bitcoin/transactions"
    end
  end
end
