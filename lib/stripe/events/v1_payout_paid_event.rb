# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a payout is *expected* to be available in the destination account. If the payout fails, a `payout.failed` notification is also sent, at a later time.
  class V1PayoutPaidEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.payout.paid"
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
