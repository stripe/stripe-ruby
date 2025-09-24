# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs three days before a subscription's trial period is scheduled to end, or when a trial is ended immediately (using `trial_end=now`).
  class V1CustomerSubscriptionTrialWillEndEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.customer.subscription.trial_will_end"
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
