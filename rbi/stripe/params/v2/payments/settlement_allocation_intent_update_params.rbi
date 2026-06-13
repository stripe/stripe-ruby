# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentUpdateParams < ::Stripe::RequestParams
        # The new amount for the SettlementAllocationIntent. Only amount.value can be updated and currency must remain same.
        sig { returns(T.nilable(::Stripe::V2::Amount)) }
        def amount; end
        sig {
          params(_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
         }
        def amount=(_amount); end
        # The new reference for the SettlementAllocationIntent.
        sig { returns(T.nilable(String)) }
        def reference; end
        sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
        def reference=(_reference); end
        sig { params(amount: T.nilable(::Stripe::V2::Amount), reference: T.nilable(String)).void }
        def initialize(amount: nil, reference: nil); end
      end
    end
  end
end