# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentAmountDetailsLineItem < APIResource
    OBJECT_NAME = "payment_intent_amount_details_line_item"
    def self.object_name
      "payment_intent_amount_details_line_item"
    end

    class PaymentMethodOptions < ::Stripe::StripeObject
      class Card < ::Stripe::StripeObject
        # Attribute for field commodity_code
        attr_reader :commodity_code

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CardPresent < ::Stripe::StripeObject
        # Attribute for field commodity_code
        attr_reader :commodity_code

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Klarna < ::Stripe::StripeObject
        # Attribute for field image_url
        attr_reader :image_url
        # Attribute for field product_url
        attr_reader :product_url
        # Attribute for field reference
        attr_reader :reference
        # Attribute for field subscription_reference
        attr_reader :subscription_reference

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Paypal < ::Stripe::StripeObject
        # Type of the line item.
        attr_reader :category
        # Description of the line item.
        attr_reader :description
        # The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
        attr_reader :sold_by

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field card
      attr_reader :card
      # Attribute for field card_present
      attr_reader :card_present
      # Attribute for field klarna
      attr_reader :klarna
      # Attribute for field paypal
      attr_reader :paypal

      def self.inner_class_types
        @inner_class_types = { card: Card, card_present: CardPresent, klarna: Klarna, paypal: Paypal }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Tax < ::Stripe::StripeObject
      # Total portion of the amount that is for tax.
      attr_reader :total_tax_amount

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The amount an item was discounted for. Positive integer.
    attr_reader :discount_amount
    # Unique identifier for the object.
    attr_reader :id
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Payment method-specific information for line items.
    attr_reader :payment_method_options
    # Unique identifier of the product. At most 12 characters long.
    attr_reader :product_code
    # Name of the product. At most 100 characters long.
    attr_reader :product_name
    # Number of items of the product. Positive integer.
    attr_reader :quantity
    # Contains information about the tax on the item.
    attr_reader :tax
    # Cost of the product. Non-negative integer.
    attr_reader :unit_cost
    # A unit of measure for the line item, such as gallons, feet, meters, etc.
    attr_reader :unit_of_measure

    def self.inner_class_types
      @inner_class_types = { payment_method_options: PaymentMethodOptions, tax: Tax }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
