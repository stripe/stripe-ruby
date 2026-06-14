# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Cadences
        class SpendModifierRuleService < StripeService
          # List all Spend Modifiers associated with a Billing Cadence.
          sig {
            params(cadence_id: String, params: T.any(::Stripe::V2::Billing::Cadences::SpendModifierRuleListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(cadence_id, params = {}, opts = {}); end

          # Retrieve a Spend Modifier associated with a Billing Cadence.
          sig {
            params(cadence_id: String, id: String, params: T.any(::Stripe::V2::Billing::Cadences::SpendModifierRuleRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::CadenceSpendModifier)
           }
          def retrieve(cadence_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end