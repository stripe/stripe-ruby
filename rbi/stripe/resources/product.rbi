# File generated from our OpenAPI spec
# frozen_string_literal: true

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
      sig { returns(String) }
      attr_reader :name
    end
    class PackageDimensions < Stripe::StripeObject
      sig { returns(Float) }
      attr_reader :height
      sig { returns(Float) }
      attr_reader :length
      sig { returns(Float) }
      attr_reader :weight
      sig { returns(Float) }
      attr_reader :width
    end
    class Provisioning < Stripe::StripeObject
      class GiftCard < Stripe::StripeObject
        class FixedAmount < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(String) }
          attr_reader :currency
        end
        sig { returns(T.nilable(FixedAmount)) }
        attr_reader :fixed_amount
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T.nilable(GiftCard)) }
      attr_reader :gift_card
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(T::Boolean) }
    # Whether the product is currently available for purchase.
    attr_reader :active
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(T.any(String, Stripe::Price))) }
    # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
    attr_reader :default_price
    sig { returns(T.nilable(String)) }
    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    attr_reader :description
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Array[String]) }
    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    attr_reader :images
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Array[MarketingFeature]) }
    # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
    attr_reader :marketing_features
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # The product's name, meant to be displayable to the customer.
    attr_reader :name
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(PackageDimensions)) }
    # The dimensions of this product for shipping purposes.
    attr_reader :package_dimensions
    sig { returns(T.nilable(Provisioning)) }
    # Provisioning configuration for this product.
    attr_reader :provisioning
    sig { returns(T.nilable(T::Boolean)) }
    # Whether this product is shipped (i.e., physical goods).
    attr_reader :shippable
    sig { returns(T.nilable(String)) }
    # Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used. Only used for subscription payments.
    attr_reader :statement_descriptor
    sig { returns(T.nilable(T.any(String, Stripe::TaxCode))) }
    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
    attr_reader :tax_code
    sig { returns(String) }
    # The type of the product. The product is either of type `good`, which is eligible for use with Orders and SKUs, or `service`, which is eligible for use with Subscriptions and Plans.
    attr_reader :type
    sig { returns(T.nilable(String)) }
    # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
    attr_reader :unit_label
    sig { returns(Integer) }
    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    attr_reader :updated
    sig { returns(T.nilable(String)) }
    # A URL of a publicly-accessible webpage for this product.
    attr_reader :url
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end