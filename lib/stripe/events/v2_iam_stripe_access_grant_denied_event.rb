# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Stripe Access Grant is denied (was pending, then denied by the customer).
    class V2IamStripeAccessGrantDeniedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.stripe_access_grant.denied"
      end

      class V2IamStripeAccessGrantDeniedEventData < ::Stripe::StripeObject
        # ID of denied Stripe Access Grant.
        attr_reader :stripe_access_grant

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2IamStripeAccessGrantDeniedEventData }
      end
      attr_reader :data
    end

    # Occurs when a Stripe Access Grant is denied (was pending, then denied by the customer).
    class V2IamStripeAccessGrantDeniedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.stripe_access_grant.denied"
      end
    end
  end
end
