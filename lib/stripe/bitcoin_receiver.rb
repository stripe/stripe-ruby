module Stripe
  class BitcoinReceiver < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def self.url
      "/v1/bitcoin/receivers"
    end
  end
end
