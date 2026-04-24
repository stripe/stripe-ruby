# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Products describe the specific goods or services you offer to your customers.
  # For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product.
  # They can be used in conjunction with [Prices](https://api.stripe.com#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.
  #
  # Related guides: [Set up a subscription](https://docs.stripe.com/billing/subscriptions/set-up-subscription),
  # [share a Payment Link](https://docs.stripe.com/payment-links),
  # [accept payments with Checkout](https://docs.stripe.com/payments/accept-a-payment#create-product-prices-upfront),
  # and more about [Products and Prices](https://docs.stripe.com/products-prices/overview)
  class Product < APIResource
    class Identifiers < ::Stripe::StripeObject
      # European Article Number (EAN) consisting of 8 or 13 digits and optional dashes. You may optionally provide a leading 0 for a total of 14 digits. The final digit is a validated check digit.
      sig { returns(T.nilable(String)) }
      def ean; end
      # Global Trade Item Number (GTIN) consisting of 8, 12, 13, or 14 digits and optional dashes. The final digit is a validated check digit.
      sig { returns(T.nilable(String)) }
      def gtin; end
      # International Standard Book Number (ISBN) consisting of 10 or 13 digits and optional dashes. The final digit is a validated check digit. For ISBN-10, the final digit may be a `X`.
      sig { returns(T.nilable(String)) }
      def isbn; end
      # Japanese Article Number (JAN) consisting of 13 digits and optional dashes. The first two digits must either be `45` or `49`. The final digit is a validated check digit.
      sig { returns(T.nilable(String)) }
      def jan; end
      # Manufacturer Part Number (MPN). May include up to 70 alphanumeric characters and dashes.
      sig { returns(T.nilable(String)) }
      def mpn; end
      # National Stock Number (NSN) consisting of 13 digits and optional dashes. The seventh character may also be alphanumeric.
      sig { returns(T.nilable(String)) }
      def nsn; end
      # Universal Product Code (UPC) consisting of 12 digits and optional dashes. The final digit is a validated check digit.
      sig { returns(T.nilable(String)) }
      def upc; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class MarketingFeature < ::Stripe::StripeObject
      # The marketing feature name. Up to 80 characters long.
      sig { returns(T.nilable(String)) }
      def name; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class PackageDimensions < ::Stripe::StripeObject
      # Height, in inches.
      sig { returns(Float) }
      def height; end
      # Length, in inches.
      sig { returns(Float) }
      def length; end
      # Weight, in ounces.
      sig { returns(Float) }
      def weight; end
      # Width, in inches.
      sig { returns(Float) }
      def width; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Whether the product is currently available for purchase.
    sig { returns(T::Boolean) }
    def active; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # The ID of the [Price](https://docs.stripe.com/api/prices) object that is the default price for this product.
    sig { returns(T.nilable(T.any(String, ::Stripe::Price))) }
    def default_price; end
    # Always true for a deleted object
    sig { returns(T.nilable(T::Boolean)) }
    def deleted; end
    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    sig { returns(T.nilable(String)) }
    def description; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Attribute for field identifiers
    sig { returns(T.nilable(Identifiers)) }
    def identifiers; end
    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    sig { returns(T::Array[String]) }
    def images; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://docs.stripe.com/payments/checkout/pricing-table).
    sig { returns(T::Array[MarketingFeature]) }
    def marketing_features; end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    def metadata; end
    # The product's name, meant to be displayable to the customer.
    sig { returns(String) }
    def name; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The dimensions of this product for shipping purposes.
    sig { returns(T.nilable(PackageDimensions)) }
    def package_dimensions; end
    # Whether this product is shipped (i.e., physical goods).
    sig { returns(T.nilable(T::Boolean)) }
    def shippable; end
    # Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used. Only used for subscription payments.
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    # A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
    sig { returns(T.nilable(T.any(String, ::Stripe::TaxCode))) }
    def tax_code; end
    # The type of the product. The product is either of type `good`, which is eligible for use with Orders and SKUs, or `service`, which is eligible for use with Subscriptions and Plans.
    sig { returns(String) }
    def type; end
    # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
    sig { returns(T.nilable(String)) }
    def unit_label; end
    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def updated; end
    # A URL of a publicly-accessible webpage for this product.
    sig { returns(T.nilable(String)) }
    def url; end
    # Creates a new product object.
    sig {
      params(params: T.any(::Stripe::ProductCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Product)
     }
    def self.create(params = {}, opts = {}); end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    sig {
      params(id: String, params: T.any(::Stripe::ProductDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Product)
     }
    def self.delete(id, params = {}, opts = {}); end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    sig {
      params(params: T.any(::Stripe::ProductDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Product)
     }
    def delete(params = {}, opts = {}); end

    # Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.
    sig {
      params(params: T.any(::Stripe::ProductListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::ProductSearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::SearchResultObject)
     }
    def self.search(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::ProductSearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, blk: T.untyped).returns(::Stripe::SearchResultObject)
     }
    def self.search_auto_paging_each(params = {}, opts = {}, &blk); end

    # Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::ProductUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Product)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end