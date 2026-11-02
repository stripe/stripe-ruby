# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FundingIntentService < StripeService
        # Cancels a FundingIntent that can still be canceled.
        #
        # ** raises CannotProceedError
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/funding_intents/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Confirms a FundingIntent that is ready for processing.
        #
        # ** raises CannotProceedError
        def confirm(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/funding_intents/%<id>s/confirm", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a FundingIntent that adds funds to a FinancialAccount.
        #
        # ** raises CannotProceedError
        # ** raises FeatureNotEnabledError
        # ** raises CapabilityNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/funding_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Lists FundingIntents.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/funding_intents",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a FundingIntent by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/funding_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the mutable details of a FundingIntent.
        #
        # ** raises CannotProceedError
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/funding_intents/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
