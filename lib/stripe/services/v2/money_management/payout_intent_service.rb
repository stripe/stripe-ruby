# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutIntentService < StripeService
        # Cancels a PayoutIntent in the `pending` or `requires_action` state, or a `processing` PayoutIntent with a cancelable OutboundPayment.
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

        # Confirms a PayoutIntent in the `requires_action` state, transitioning it to `pending`.
        #
        # ** raises FxQuoteNeedsRefreshError
        def confirm(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_intents/%<id>s/confirm", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a PayoutIntent.
        #
        # ** raises CapabilityNotEnabledError
        # ** raises RecipientNotNotifiableError
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

        # Refreshes the FX quote for a PayoutIntent.
        def refresh_fx_quote(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_intents/%<id>s/refresh_fx_quote", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Refreshes the recipient verification for a PayoutIntent.
        def refresh_recipient_verification(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_intents/%<id>s/refresh_recipient_verification", { id: CGI.escape(id) }),
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

        # Updates an editable PayoutIntent in the `pending` or `requires_action` state.
        #
        # ** raises CapabilityNotEnabledError
        # ** raises RecipientNotNotifiableError
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
