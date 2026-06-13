# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    # An order represents the post-checkout lifecycle of a delegated checkout purchase.
    class Order < APIResource
      OBJECT_NAME = "delegated_checkout.order"
      def self.object_name
        "delegated_checkout.order"
      end

      class LineItem < ::Stripe::StripeObject
        class ProductDetails < ::Stripe::StripeObject
          # The item description.
          attr_reader :description
          # The item images.
          attr_reader :images
          # The item title.
          attr_reader :title

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Quantity < ::Stripe::StripeObject
          # The current quantity.
          attr_reader :current
          # The ordered quantity.
          attr_reader :ordered
          # The shipped quantity.
          attr_reader :shipped

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Totals < ::Stripe::StripeObject
          # The base amount for the line item.
          attr_reader :base_amount
          # The discount amount for the line item.
          attr_reader :discount
          # The subtotal amount for the line item.
          attr_reader :subtotal
          # The tax amount for the line item.
          attr_reader :tax
          # The total amount for the line item.
          attr_reader :total

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The order line item key.
        attr_reader :key
        # Attribute for field product_details
        attr_reader :product_details
        # Attribute for field quantity
        attr_reader :quantity
        # The SKU ID of the line item.
        attr_reader :sku_id
        # The totals for this line item.
        attr_reader :totals
        # The line item unit amount.
        attr_reader :unit_amount

        def self.inner_class_types
          @inner_class_types = { product_details: ProductDetails, quantity: Quantity, totals: Totals }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Totals < ::Stripe::StripeObject
        # The discount amount for the order.
        attr_reader :discount
        # The fulfillment amount for the order.
        attr_reader :fulfillment
        # The subtotal amount for the order.
        attr_reader :subtotal
        # The tax amount for the order.
        attr_reader :tax
        # The total amount for the order.
        attr_reader :total

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Unique identifier for the object.
      attr_reader :id
      # The latest order event for this order.
      attr_reader :latest_order_event
      # The line items in this order.
      attr_reader :line_items
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The permalink URL for this order.
      attr_reader :permalink_url
      # The requested session associated with this order.
      attr_reader :requested_session
      # The seller reference for this order.
      attr_reader :seller_reference
      # The totals for this order.
      attr_reader :totals

      def self.inner_class_types
        @inner_class_types = { line_items: LineItem, totals: Totals }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
