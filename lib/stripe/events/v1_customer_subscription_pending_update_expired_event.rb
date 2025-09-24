# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a customer's subscription's pending update expires before the related invoice is paid.
  class V1CustomerSubscriptionPendingUpdateExpiredEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.customer.subscription.pending_update_expired"
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
