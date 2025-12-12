# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a ReceivedCredit has no settlement intent matching it.
    class V2PaymentsSettlementAllocationIntentNotFoundEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.payments.settlement_allocation_intent.not_found"
      end

      class V2PaymentsSettlementAllocationIntentNotFoundEventData < ::Stripe::StripeObject
        # The ID of the ReceivedCredit.
        attr_reader :received_credit_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2PaymentsSettlementAllocationIntentNotFoundEventData }
      end
      attr_reader :data
    end

    # Occurs when a ReceivedCredit has no settlement intent matching it.
    class V2PaymentsSettlementAllocationIntentNotFoundEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.payments.settlement_allocation_intent.not_found"
      end
    end
  end
end
