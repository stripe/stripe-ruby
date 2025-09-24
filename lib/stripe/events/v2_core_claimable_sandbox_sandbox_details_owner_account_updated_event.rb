# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a claimable sandbox is activated by the user with the intention to go live and your Stripe app is installed on the live account.
  class V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.claimable_sandbox.sandbox_details_owner_account_updated"
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
