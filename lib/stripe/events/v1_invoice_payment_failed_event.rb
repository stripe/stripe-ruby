# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever an invoice payment attempt fails, due to either a declined payment, including soft decline, or to the lack of a stored payment method.
  class V1InvoicePaymentFailedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.invoice.payment_failed"
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
