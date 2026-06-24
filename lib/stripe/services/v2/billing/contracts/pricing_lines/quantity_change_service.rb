# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        module PricingLines
          class QuantityChangeService < StripeService
            # List quantity changes for a pricing line on a contract.
            def list_contract_pricing_line_quantity_changes(
              contract_id,
              pricing_line_id,
              params = {},
              opts = {}
            )
              request(
                method: :get,
                path: format("/v2/billing/contracts/%<contract_id>s/pricing_lines/%<pricing_line_id>s/quantity_changes", { contract_id: CGI.escape(contract_id), pricing_line_id: CGI.escape(pricing_line_id) }),
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
