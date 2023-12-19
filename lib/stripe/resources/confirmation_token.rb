# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # ConfirmationTokens help transport client side data collected by Stripe JS over
  # to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
  # is successful, values present on the ConfirmationToken are written onto the Intent.
  #
  # To learn more or request access, visit the related guided: [Finalize payments on the server using Confirmation Tokens](https://stripe.com/docs/payments/finalize-payments-on-the-server-confirmation-tokens).
  class ConfirmationToken < APIResource
    OBJECT_NAME = "confirmation_token"
  end
end
