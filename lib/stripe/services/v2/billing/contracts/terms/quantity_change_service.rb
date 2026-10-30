# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        module Terms
          class QuantityChangeService < StripeService
            # List quantity changes for a licensed recurring-price term.
            def list_contract_term_quantity_changes(contract_id, term, params = {}, opts = {})
              request(
                method: :get,
                path: format("/v2/billing/contracts/%<contract_id>s/terms/%<term>s/quantity_changes", { contract_id: CGI.escape(contract_id), term: CGI.escape(term) }),
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
