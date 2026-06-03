# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        module LicensePricing
          class QuantityChangeService < StripeService
            # List license quantity changes for a contract given a license pricing ID.
            def list_quantity_changes(contract_id, license_pricing_id, params = {}, opts = {})
              request(
                method: :get,
                path: format("/v2/billing/contracts/%<contract_id>s/license_pricing/%<license_pricing_id>s/quantity_changes", { contract_id: CGI.escape(contract_id), license_pricing_id: CGI.escape(license_pricing_id) }),
                params: params,
                opts: opts,
                base_address: :api
              )
            end
          end
        end
      end
    end
  end
end
