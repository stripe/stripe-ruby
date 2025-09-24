# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs X number of days before a subscription is scheduled to create an invoice that is automatically charged&mdash;where X is determined by your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). Note: The received `Invoice` object will not have an invoice ID.
  class V1InvoiceUpcomingEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.invoice.upcoming"
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
