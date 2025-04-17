# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentAmountDetailsLineItem < APIResource
    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        # Attribute for field commodity_code
        sig { returns(T.nilable(String)) }
        attr_reader :commodity_code
      end
      class Klarna < Stripe::StripeObject
        # Attribute for field image_url
        sig { returns(T.nilable(String)) }
        attr_reader :image_url
        # Attribute for field product_url
        sig { returns(T.nilable(String)) }
        attr_reader :product_url
      end
      class Paypal < Stripe::StripeObject
        # Type of the line item.
        sig { returns(String) }
        attr_reader :category
        # Description of the line item.
        sig { returns(String) }
        attr_reader :description
        # The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
        sig { returns(String) }
        attr_reader :sold_by
      end
      # Attribute for field card
      sig { returns(Card) }
      attr_reader :card
      # Attribute for field klarna
      sig { returns(Klarna) }
      attr_reader :klarna
      # Attribute for field paypal
      sig { returns(Paypal) }
      attr_reader :paypal
    end
    class Tax < Stripe::StripeObject
      # Total portion of the amount that is for tax.
      sig { returns(Integer) }
      attr_reader :total_tax_amount
    end
    # The amount an item was discounted for. Positive integer.
    sig { returns(T.nilable(Integer)) }
    attr_reader :discount_amount
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Payment method-specific information for line items.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    attr_reader :payment_method_options
    # Unique identifier of the product. At most 12 characters long.
    sig { returns(T.nilable(String)) }
    attr_reader :product_code
    # Name of the product. At most 100 characters long.
    sig { returns(String) }
    attr_reader :product_name
    # Number of items of the product. Positive integer.
    sig { returns(Integer) }
    attr_reader :quantity
    # Contains information about the tax on the item.
    sig { returns(T.nilable(Tax)) }
    attr_reader :tax
    # Cost of the product. Non-negative integer.
    sig { returns(Integer) }
    attr_reader :unit_cost
    # A unit of measure for the line item, such as gallons, feet, meters, etc.
    sig { returns(T.nilable(String)) }
    attr_reader :unit_of_measure
  end
end