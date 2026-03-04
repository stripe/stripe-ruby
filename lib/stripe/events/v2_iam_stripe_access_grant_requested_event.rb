# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Stripe Access Grant is requested.
    class V2IamStripeAccessGrantRequestedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.stripe_access_grant.requested"
      end
    end

    # Occurs when a Stripe Access Grant is requested.
    class V2IamStripeAccessGrantRequestedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.stripe_access_grant.requested"
      end
    end
  end
end
