# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a subscription changes (e.g., switching from one plan to another, or changing the status from trial to active).
  class V1CustomerSubscriptionUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.customer.subscription.updated"
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
