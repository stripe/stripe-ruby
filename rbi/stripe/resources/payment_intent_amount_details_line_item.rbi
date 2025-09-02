# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentAmountDetailsLineItem < APIResource
    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        # Attribute for field commodity_code
        sig { returns(T.nilable(String)) }
        def commodity_code; end
      end
      class CardPresent < Stripe::StripeObject
        # Attribute for field commodity_code
        sig { returns(T.nilable(String)) }
        def commodity_code; end
      end
      class Klarna < Stripe::StripeObject
        # Attribute for field image_url
        sig { returns(T.nilable(String)) }
        def image_url; end
        # Attribute for field product_url
        sig { returns(T.nilable(String)) }
        def product_url; end
      end
      class Paypal < Stripe::StripeObject
        # Type of the line item.
        sig { returns(String) }
        def category; end
        # Description of the line item.
        sig { returns(String) }
        def description; end
        # The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
        sig { returns(String) }
        def sold_by; end
      end
      # Attribute for field card
      sig { returns(Card) }
      def card; end
      # Attribute for field card_present
      sig { returns(CardPresent) }
      def card_present; end
      # Attribute for field klarna
      sig { returns(Klarna) }
      def klarna; end
      # Attribute for field paypal
      sig { returns(Paypal) }
      def paypal; end
    end
    class Tax < Stripe::StripeObject
      # Total portion of the amount that is for tax.
      sig { returns(Integer) }
      def total_tax_amount; end
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