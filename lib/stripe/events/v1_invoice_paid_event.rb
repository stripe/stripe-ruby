# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever an invoice payment attempt succeeds or an invoice is marked as paid out-of-band.
  class V1InvoicePaidEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.invoice.paid"
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
