# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs whenever a subscription schedule is canceled due to the underlying subscription being canceled because of delinquency.
  class V1SubscriptionScheduleAbortedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.subscription_schedule.aborted"
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
