# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a charge is refunded, including partial refunds. Listen to `refund.created` for information about the refund.
  class V1ChargeRefundedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.charge.refunded"
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
