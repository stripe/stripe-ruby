# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    # An order event represents a change to a delegated checkout order.
    class OrderEvent < APIResource
      class Adjustment < ::Stripe::StripeObject
        class LineItem < ::Stripe::StripeObject
          # The line item key.
          sig { returns(String) }
          def key; end
          # The quantity associated with the order event.
          sig { returns(Integer) }
          def quantity; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount associated with the adjustment.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        # The currency associated with the adjustment amount.
        sig { returns(T.nilable(String)) }
        def currency; end
        # The description of the adjustment.
        sig { returns(String) }
        def description; end
        # The line items associated with the adjustment.
        sig { returns(T.nilable(T::Array[LineItem])) }
        def line_items; end
        # The status of the adjustment.
        sig { returns(String) }
        def status; end
        # The type of adjustment.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {line_items: LineItem}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Fulfillment < ::Stripe::StripeObject
        class LineItem < ::Stripe::StripeObject
          # The line item key.
          sig { returns(String) }
          def key; end
          # The quantity associated with the order event.
          sig { returns(Integer) }
          def quantity; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The carrier for the fulfillment.
        sig { returns(T.nilable(String)) }
        def carrier; end
        # Time at which the fulfillment was delivered. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def delivered_at; end
        # The line items associated with the fulfillment.
        sig { returns(T::Array[LineItem]) }
        def line_items; end
        # Time at which the fulfillment shipped. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def shipped_at; end
        # The status of the fulfillment.
        sig { returns(String) }
        def status; end
        # The tracking number for the fulfillment.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
        # The tracking URL for the fulfillment.
        sig { returns(T.nilable(String)) }
        def tracking_url; end
        def self.inner_class_types
          @inner_class_types = {line_items: LineItem}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The adjustment details for this order event.
      sig { returns(T.nilable(Adjustment)) }
      def adjustment; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The fulfillment details for this order event.
      sig { returns(T.nilable(Fulfillment)) }
      def fulfillment; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Time at which this event occurred. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def occurred_at; end
      # The delegated checkout order associated with this order event.
      sig { returns(String) }
      def order; end
      # The requested session associated with this order event.
      sig { returns(String) }
      def requested_session; end
      # The type of order event.
      sig { returns(String) }
      def type; end
    end
  end
end