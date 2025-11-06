# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    class FinancingOfferCreateParams < ::Stripe::RequestParams
      # Attribute for param field advance_amount
      attr_accessor :advance_amount
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Attribute for param field fee_amount
      attr_accessor :fee_amount
      # Attribute for param field financing_type
      attr_accessor :financing_type
      # Attribute for param field status
      attr_accessor :status
      # Attribute for param field withhold_rate
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
