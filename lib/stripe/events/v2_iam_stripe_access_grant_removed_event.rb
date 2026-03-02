# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Stripe Access Grant is removed (was approved, and then removed by the customer).
    class V2IamStripeAccessGrantRemovedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.stripe_access_grant.removed"
      end
    end

    # Occurs when a Stripe Access Grant is removed (was approved, and then removed by the customer).
    class V2IamStripeAccessGrantRemovedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.stripe_access_grant.removed"
      end
    end
  end
end
