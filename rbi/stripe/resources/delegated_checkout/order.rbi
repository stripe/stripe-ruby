# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    # An order represents the post-checkout lifecycle of a delegated checkout purchase.
    class Order < APIResource
      class LineItem < ::Stripe::StripeObject
        class ProductDetails < ::Stripe::StripeObject
          # The item description.
          sig { returns(T.nilable(String)) }
          def description; end
          # The item images.
          sig { returns(T.nilable(T::Array[String])) }
          def images; end
          # The item title.
          sig { returns(String) }
          def title; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Quantity < ::Stripe::StripeObject
          # The current quantity.
          sig { returns(Integer) }
          def current; end
          # The ordered quantity.
          sig { returns(Integer) }
          def ordered; end
          # The shipped quantity.
          sig { returns(Integer) }
          def shipped; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Totals < ::Stripe::StripeObject
          # The base amount for the line item.
          sig { returns(T.nilable(Integer)) }
          def base_amount; end
          # The discount amount for the line item.
          sig { returns(T.nilable(Integer)) }
          def discount; end
          # The subtotal amount for the line item.
          sig { returns(T.nilable(Integer)) }
          def subtotal; end
          # The tax amount for the line item.
          sig { returns(T.nilable(Integer)) }
          def tax; end
          # The total amount for the line item.
          sig { returns(T.nilable(Integer)) }
          def total; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The order line item key.
        sig { returns(String) }
        def key; end
        # Attribute for field product_details
        sig { returns(ProductDetails) }
        def product_details; end
        # Attribute for field quantity
        sig { returns(Quantity) }
        def quantity; end
        # The SKU ID of the line item.
        sig { returns(String) }
        def sku_id; end
        # The totals for this line item.
        sig { returns(T.nilable(Totals)) }
        def totals; end
        # The line item unit amount.
        sig { returns(Integer) }
        def unit_amount; end
        def self.inner_class_types
          @inner_class_types = {product_details: ProductDetails, quantity: Quantity, totals: Totals}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Totals < ::Stripe::StripeObject
        # The discount amount for the order.
        sig { returns(T.nilable(Integer)) }
        def discount; end
        # The fulfillment amount for the order.
        sig { returns(T.nilable(Integer)) }
        def fulfillment; end
        # The subtotal amount for the order.
        sig { returns(T.nilable(Integer)) }
        def subtotal; end
        # The tax amount for the order.
        sig { returns(T.nilable(Integer)) }
        def tax; end
        # The total amount for the order.
        sig { returns(T.nilable(Integer)) }
        def total; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The latest order event for this order.
      sig { returns(T.nilable(::Stripe::DelegatedCheckout::OrderEvent)) }
      def latest_order_event; end
      # The line items in this order.
      sig { returns(T::Array[LineItem]) }
      def line_items; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The permalink URL for this order.
      sig { returns(T.nilable(String)) }
      def permalink_url; end
      # The requested session associated with this order.
      sig { returns(String) }
      def requested_session; end
      # The seller reference for this order.
      sig { returns(T.nilable(String)) }
      def seller_reference; end
      # The totals for this order.
      sig { returns(T.nilable(Totals)) }
      def totals; end
    end
  end
end