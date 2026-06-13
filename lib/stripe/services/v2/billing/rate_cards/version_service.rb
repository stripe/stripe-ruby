# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module RateCards
        class VersionService < StripeService
          # List the versions of a Rate Card object. Results are sorted in reverse chronological order (most recent first).
          def list(rate_card_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/versions", { rate_card_id: CGI.escape(rate_card_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a specific version of a Rate Card object.
          def retrieve(rate_card_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/versions/%<id>s", { rate_card_id: CGI.escape(rate_card_id), id: CGI.escape(id) }),
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
