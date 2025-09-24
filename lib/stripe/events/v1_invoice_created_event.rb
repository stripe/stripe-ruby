# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a new invoice is created. To learn how webhooks can be used with this event, and how they can affect it, see [Using Webhooks with Subscriptions](https://docs.stripe.com/subscriptions/webhooks).
  class V1InvoiceCreatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.invoice.created"
    end

    # Retrieves the related object from the API. Make an API request on every call.
    def fetch_related_object
      _request(
        method: :get,
        path: related_object.url,
        base_address: :api,
        opts: { stripe_account: context }
      )
    end
  end
end
