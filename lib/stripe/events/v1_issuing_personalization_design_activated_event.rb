# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a personalization design is activated following the activation of the physical bundle that belongs to it.
  class V1IssuingPersonalizationDesignActivatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.issuing_personalization_design.activated"
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
