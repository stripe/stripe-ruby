# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a capability has new requirements or a new status.
  class V1CapabilityUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.capability.updated"
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
