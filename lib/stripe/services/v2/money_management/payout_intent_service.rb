# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutIntentService < StripeService
        # Cancels a PayoutIntent. Only pending PayoutIntents or processing PayoutIntents with cancelable OutboundPayment/Transfer can be canceled.
        #
        # ** raises NotCancelableError
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_intents/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a PayoutIntent.
        #
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/payout_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of PayoutIntents.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/payout_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing PayoutIntent by passing the unique PayoutIntent ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/payout_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates a PayoutIntent. Only pending or requires_action PayoutIntents that are editable can be updated.
        #
        # ** raises FeatureNotEnabledError
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
