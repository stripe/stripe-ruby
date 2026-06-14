# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentUpdateCryptoRefundAddressParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The blockchain network for the refund address.
    attr_accessor :network
    # The wallet address that should receive refunds for deposits on the specified network.
    attr_accessor :refund_address

    def initialize(expand: nil, network: nil, refund_address: nil)
      @expand = expand
      @network = network
      @refund_address = refund_address
    end
  end
end
