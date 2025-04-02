# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A recipient config was updated.
  class V2CoreAccountIncludingConfigurationRecipientUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[configuration.recipient].updated"
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
