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
    class DeleteParams < Stripe::RequestParams

    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class MarketingFeature < Stripe::RequestParams
        # The marketing feature name. Up to 80 characters long.
        sig { returns(String) }
        attr_accessor :name
        sig { params(name: String).void }
        def initialize(name: nil); end
      end
      class PackageDimensions < Stripe::RequestParams
        # Height, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :height
        # Length, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :length
        # Weight, in ounces. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :weight
        # Width, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :width
        sig { params(height: Float, length: Float, weight: Float, width: Float).void }
        def initialize(height: nil, length: nil, weight: nil, width: nil); end
      end
      # Whether the product is available for purchase.
      sig { returns(T::Boolean) }
      attr_accessor :active
      # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
      sig { returns(String) }
      attr_accessor :default_price
      # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :images
      # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
      sig { returns(T.nilable(T::Array[::Stripe::Product::UpdateParams::MarketingFeature])) }
      attr_accessor :marketing_features
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The product's name, meant to be displayable to the customer.
      sig { returns(String) }
      attr_accessor :name
      # The dimensions of this product for shipping purposes.
      sig { returns(T.nilable(::Stripe::Product::UpdateParams::PackageDimensions)) }
      attr_accessor :package_dimensions
      # Whether this product is shipped (i.e., physical goods).
      sig { returns(T::Boolean) }
      attr_accessor :shippable
      # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
      #
      # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
      #  It must contain at least one letter. May only be set if `type=service`. Only used for subscription payments.
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_code
      # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal. May only be set if `type=service`.
      sig { returns(T.nilable(String)) }
      attr_accessor :unit_label
      # A URL of a publicly-accessible webpage for this product.
      sig { returns(T.nilable(String)) }
      attr_accessor :url
      sig {
        params(active: T::Boolean, default_price: String, description: T.nilable(String), expand: T::Array[String], images: T.nilable(T::Array[String]), marketing_features: T.nilable(T::Array[::Stripe::Product::UpdateParams::MarketingFeature]), metadata: T.nilable(T::Hash[String, String]), name: String, package_dimensions: T.nilable(::Stripe::Product::UpdateParams::PackageDimensions), shippable: T::Boolean, statement_descriptor: String, tax_code: T.nilable(String), unit_label: T.nilable(String), url: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        default_price: nil,
        description: nil,
        expand: nil,
        images: nil,
        marketing_features: nil,
        metadata: nil,
        name: nil,
        package_dimensions: nil,
        shippable: nil,
        statement_descriptor: nil,
        tax_code: nil,
        unit_label: nil,
        url: nil
      ); end
    end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return products that are active or inactive (e.g., pass `false` to list all inactive products).
      sig { returns(T::Boolean) }
      attr_accessor :active
      # Only return products that were created during the given date interval.
      sig { returns(T.any(::Stripe::Product::ListParams::Created, Integer)) }
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Only return products with the given IDs. Cannot be used with [starting_after](https://stripe.com/docs/api#list_products-starting_after) or [ending_before](https://stripe.com/docs/api#list_products-ending_before).
      sig { returns(T::Array[String]) }
      attr_accessor :ids
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # Only return products that can be shipped (i.e., physical, not digital products).
      sig { returns(T::Boolean) }
      attr_accessor :shippable
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      # Only return products of this type.
      sig { returns(String) }
      attr_accessor :type
      # Only return products with the given url.
      sig { returns(String) }
      attr_accessor :url
      sig {
        params(active: T::Boolean, created: T.any(::Stripe::Product::ListParams::Created, Integer), ending_before: String, expand: T::Array[String], ids: T::Array[String], limit: Integer, shippable: T::Boolean, starting_after: String, type: String, url: String).void
       }
      def initialize(
        active: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        ids: nil,
        limit: nil,
        shippable: nil,
        starting_after: nil,
        type: nil,
        url: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class DefaultPriceData < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          class CustomUnitAmount < Stripe::RequestParams
            # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The maximum unit amount the customer can specify for this item.
            sig { returns(Integer) }
            attr_accessor :maximum
            # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
            sig { returns(Integer) }
            attr_accessor :minimum
            # The starting unit amount which can be updated by the customer.
            sig { returns(Integer) }
            attr_accessor :preset
            sig {
              params(enabled: T::Boolean, maximum: Integer, minimum: Integer, preset: Integer).void
             }
            def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil); end
          end
          class Tier < Stripe::RequestParams
            # The flat billing amount for an entire tier, regardless of the number of units in the tier.
            sig { returns(Integer) }
            attr_accessor :flat_amount
            # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
            sig { returns(String) }
            attr_accessor :flat_amount_decimal
            # The per unit billing amount for each individual unit for which this tier applies.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(String) }
            attr_accessor :unit_amount_decimal
            # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
            sig { returns(T.any(String, Integer)) }
            attr_accessor :up_to
            sig {
              params(flat_amount: Integer, flat_amount_decimal: String, unit_amount: Integer, unit_amount_decimal: String, up_to: T.any(String, Integer)).void
             }
            def initialize(
              flat_amount: nil,
              flat_amount_decimal: nil,
              unit_amount: nil,
              unit_amount_decimal: nil,
              up_to: nil
            ); end
          end
          # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
          sig {
            returns(::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::CustomUnitAmount)
           }
          attr_accessor :custom_unit_amount
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(String) }
          attr_accessor :tax_behavior
          # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
          sig {
            returns(T::Array[::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::Tier])
           }
          attr_accessor :tiers
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(Integer) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(String) }
          attr_accessor :unit_amount_decimal
          sig {
            params(custom_unit_amount: ::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::CustomUnitAmount, tax_behavior: String, tiers: T::Array[::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::Tier], unit_amount: Integer, unit_amount_decimal: String).void
           }
          def initialize(
            custom_unit_amount: nil,
            tax_behavior: nil,
            tiers: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        class CustomUnitAmount < Stripe::RequestParams
          # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The maximum unit amount the customer can specify for this item.
          sig { returns(Integer) }
          attr_accessor :maximum
          # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
          sig { returns(Integer) }
          attr_accessor :minimum
          # The starting unit amount which can be updated by the customer.
          sig { returns(Integer) }
          attr_accessor :preset
          sig {
            params(enabled: T::Boolean, maximum: Integer, minimum: Integer, preset: Integer).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil); end
        end
        class Recurring < Stripe::RequestParams
          # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          attr_accessor :interval
          # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
          sig { returns(Integer) }
          attr_accessor :interval_count
          sig { params(interval: String, interval_count: Integer).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        sig {
          returns(T::Hash[String, ::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions])
         }
        attr_accessor :currency_options
        # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
        sig { returns(::Stripe::Product::CreateParams::DefaultPriceData::CustomUnitAmount) }
        attr_accessor :custom_unit_amount
        # The recurring components of a price such as `interval` and `interval_count`.
        sig { returns(::Stripe::Product::CreateParams::DefaultPriceData::Recurring) }
        attr_accessor :recurring
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(String) }
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount`, `unit_amount_decimal`, or `custom_unit_amount` is required.
        sig { returns(Integer) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(String) }
        attr_accessor :unit_amount_decimal
        sig {
          params(currency: String, currency_options: T::Hash[String, ::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions], custom_unit_amount: ::Stripe::Product::CreateParams::DefaultPriceData::CustomUnitAmount, recurring: ::Stripe::Product::CreateParams::DefaultPriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
         }
        def initialize(
          currency: nil,
          currency_options: nil,
          custom_unit_amount: nil,
          recurring: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class MarketingFeature < Stripe::RequestParams
        # The marketing feature name. Up to 80 characters long.
        sig { returns(String) }
        attr_accessor :name
        sig { params(name: String).void }
        def initialize(name: nil); end
      end
      class PackageDimensions < Stripe::RequestParams
        # Height, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :height
        # Length, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :length
        # Weight, in ounces. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :weight
        # Width, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        attr_accessor :width
        sig { params(height: Float, length: Float, weight: Float, width: Float).void }
        def initialize(height: nil, length: nil, weight: nil, width: nil); end
      end
      class Provisioning < Stripe::RequestParams
        class GiftCard < Stripe::RequestParams
          class FixedAmount < Stripe::RequestParams
            # The initial amount with which the provisioned gift card will be created.
            sig { returns(Integer) }
            attr_accessor :amount
            # Attribute for param field currency
            sig { returns(String) }
            attr_accessor :currency
            sig { params(amount: Integer, currency: String).void }
            def initialize(amount: nil, currency: nil); end
          end
          # Attribute for param field fixed_amount
          sig { returns(::Stripe::Product::CreateParams::Provisioning::GiftCard::FixedAmount) }
          attr_accessor :fixed_amount
          # The specific type of gift_card provisioning, only `fixed_amount` currently supported.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(fixed_amount: ::Stripe::Product::CreateParams::Provisioning::GiftCard::FixedAmount, type: String).void
           }
          def initialize(fixed_amount: nil, type: nil); end
        end
        # Attribute for param field gift_card
        sig { returns(::Stripe::Product::CreateParams::Provisioning::GiftCard) }
        attr_accessor :gift_card
        # The type of provisioning, only `gift_card` currently supported.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(gift_card: ::Stripe::Product::CreateParams::Provisioning::GiftCard, type: String).void
         }
        def initialize(gift_card: nil, type: nil); end
      end
      # Whether the product is currently available for purchase. Defaults to `true`.
      sig { returns(T::Boolean) }
      attr_accessor :active
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object. This Price will be set as the default price for this product.
      sig { returns(::Stripe::Product::CreateParams::DefaultPriceData) }
      attr_accessor :default_price_data
      # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account.
      sig { returns(String) }
      attr_accessor :id
      # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
      sig { returns(T::Array[String]) }
      attr_accessor :images
      # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
      sig { returns(T::Array[::Stripe::Product::CreateParams::MarketingFeature]) }
      attr_accessor :marketing_features
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # The product's name, meant to be displayable to the customer.
      sig { returns(String) }
      attr_accessor :name
      # The dimensions of this product for shipping purposes.
      sig { returns(::Stripe::Product::CreateParams::PackageDimensions) }
      attr_accessor :package_dimensions
      # Provisioning configuration for this product.
      sig { returns(::Stripe::Product::CreateParams::Provisioning) }
      attr_accessor :provisioning
      # Whether this product is shipped (i.e., physical goods).
      sig { returns(T::Boolean) }
      attr_accessor :shippable
      # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
      #
      # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
      #  It must contain at least one letter. Only used for subscription payments.
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(String) }
      attr_accessor :tax_code
      # The type of the product. Defaults to `service` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to `good` to use this product with Orders and SKUs. On API versions before `2018-02-05`, this field defaults to `good` for compatibility reasons.
      sig { returns(String) }
      attr_accessor :type
      # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
      sig { returns(String) }
      attr_accessor :unit_label
      # A URL of a publicly-accessible webpage for this product.
      sig { returns(String) }
      attr_accessor :url
      sig {
        params(active: T::Boolean, default_price_data: ::Stripe::Product::CreateParams::DefaultPriceData, description: String, expand: T::Array[String], id: String, images: T::Array[String], marketing_features: T::Array[::Stripe::Product::CreateParams::MarketingFeature], metadata: T::Hash[String, String], name: String, package_dimensions: ::Stripe::Product::CreateParams::PackageDimensions, provisioning: ::Stripe::Product::CreateParams::Provisioning, shippable: T::Boolean, statement_descriptor: String, tax_code: String, type: String, unit_label: String, url: String).void
       }
      def initialize(
        active: nil,
        default_price_data: nil,
        description: nil,
        expand: nil,
        id: nil,
        images: nil,
        marketing_features: nil,
        metadata: nil,
        name: nil,
        package_dimensions: nil,
        provisioning: nil,
        shippable: nil,
        statement_descriptor: nil,
        tax_code: nil,
        type: nil,
        unit_label: nil,
        url: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(String) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for products](https://stripe.com/docs/search#query-fields-for-products).
      sig { returns(String) }
      attr_accessor :query
      sig { params(expand: T::Array[String], limit: Integer, page: String, query: String).void }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    # Creates a new product object.
    sig {
      params(params: T.any(::Stripe::Product::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Product)
     }
    def self.create(params = {}, opts = {}); end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    sig {
      params(id: String, params: T.any(::Stripe::Product::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Product)
     }
    def self.delete(id, params = {}, opts = {}); end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    sig {
      params(params: T.any(::Stripe::Product::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Product)
     }
    def delete(params = {}, opts = {}); end

    # Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.
    sig {
      params(params: T.any(::Stripe::Product::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::Product::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def self.search(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::Product::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, blk: T.untyped).returns(Stripe::SearchResultObject)
     }
    def self.search_auto_paging_each(params = {}, opts = {}, &blk); end

    # Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::Product::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Product)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end