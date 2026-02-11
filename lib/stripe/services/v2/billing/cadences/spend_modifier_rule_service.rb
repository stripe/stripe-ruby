# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Cadences
        class SpendModifierRuleService < StripeService
          # List all Spend Modifiers associated with a Billing Cadence.
          def list(cadence_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/cadences/%<cadence_id>s/spend_modifier_rules", { cadence_id: CGI.escape(cadence_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a Spend Modifier associated with a Billing Cadence.
          def retrieve(cadence_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/cadences/%<cadence_id>s/spend_modifier_rules/%<id>s", { cadence_id: CGI.escape(cadence_id), id: CGI.escape(id) }),
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
