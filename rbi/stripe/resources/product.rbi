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
      def name; end
    end
    class PackageDimensions < Stripe::StripeObject
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
    end
    # Whether the product is currently available for purchase.
    sig { returns(T::Boolean) }
    def active; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
    sig { returns(T.nilable(T.any(String, Stripe::Price))) }
    def default_price; end
    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    sig { returns(T.nilable(String)) }
    def description; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    sig { returns(T::Array[String]) }
    def images; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
    sig { returns(T::Array[MarketingFeature]) }
    def marketing_features; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
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
    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
    sig { returns(T.nilable(T.any(String, Stripe::TaxCode))) }
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
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    def deleted; end
    class DeleteParams < Stripe::RequestParams; end
    class UpdateParams < Stripe::RequestParams
      class MarketingFeature < Stripe::RequestParams
        # The marketing feature name. Up to 80 characters long.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        sig { params(name: String).void }
        def initialize(name: nil); end
      end
      class PackageDimensions < Stripe::RequestParams
        # Height, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def height; end
        sig { params(_height: Float).returns(Float) }
        def height=(_height); end
        # Length, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def length; end
        sig { params(_length: Float).returns(Float) }
        def length=(_length); end
        # Weight, in ounces. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def weight; end
        sig { params(_weight: Float).returns(Float) }
        def weight=(_weight); end
        # Width, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def width; end
        sig { params(_width: Float).returns(Float) }
        def width=(_width); end
        sig { params(height: Float, length: Float, weight: Float, width: Float).void }
        def initialize(height: nil, length: nil, weight: nil, width: nil); end
      end
      # Whether the product is available for purchase.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
      sig { returns(T.nilable(String)) }
      def default_price; end
      sig { params(_default_price: T.nilable(String)).returns(T.nilable(String)) }
      def default_price=(_default_price); end
      # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      def images; end
      sig {
        params(_images: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
       }
      def images=(_images); end
      # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::Product::UpdateParams::MarketingFeature])))
       }
      def marketing_features; end
      sig {
        params(_marketing_features: T.nilable(T.any(String, T::Array[::Stripe::Product::UpdateParams::MarketingFeature]))).returns(T.nilable(T.any(String, T::Array[::Stripe::Product::UpdateParams::MarketingFeature])))
       }
      def marketing_features=(_marketing_features); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The product's name, meant to be displayable to the customer.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # The dimensions of this product for shipping purposes.
      sig { returns(T.nilable(T.any(String, ::Stripe::Product::UpdateParams::PackageDimensions))) }
      def package_dimensions; end
      sig {
        params(_package_dimensions: T.nilable(T.any(String, ::Stripe::Product::UpdateParams::PackageDimensions))).returns(T.nilable(T.any(String, ::Stripe::Product::UpdateParams::PackageDimensions)))
       }
      def package_dimensions=(_package_dimensions); end
      # Whether this product is shipped (i.e., physical goods).
      sig { returns(T.nilable(T::Boolean)) }
      def shippable; end
      sig { params(_shippable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def shippable=(_shippable); end
      # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
      #
      # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
      #  It must contain at least one letter. May only be set if `type=service`. Only used for subscription payments.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(T.nilable(String)) }
      def tax_code; end
      sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
      def tax_code=(_tax_code); end
      # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal. May only be set if `type=service`.
      sig { returns(T.nilable(String)) }
      def unit_label; end
      sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
      def unit_label=(_unit_label); end
      # A URL of a publicly-accessible webpage for this product.
      sig { returns(T.nilable(String)) }
      def url; end
      sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
      def url=(_url); end
      sig {
        params(active: T.nilable(T::Boolean), default_price: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), images: T.nilable(T.any(String, T::Array[String])), marketing_features: T.nilable(T.any(String, T::Array[::Stripe::Product::UpdateParams::MarketingFeature])), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String), package_dimensions: T.nilable(T.any(String, ::Stripe::Product::UpdateParams::PackageDimensions)), shippable: T.nilable(T::Boolean), statement_descriptor: T.nilable(String), tax_code: T.nilable(String), unit_label: T.nilable(String), url: T.nilable(String)).void
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
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return products that are active or inactive (e.g., pass `false` to list all inactive products).
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # Only return products that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Product::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::Product::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Product::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Only return products with the given IDs. Cannot be used with [starting_after](https://stripe.com/docs/api#list_products-starting_after) or [ending_before](https://stripe.com/docs/api#list_products-ending_before).
      sig { returns(T.nilable(T::Array[String])) }
      def ids; end
      sig { params(_ids: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def ids=(_ids); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Only return products that can be shipped (i.e., physical, not digital products).
      sig { returns(T.nilable(T::Boolean)) }
      def shippable; end
      sig { params(_shippable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def shippable=(_shippable); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      # Only return products of this type.
      sig { returns(T.nilable(String)) }
      def type; end
      sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
      def type=(_type); end
      # Only return products with the given url.
      sig { returns(T.nilable(String)) }
      def url; end
      sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
      def url=(_url); end
      sig {
        params(active: T.nilable(T::Boolean), created: T.nilable(T.any(::Stripe::Product::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), ids: T.nilable(T::Array[String]), limit: T.nilable(Integer), shippable: T.nilable(T::Boolean), starting_after: T.nilable(String), type: T.nilable(String), url: T.nilable(String)).void
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
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            # The maximum unit amount the customer can specify for this item.
            sig { returns(T.nilable(Integer)) }
            def maximum; end
            sig { params(_maximum: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def maximum=(_maximum); end
            # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
            sig { returns(T.nilable(Integer)) }
            def minimum; end
            sig { params(_minimum: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def minimum=(_minimum); end
            # The starting unit amount which can be updated by the customer.
            sig { returns(T.nilable(Integer)) }
            def preset; end
            sig { params(_preset: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def preset=(_preset); end
            sig {
              params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer), preset: T.nilable(Integer)).void
             }
            def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil); end
          end
          class Tier < Stripe::RequestParams
            # The flat billing amount for an entire tier, regardless of the number of units in the tier.
            sig { returns(T.nilable(Integer)) }
            def flat_amount; end
            sig { params(_flat_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def flat_amount=(_flat_amount); end
            # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            def flat_amount_decimal; end
            sig { params(_flat_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def flat_amount_decimal=(_flat_amount_decimal); end
            # The per unit billing amount for each individual unit for which this tier applies.
            sig { returns(T.nilable(Integer)) }
            def unit_amount; end
            sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def unit_amount=(_unit_amount); end
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            def unit_amount_decimal; end
            sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def unit_amount_decimal=(_unit_amount_decimal); end
            # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
            sig { returns(T.any(String, Integer)) }
            def up_to; end
            sig { params(_up_to: T.any(String, Integer)).returns(T.any(String, Integer)) }
            def up_to=(_up_to); end
            sig {
              params(flat_amount: T.nilable(Integer), flat_amount_decimal: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String), up_to: T.any(String, Integer)).void
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
            returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::CustomUnitAmount))
           }
          def custom_unit_amount; end
          sig {
            params(_custom_unit_amount: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::CustomUnitAmount)).returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::CustomUnitAmount))
           }
          def custom_unit_amount=(_custom_unit_amount); end
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
          sig {
            returns(T.nilable(T::Array[::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::Tier]))
           }
          def tiers; end
          sig {
            params(_tiers: T.nilable(T::Array[::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::Tier])).returns(T.nilable(T::Array[::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::Tier]))
           }
          def tiers=(_tiers); end
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def unit_amount=(_unit_amount); end
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          def unit_amount_decimal; end
          sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount_decimal=(_unit_amount_decimal); end
          sig {
            params(custom_unit_amount: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::CustomUnitAmount), tax_behavior: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions::Tier]), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The maximum unit amount the customer can specify for this item.
          sig { returns(T.nilable(Integer)) }
          def maximum; end
          sig { params(_maximum: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def maximum=(_maximum); end
          # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
          sig { returns(T.nilable(Integer)) }
          def minimum; end
          sig { params(_minimum: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def minimum=(_minimum); end
          # The starting unit amount which can be updated by the customer.
          sig { returns(T.nilable(Integer)) }
          def preset; end
          sig { params(_preset: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def preset=(_preset); end
          sig {
            params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer), preset: T.nilable(Integer)).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil); end
        end
        class Recurring < Stripe::RequestParams
          # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          def interval; end
          sig { params(_interval: String).returns(String) }
          def interval=(_interval); end
          # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
          sig { returns(T.nilable(Integer)) }
          def interval_count; end
          sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_count=(_interval_count); end
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        sig {
          returns(T.nilable(T::Hash[String, ::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions]))
         }
        def currency_options; end
        sig {
          params(_currency_options: T.nilable(T::Hash[String, ::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions])).returns(T.nilable(T::Hash[String, ::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions]))
         }
        def currency_options=(_currency_options); end
        # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
        sig {
          returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CustomUnitAmount))
         }
        def custom_unit_amount; end
        sig {
          params(_custom_unit_amount: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CustomUnitAmount)).returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CustomUnitAmount))
         }
        def custom_unit_amount=(_custom_unit_amount); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The recurring components of a price such as `interval` and `interval_count`.
        sig { returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::Recurring)) }
        def recurring; end
        sig {
          params(_recurring: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::Recurring)).returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::Recurring))
         }
        def recurring=(_recurring); end
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        def tax_behavior; end
        sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
        def tax_behavior=(_tax_behavior); end
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount`, `unit_amount_decimal`, or `custom_unit_amount` is required.
        sig { returns(T.nilable(Integer)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def unit_amount=(_unit_amount); end
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal; end
        sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount_decimal=(_unit_amount_decimal); end
        sig {
          params(currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::Product::CreateParams::DefaultPriceData::CurrencyOptions]), custom_unit_amount: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::CustomUnitAmount), metadata: T.nilable(T::Hash[String, String]), recurring: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          currency: nil,
          currency_options: nil,
          custom_unit_amount: nil,
          metadata: nil,
          recurring: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class MarketingFeature < Stripe::RequestParams
        # The marketing feature name. Up to 80 characters long.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        sig { params(name: String).void }
        def initialize(name: nil); end
      end
      class PackageDimensions < Stripe::RequestParams
        # Height, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def height; end
        sig { params(_height: Float).returns(Float) }
        def height=(_height); end
        # Length, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def length; end
        sig { params(_length: Float).returns(Float) }
        def length=(_length); end
        # Weight, in ounces. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def weight; end
        sig { params(_weight: Float).returns(Float) }
        def weight=(_weight); end
        # Width, in inches. Maximum precision is 2 decimal places.
        sig { returns(Float) }
        def width; end
        sig { params(_width: Float).returns(Float) }
        def width=(_width); end
        sig { params(height: Float, length: Float, weight: Float, width: Float).void }
        def initialize(height: nil, length: nil, weight: nil, width: nil); end
      end
      # Whether the product is currently available for purchase. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object. This Price will be set as the default price for this product.
      sig { returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData)) }
      def default_price_data; end
      sig {
        params(_default_price_data: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData)).returns(T.nilable(::Stripe::Product::CreateParams::DefaultPriceData))
       }
      def default_price_data=(_default_price_data); end
      # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account.
      sig { returns(T.nilable(String)) }
      def id; end
      sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
      def id=(_id); end
      # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
      sig { returns(T.nilable(T::Array[String])) }
      def images; end
      sig { params(_images: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def images=(_images); end
      # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
      sig { returns(T.nilable(T::Array[::Stripe::Product::CreateParams::MarketingFeature])) }
      def marketing_features; end
      sig {
        params(_marketing_features: T.nilable(T::Array[::Stripe::Product::CreateParams::MarketingFeature])).returns(T.nilable(T::Array[::Stripe::Product::CreateParams::MarketingFeature]))
       }
      def marketing_features=(_marketing_features); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The product's name, meant to be displayable to the customer.
      sig { returns(String) }
      def name; end
      sig { params(_name: String).returns(String) }
      def name=(_name); end
      # The dimensions of this product for shipping purposes.
      sig { returns(T.nilable(::Stripe::Product::CreateParams::PackageDimensions)) }
      def package_dimensions; end
      sig {
        params(_package_dimensions: T.nilable(::Stripe::Product::CreateParams::PackageDimensions)).returns(T.nilable(::Stripe::Product::CreateParams::PackageDimensions))
       }
      def package_dimensions=(_package_dimensions); end
      # Whether this product is shipped (i.e., physical goods).
      sig { returns(T.nilable(T::Boolean)) }
      def shippable; end
      sig { params(_shippable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def shippable=(_shippable); end
      # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
      #
      # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
      #  It must contain at least one letter. Only used for subscription payments.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(T.nilable(String)) }
      def tax_code; end
      sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
      def tax_code=(_tax_code); end
      # The type of the product. Defaults to `service` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to `good` to use this product with Orders and SKUs. On API versions before `2018-02-05`, this field defaults to `good` for compatibility reasons.
      sig { returns(T.nilable(String)) }
      def type; end
      sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
      def type=(_type); end
      # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
      sig { returns(T.nilable(String)) }
      def unit_label; end
      sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
      def unit_label=(_unit_label); end
      # A URL of a publicly-accessible webpage for this product.
      sig { returns(T.nilable(String)) }
      def url; end
      sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
      def url=(_url); end
      sig {
        params(active: T.nilable(T::Boolean), default_price_data: T.nilable(::Stripe::Product::CreateParams::DefaultPriceData), description: T.nilable(String), expand: T.nilable(T::Array[String]), id: T.nilable(String), images: T.nilable(T::Array[String]), marketing_features: T.nilable(T::Array[::Stripe::Product::CreateParams::MarketingFeature]), metadata: T.nilable(T::Hash[String, String]), name: String, package_dimensions: T.nilable(::Stripe::Product::CreateParams::PackageDimensions), shippable: T.nilable(T::Boolean), statement_descriptor: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String), unit_label: T.nilable(String), url: T.nilable(String)).void
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
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      def page; end
      sig { params(_page: T.nilable(String)).returns(T.nilable(String)) }
      def page=(_page); end
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for products](https://stripe.com/docs/search#query-fields-for-products).
      sig { returns(String) }
      def query; end
      sig { params(_query: String).returns(String) }
      def query=(_query); end
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
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