# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentService < StripeService
        # Cancel an OutboundSetupIntent object.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/outbound_setup_intents/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create an OutboundSetupIntent object.
        #
        # ** raises BlockedByStripeError
        # ** raises InvalidPayoutMethodError
        # ** raises QuotaExceededError
        # ** raises ControlledByAlternateResourceError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/outbound_setup_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List the OutboundSetupIntent objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/outbound_setup_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve an OutboundSetupIntent object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/outbound_setup_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update an OutboundSetupIntent object.
        #
        # ** raises QuotaExceededError
        # ** raises BlockedByStripeError
        # ** raises InvalidPayoutMethodError
        # ** raises ControlledByAlternateResourceError
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/outbound_setup_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
