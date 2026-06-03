# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Contracts
        module LicensePricing
          class QuantityChangeService < StripeService
            # List license quantity changes for a contract given a license pricing ID.
            sig {
              params(contract_id: String, license_pricing_id: String, params: T.any(::Stripe::V2::Billing::Contracts::LicensePricing::QuantityChangeListQuantityChangesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
             }
            def list_quantity_changes(contract_id, license_pricing_id, params = {}, opts = {}); end
          end
        end
      end
    end
  end
end