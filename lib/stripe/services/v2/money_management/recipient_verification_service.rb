# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RecipientVerificationService < StripeService
        # Acknowledges an existing RecipientVerification. Only RecipientVerification awaiting acknowledgement can be acknowledged.
        def acknowledge(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/recipient_verifications/%<id>s/acknowledge", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a RecipientVerification to verify the recipient you intend to send funds to.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/recipient_verifications",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing RecipientVerification by passing the unique RecipientVerification ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/recipient_verifications/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
