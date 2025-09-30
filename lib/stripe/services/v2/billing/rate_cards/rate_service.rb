# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module RateCards
        class RateService < StripeService
          # Set the Rate for a Metered Item on the latest version of a Rate Card object. This will create a new Rate Card version
          # if the Metered Item already has a rate on the Rate Card.
          def create(rate_card_id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates", { rate_card_id: CGI.escape(rate_card_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Remove an existing Rate from a Rate Card. This will create a new Rate Card Version without that Rate.
          def delete(rate_card_id, id, params = {}, opts = {})
            request(
              method: :delete,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates/%<id>s", { rate_card_id: CGI.escape(rate_card_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List all Rates associated with a Rate Card for a specific version (defaults to latest). Rates remain active for all subsequent versions until a new rate is created for the same Metered Item.
          def list(rate_card_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates", { rate_card_id: CGI.escape(rate_card_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a Rate object.
          def retrieve(rate_card_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/rates/%<id>s", { rate_card_id: CGI.escape(rate_card_id), id: CGI.escape(id) }),
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
