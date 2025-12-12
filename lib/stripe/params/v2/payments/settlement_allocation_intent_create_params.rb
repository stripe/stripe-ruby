# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentCreateParams < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          attr_accessor :value
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency

          def initialize(value: nil, currency: nil)
            @value = value
            @currency = currency
          end
        end
        # The amount and currency of the SettlementAllocationIntent.
        attr_accessor :amount
        # Expected date when we expect to receive the funds.
        attr_accessor :expected_settlement_date
        # FinancialAccount where the funds are expected to land / FinancialAccount to map this SettlementAllocationIntent to.
        attr_accessor :financial_account
        # Metadata associated with the SettlementAllocationIntent.
        attr_accessor :metadata
        # Reference for the settlement intent . Max 255 characters . The reference used by PSP to send funds to Stripe .
        attr_accessor :reference

        def initialize(
          amount: nil,
          expected_settlement_date: nil,
          financial_account: nil,
          metadata: nil,
          reference: nil
        )
          @amount = amount
          @expected_settlement_date = expected_settlement_date
          @financial_account = financial_account
          @metadata = metadata
          @reference = reference
        end
      end
    end
  end
end
