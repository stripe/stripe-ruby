# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Contracts
        module PricingLines
          class QuantityChangeService < StripeService
            # List quantity changes for a pricing line on a contract.
            sig {
              params(contract_id: String, pricing_line_id: String, params: T.any(::Stripe::V2::Billing::Contracts::PricingLines::QuantityChangeListContractPricingLineQuantityChangesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
             }
            def list_contract_pricing_line_quantity_changes(
              contract_id,
              pricing_line_id,
              params = {},
              opts = {}
            ); end
          end
        end
      end
    end
  end
end