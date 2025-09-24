# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a refund is updated on selected payment methods. For updates on all refunds, listen to `refund.updated` instead.
  class V1ChargeRefundUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.charge.refund.updated"
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
