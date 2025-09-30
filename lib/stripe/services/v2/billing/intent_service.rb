# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class IntentService < StripeService
        attr_reader :actions

        def initialize(requestor)
          super
          @actions = Stripe::V2::Billing::Intents::ActionService.new(@requestor)
        end

        # Cancel a Billing Intent.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Commit a Billing Intent.
        def commit(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/commit", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a Billing Intent.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List Billing Intents.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Release a Billing Intent.
        def release_reservation(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/release_reservation", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Reserve a Billing Intent.
        def reserve(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/intents/%<id>s/reserve", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Billing Intent.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
