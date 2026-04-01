# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Stripe Access Grant is requested.
    class V2IamStripeAccessGrantRequestedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.stripe_access_grant.requested"
      end

      class V2IamStripeAccessGrantRequestedEventData < ::Stripe::StripeObject
        # ID of requested Stripe Access Grant.
        attr_reader :stripe_access_grant

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamStripeAccessGrantRequestedEventData }
      end
      attr_reader :data
    end

    # Occurs when a Stripe Access Grant is requested.
    class V2IamStripeAccessGrantRequestedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.stripe_access_grant.requested"
      end
    end
  end
end
