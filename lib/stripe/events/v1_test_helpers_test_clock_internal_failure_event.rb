# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a test clock fails to advance its frozen time.
  class V1TestHelpersTestClockInternalFailureEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.test_helpers.test_clock.internal_failure"
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
