# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module RateCards
        class CustomPricingUnitOverageRateService < StripeService
          # Create a Rate Card Custom Pricing Unit Overage Rate on a Rate Card.
          def create(rate_card_id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/custom_pricing_unit_overage_rates", { rate_card_id: CGI.escape(rate_card_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Delete a Rate Card Custom Pricing Unit Overage Rate from a Rate Card.
          def delete(rate_card_id, id, params = {}, opts = {})
            request(
              method: :delete,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/custom_pricing_unit_overage_rates/%<id>s", { rate_card_id: CGI.escape(rate_card_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List all Rate Card Custom Pricing Unit Overage Rates on a Rate Card.
          def list(rate_card_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/custom_pricing_unit_overage_rates", { rate_card_id: CGI.escape(rate_card_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a Rate Card Custom Pricing Unit Overage Rate from a Rate Card.
          def retrieve(rate_card_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/rate_cards/%<rate_card_id>s/custom_pricing_unit_overage_rates/%<id>s", { rate_card_id: CGI.escape(rate_card_id), id: CGI.escape(id) }),
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
