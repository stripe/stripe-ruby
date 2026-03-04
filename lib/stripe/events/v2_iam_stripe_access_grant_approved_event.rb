# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Stripe Access Grant is approved.
    class V2IamStripeAccessGrantApprovedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.stripe_access_grant.approved"
      end
    end

    # Occurs when a Stripe Access Grant is approved.
    class V2IamStripeAccessGrantApprovedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.stripe_access_grant.approved"
      end
    end
  end
end
