# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Products describe the specific goods or services you offer to your customers.
  # For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product.
  # They can be used in conjunction with [Prices](https://stripe.com/docs/api#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription),
  # [share a Payment Link](https://stripe.com/docs/payment-links),
  # [accept payments with Checkout](https://stripe.com/docs/payments/accept-a-payment#create-product-prices-upfront),
  # and more about [Products and Prices](https://stripe.com/docs/products-prices/overview)
  class Product < APIResource
    class MarketingFeature < Stripe::StripeObject
      # The marketing feature name. Up to 80 characters long.
      sig { returns(String) }
      attr_reader :name
    end
    class PackageDimensions < Stripe::StripeObject
      # Height, in inches.
      sig { returns(Float) }
      attr_reader :height
      # Length, in inches.
      sig { returns(Float) }
      attr_reader :length
      # Weight, in ounces.
      sig { returns(Float) }
      attr_reader :weight
      # Width, in inches.
      sig { returns(Float) }
      attr_reader :width
    end
    class Provisioning < Stripe::StripeObject
      class GiftCard < Stripe::StripeObject
        class FixedAmount < Stripe::StripeObject
          # The initial amount with which the provisioned gift card will be created.
          sig { returns(Integer) }
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_reader :currency
        end
        # Attribute for field fixed_amount
        sig { returns(T.nilable(FixedAmount)) }
        attr_reader :fixed_amount
        # The specific type of gift_card provisioning, only `fixed_amount` currently supported.
        sig { returns(String) }
        attr_reader :type
      end
      # Attribute for field gift_card
      sig { returns(T.nilable(GiftCard)) }
      attr_reader :gift_card
      # The type of provisioning, only `gift_card` currently supported.
      sig { returns(String) }
      attr_reader :type
    end
    # Whether the product is currently available for purchase.
    sig { returns(T::Boolean) }
    attr_reader :active

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
    sig { returns(T.nilable(T.any(String, Stripe::Price))) }
    attr_reader :default_price

    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    sig { returns(T::Array[String]) }
    attr_reader :images

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
    sig { returns(T::Array[MarketingFeature]) }
    attr_reader :marketing_features

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # The product's name, meant to be displayable to the customer.
    sig { returns(String) }
    attr_reader :name

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The dimensions of this product for shipping purposes.
    sig { returns(T.nilable(PackageDimensions)) }
    attr_reader :package_dimensions

    # Provisioning configuration for this product.
    sig { returns(T.nilable(Provisioning)) }
    attr_reader :provisioning

    # Whether this product is shipped (i.e., physical goods).
    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :shippable

    # Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used. Only used for subscription payments.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
    sig { returns(T.nilable(T.any(String, Stripe::TaxCode))) }
    attr_reader :tax_code

    # The type of the product. The product is either of type `good`, which is eligible for use with Orders and SKUs, or `service`, which is eligible for use with Subscriptions and Plans.
    sig { returns(String) }
    attr_reader :type

    # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
    sig { returns(T.nilable(String)) }
    attr_reader :unit_label

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :updated

    # A URL of a publicly-accessible webpage for this product.
    sig { returns(T.nilable(String)) }
    attr_reader :url

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end