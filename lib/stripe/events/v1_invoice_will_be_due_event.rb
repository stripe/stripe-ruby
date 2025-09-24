# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs X number of days before an invoice becomes due&mdash;where X is determined by Automations.
  class V1InvoiceWillBeDueEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.invoice.will_be_due"
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
