# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Tokenization is the process Stripe uses to collect sensitive card or bank
  # account details, or personally identifiable information (PII), directly from
  # your customers in a secure manner. A token representing this information is
  # returned to your server to use. You should use our
  # [recommended payments integrations](https://stripe.com/docs/payments) to perform this process
  # client-side. This ensures that no sensitive card data touches your server,
  # and allows your integration to operate in a PCI-compliant way.
  #
  # If you cannot use client-side tokenization, you can also create tokens using
  # the API with either your publishable or secret API key. Keep in mind that if
  # your integration uses this method, you are responsible for any PCI compliance
  # that may be required, and you must keep your secret API key safe. Unlike with
  # client-side tokenization, your customer's information is not sent directly to
  # Stripe, so we cannot determine how it is handled or stored.
  #
  # Tokens cannot be stored or used more than once. To store card or bank account
  # information for later use, you can create [Customer](https://stripe.com/docs/api#customers)
  # objects or [Custom accounts](https://stripe.com/docs/api#external_accounts). Note that
  # [Radar](https://stripe.com/docs/radar), our integrated solution for automatic fraud protection,
  # performs best with integrations that use client-side tokenization.
  #
  # Related guide: [Accept a payment](https://stripe.com/docs/payments/accept-a-payment-charges#web-create-token)
  class Token < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "token"
  end
end
