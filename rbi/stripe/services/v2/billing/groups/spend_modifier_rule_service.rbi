# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Groups
        class SpendModifierRuleService < StripeService
          # List spend modifiers associated with a billing group.
          sig {
            params(group_id: String, params: T.any(::Stripe::V2::Billing::Groups::SpendModifierRuleListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(group_id, params = {}, opts = {}); end

          # Retrieve a spend modifier associated with a billing group.
          sig {
            params(group_id: String, id: String, params: T.any(::Stripe::V2::Billing::Groups::SpendModifierRuleRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::GroupSpendModifier)
           }
          def retrieve(group_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end