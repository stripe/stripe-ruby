# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a claimable sandbox is activated by the user with the intention to go live and your Stripe app is installed on the live account.
    class V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent < Stripe::V2::Event
      def self.lookup_type
        "v2.core.claimable_sandbox.sandbox_details_owner_account_updated"
      end

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context }
        )
      end
      attr_reader :related_object
    end

    # Occurs when a claimable sandbox is activated by the user with the intention to go live and your Stripe app is installed on the live account.
    class V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEventNotification < Stripe::V2::EventNotification
      def self.lookup_type
        "v2.core.claimable_sandbox.sandbox_details_owner_account_updated"
      end

      attr_reader :related_object

      # Retrieves the ClaimableSandbox related to this EventNotification from the Stripe API. Makes an API request on every call.
      def fetch_related_object
        resp = @client.raw_request(
          :get,
          related_object.url,
          opts: { stripe_context: context },
          usage: ["fetch_related_object"]
        )
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
      end
    end
  end
end
