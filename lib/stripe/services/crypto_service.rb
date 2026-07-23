# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CryptoService < StripeService
    attr_reader :customers, :deposit_addresses, :onramp_sessions, :onramp_transaction_limits

    def initialize(requestor)
      super
      @customers = Stripe::Crypto::CustomerService.new(@requestor)
      @deposit_addresses = Stripe::Crypto::DepositAddressService.new(@requestor)
      @onramp_sessions = Stripe::Crypto::OnrampSessionService.new(@requestor)
      @onramp_transaction_limits = Stripe::Crypto::OnrampTransactionLimitsService.new(@requestor)
    end
  end
end
