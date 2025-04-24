# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a Person is created.
  class V2CoreAccountPersonCreatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account_person.created"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.

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
