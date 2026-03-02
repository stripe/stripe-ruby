# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Stripe Access Grant is updated.
    class V2IamStripeAccessGrantUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.stripe_access_grant.updated"
      end
    end

    # Occurs when a Stripe Access Grant is updated.
    class V2IamStripeAccessGrantUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.stripe_access_grant.updated"
      end
    end
  end
end
