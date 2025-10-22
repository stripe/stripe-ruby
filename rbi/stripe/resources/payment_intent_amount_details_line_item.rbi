# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentAmountDetailsLineItem < APIResource
    class PaymentMethodOptions < ::Stripe::StripeObject
      class Card < ::Stripe::StripeObject
        # Attribute for field commodity_code
        sig { returns(T.nilable(String)) }
        def commodity_code; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CardPresent < ::Stripe::StripeObject
        # Attribute for field commodity_code
        sig { returns(T.nilable(String)) }
        def commodity_code; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Klarna < ::Stripe::StripeObject
        # Attribute for field image_url
        sig { returns(T.nilable(String)) }
        def image_url; end
        # Attribute for field product_url
        sig { returns(T.nilable(String)) }
        def product_url; end
        # Attribute for field reference
        sig { returns(T.nilable(String)) }
        def reference; end
        # Attribute for field subscription_reference
        sig { returns(T.nilable(String)) }
        def subscription_reference; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Paypal < ::Stripe::StripeObject
        # Type of the line item.
        sig { returns(T.nilable(String)) }
        def category; end
        # Description of the line item.
        sig { returns(T.nilable(String)) }
        def description; end
        # The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
        sig { returns(T.nilable(String)) }
        def sold_by; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field card
      sig { returns(T.nilable(Card)) }
      def card; end
      # Attribute for field card_present
      sig { returns(T.nilable(CardPresent)) }
      def card_present; end
      # Attribute for field klarna
      sig { returns(T.nilable(Klarna)) }
      def klarna; end
      # Attribute for field paypal
      sig { returns(T.nilable(Paypal)) }
      def paypal; end
      def self.inner_class_types
        @inner_class_types = {card: Card, card_present: CardPresent, klarna: Klarna, paypal: Paypal}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Tax < ::Stripe::StripeObject
      # Total portion of the amount that is for tax.
      sig { returns(Integer) }
      def total_tax_amount; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The amount an item was discounted for. Positive integer.
    sig { returns(T.nilable(Integer)) }
    def discount_amount; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Payment method-specific information for line items.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    def payment_method_options; end
    # Unique identifier of the product. At most 12 characters long.
    sig { returns(T.nilable(String)) }
    def product_code; end
    # Name of the product. At most 100 characters long.
    sig { returns(String) }
    def product_name; end
    # Number of items of the product. Positive integer.
    sig { returns(Integer) }
    def quantity; end
    # Contains information about the tax on the item.
    sig { returns(T.nilable(Tax)) }
    def tax; end
    # Cost of the product. Non-negative integer.
    sig { returns(Integer) }
    def unit_cost; end
    # A unit of measure for the line item, such as gallons, feet, meters, etc.
    sig { returns(T.nilable(String)) }
    def unit_of_measure; end
  end
end