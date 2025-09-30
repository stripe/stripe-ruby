# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardService < StripeService
        attr_reader :rates, :versions

        def initialize(requestor)
          super
          @rates = Stripe::V2::Billing::RateCards::RateService.new(@requestor)
          @versions = Stripe::V2::Billing::RateCards::VersionService.new(@requestor)
        end

        # Create a Rate Card object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/rate_cards",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all Rate Card objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/rate_cards",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve the latest version of a Rate Card object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/rate_cards/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a Rate Card object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/rate_cards/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
