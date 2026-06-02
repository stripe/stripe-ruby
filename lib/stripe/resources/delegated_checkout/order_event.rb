# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    # An order event represents a change to a delegated checkout order.
    class OrderEvent < APIResource
      OBJECT_NAME = "delegated_checkout.order_event"
      def self.object_name
        "delegated_checkout.order_event"
      end

      class Adjustment < ::Stripe::StripeObject
        class LineItem < ::Stripe::StripeObject
          # The line item key.
          attr_reader :key
          # The quantity associated with the order event.
          attr_reader :quantity

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount associated with the adjustment.
        attr_reader :amount
        # The currency associated with the adjustment amount.
        attr_reader :currency
        # The description of the adjustment.
        attr_reader :description
        # The line items associated with the adjustment.
        attr_reader :line_items
        # The status of the adjustment.
        attr_reader :status
        # The type of adjustment.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { line_items: LineItem }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Fulfillment < ::Stripe::StripeObject
        class LineItem < ::Stripe::StripeObject
          # The line item key.
          attr_reader :key
          # The quantity associated with the order event.
          attr_reader :quantity

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The carrier for the fulfillment.
        attr_reader :carrier
        # Time at which the fulfillment was delivered. Measured in seconds since the Unix epoch.
        attr_reader :delivered_at
        # The line items associated with the fulfillment.
        attr_reader :line_items
        # Time at which the fulfillment shipped. Measured in seconds since the Unix epoch.
        attr_reader :shipped_at
        # The status of the fulfillment.
        attr_reader :status
        # The tracking number for the fulfillment.
        attr_reader :tracking_number
        # The tracking URL for the fulfillment.
        attr_reader :tracking_url

        def self.inner_class_types
          @inner_class_types = { line_items: LineItem }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The adjustment details for this order event.
      attr_reader :adjustment
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The fulfillment details for this order event.
      attr_reader :fulfillment
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Time at which this event occurred. Measured in seconds since the Unix epoch.
      attr_reader :occurred_at
      # The delegated checkout order associated with this order event.
      attr_reader :order
      # The requested session associated with this order event.
      attr_reader :requested_session
      # The type of order event.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { adjustment: Adjustment, fulfillment: Fulfillment }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
