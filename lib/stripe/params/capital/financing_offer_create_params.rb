# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    class FinancingOfferCreateParams < ::Stripe::RequestParams
      # Amount of financing offered, in minor units. For example, 1,000 USD is represented as 100000.
      attr_accessor :advance_amount
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Fixed fee amount, in minor units. For example, 100 USD is represented as 10000.
      attr_accessor :fee_amount
      # The type of financing offer.
      attr_accessor :financing_type
      # The status of the financing offer.
      attr_accessor :status
      # Per-transaction rate at which Stripe withholds funds to repay the financing.
      attr_accessor :withhold_rate

      def initialize(
        advance_amount: nil,
        expand: nil,
        fee_amount: nil,
        financing_type: nil,
        status: nil,
        withhold_rate: nil
      )
        @advance_amount = advance_amount
        @expand = expand
        @fee_amount = fee_amount
        @financing_type = financing_type
        @status = status
        @withhold_rate = withhold_rate
      end
    end
  end
end
