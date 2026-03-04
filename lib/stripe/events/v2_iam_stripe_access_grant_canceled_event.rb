# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Stripe Access Grant is canceled by the requesting Stripe.
    class V2IamStripeAccessGrantCanceledEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.stripe_access_grant.canceled"
      end
    end

    # Occurs when a Stripe Access Grant is canceled by the requesting Stripe.
    class V2IamStripeAccessGrantCanceledEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.stripe_access_grant.canceled"
      end
    end
  end
end
