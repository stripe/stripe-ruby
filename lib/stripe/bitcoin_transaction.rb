module Stripe
  class BitcoinTransaction < APIResource
    include Stripe::APIOperations::List

    def self.url
      "/v1/bitcoin/transactions"
    end
  end
end
