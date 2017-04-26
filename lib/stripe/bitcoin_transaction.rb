module Stripe
  class BitcoinTransaction < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'bitcoin_transaction'

    def self.resource_url
      "/v1/bitcoin/transactions"
    end
  end
end
