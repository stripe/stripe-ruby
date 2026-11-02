# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Contracts
        module Terms
          class QuantityChangeService < StripeService
            # List quantity changes for a licensed recurring-price term.
            sig {
              params(contract_id: String, term: String, params: T.any(::Stripe::V2::Billing::Contracts::Terms::QuantityChangeListContractTermQuantityChangesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
             }
            def list_contract_term_quantity_changes(contract_id, term, params = {}, opts = {}); end
          end
        end
      end
    end
  end
end