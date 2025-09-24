# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a draft invoice cannot be finalized. See the invoice's [last finalization error](https://docs.stripe.com/api/invoices/object#invoice_object-last_finalization_error) for details.
  class V1InvoiceFinalizationFailedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.invoice.finalization_failed"
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
