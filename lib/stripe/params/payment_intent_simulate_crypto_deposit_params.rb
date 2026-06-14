# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentSimulateCryptoDepositParams < ::Stripe::RequestParams
    # The buyer's wallet address from which the crypto deposit is originating.
    attr_accessor :buyer_wallet
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The blockchain network of the simulated crypto deposit.
    attr_accessor :network
    # The token currency of the simulated crypto deposit.
    attr_accessor :token_currency
    # A testmode transaction hash that determines the outcome of the simulated deposit.
    attr_accessor :transaction_hash

    def initialize(
      buyer_wallet: nil,
      expand: nil,
      network: nil,
      token_currency: nil,
      transaction_hash: nil
    )
      @buyer_wallet = buyer_wallet
      @expand = expand
      @network = network
      @token_currency = token_currency
      @transaction_hash = transaction_hash
    end
  end
end
