# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when an SetupIntent has successfully setup a payment method.
  class V1SetupIntentSucceededEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.setup_intent.succeeded"
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
