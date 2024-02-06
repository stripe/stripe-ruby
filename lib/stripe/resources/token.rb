# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Tokenization is the process Stripe uses to collect sensitive card or bank
  # account details, or personally identifiable information (PII), directly from
  # your customers in a secure manner. A token representing this information is
  # returned to your server to use. Use our
  # [recommended payments integrations](https://stripe.com/docs/payments) to perform this process
  # on the client-side. This guarantees that no sensitive card data touches your server,
  # and allows your integration to operate in a PCI-compliant way.
  #
  # If you can't use client-side tokenization, you can also create tokens using
  # the API with either your publishable or secret API key. If
  # your integration uses this method, you're responsible for any PCI compliance
  # that it might require, and you must keep your secret API key safe. Unlike with
  # client-side tokenization, your customer's information isn't sent directly to
  # Stripe, so we can't determine how it's handled or stored.
  #
  # You can't store or use tokens more than once. To store card or bank account
  # information for later use, create [Customer](https://stripe.com/docs/api#customers)
  # objects or [Custom accounts](https://stripe.com/docs/api#external_accounts).
  # [Radar](https://stripe.com/docs/radar), our integrated solution for automatic fraud protection,
  # performs best with integrations that use client-side tokenization.
  class Token < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "token"

    # Creates a single-use token that represents a bank account's details.
    # You can use this token with any API method in place of a bank account dictionary. You can only use this token once. To do so, attach it to a [Custom account](https://stripe.com/docs/api#accounts).
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/tokens", params: params, opts: opts)
    end
  end
end
