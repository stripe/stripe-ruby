# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a draft invoice is deleted. Note: This event is not sent for [invoice previews](https://docs.stripe.com/api/invoices/create_preview).
  class V1InvoiceDeletedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.invoice.deleted"
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
