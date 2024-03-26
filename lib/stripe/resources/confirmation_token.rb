# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # ConfirmationTokens help transport client side data collected by Stripe JS over
  # to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
  # is successful, values present on the ConfirmationToken are written onto the Intent.
  #
  # To learn more about how to use ConfirmationToken, visit the related guides:
  # - [Finalize payments on the server](https://stripe.com/docs/payments/finalize-payments-on-the-server)
  # - [Build two-step confirmation](https://stripe.com/docs/payments/build-a-two-step-confirmation).
  class ConfirmationToken < APIResource
    OBJECT_NAME = "confirmation_token"
    def self.object_name
      "confirmation_token"
    end

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = ConfirmationToken
      def self.resource_class
        "ConfirmationToken"
      end

      # Creates a test mode Confirmation Token server side for your integration tests.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/test_helpers/confirmation_tokens",
          params: params,
          opts: opts
        )
      end
    end
  end
end
