# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Groups
        class SpendModifierRuleService < StripeService
          # List spend modifiers associated with a billing group.
          def list(group_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/groups/%<group_id>s/spend_modifier_rules", { group_id: CGI.escape(group_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a spend modifier associated with a billing group.
          def retrieve(group_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/groups/%<group_id>s/spend_modifier_rules/%<id>s", { group_id: CGI.escape(group_id), id: CGI.escape(id) }),
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
