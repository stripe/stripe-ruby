# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever an application fee is refunded, whether from refunding a charge or from [refunding the application fee directly](https://docs.stripe.com/api#fee_refunds). This includes partial refunds.
  class V1ApplicationFeeRefundedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.application_fee.refunded"
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
