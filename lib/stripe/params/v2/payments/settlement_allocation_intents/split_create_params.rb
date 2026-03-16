# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitCreateParams < ::Stripe::RequestParams
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
          # The target account for settling the SettlementAllocationIntentSplit.
          attr_accessor :account
          # The amount and currency of the SettlementAllocationIntentSplit.
          attr_accessor :amount
          # Metadata associated with the SettlementAllocationIntentSplit.
          attr_accessor :metadata
          # The type of the fund transfer.
          attr_accessor :type

          def initialize(account: nil, amount: nil, metadata: nil, type: nil)
            @account = account
            @amount = amount
            @metadata = metadata
            @type = type
          end
        end
      end
    end
  end
end
