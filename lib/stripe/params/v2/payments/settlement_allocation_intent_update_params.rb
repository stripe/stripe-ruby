# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentUpdateParams < ::Stripe::RequestParams
        # The new amount for the SettlementAllocationIntent. Only amount.value can be updated and currency must remain same.
        attr_accessor :amount
        # The new reference for the SettlementAllocationIntent.
        attr_accessor :reference

        def initialize(amount: nil, reference: nil)
          @amount = amount
          @reference = reference
        end
      end
    end
  end
end
