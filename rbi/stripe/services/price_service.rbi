# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PriceService < StripeService
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class Recurring < Stripe::RequestParams
        # Filter by billing frequency. Either `day`, `week`, `month` or `year`.
        sig { returns(T.nilable(String)) }
        attr_accessor :interval
        # Filter by the price's meter.
        sig { returns(T.nilable(String)) }
        attr_accessor :meter
        # Filter by the usage type for this price. Can be either `metered` or `licensed`.
        sig { returns(T.nilable(String)) }
        attr_accessor :usage_type
        sig {
          params(interval: T.nilable(String), meter: T.nilable(String), usage_type: T.nilable(String)).void
         }
        def initialize(interval: nil, meter: nil, usage_type: nil); end
      end
      # Only return prices that are active or inactive (e.g., pass `false` to list all inactive prices).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::PriceService::ListParams::Created, Integer))) }
      attr_accessor :created
      # Only return prices for the given currency.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Only return the price with these lookup_keys, if any exist. You can specify up to 10 lookup_keys.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :lookup_keys
      # Only return prices for the given product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product
      # Only return prices with these recurring fields.
      sig { returns(T.nilable(::Stripe::PriceService::ListParams::Recurring)) }
      attr_accessor :recurring
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # Only return prices of type `recurring` or `one_time`.
      sig { returns(T.nilable(String)) }
      attr_accessor :type
      sig {
        params(active: T.nilable(T::Boolean), created: T.nilable(T.any(::Stripe::PriceService::ListParams::Created, Integer)), currency: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String]), product: T.nilable(String), recurring: T.nilable(::Stripe::PriceService::ListParams::Recurring), starting_after: T.nilable(String), type: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        created: nil,
        currency: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        lookup_keys: nil,
        product: nil,
        recurring: nil,
        starting_after: nil,
        type: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        class CustomUnitAmount < Stripe::RequestParams
          # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The maximum unit amount the customer can specify for this item.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum
          # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum
          # The starting unit amount which can be updated by the customer.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :preset
          sig {
            params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer), preset: T.nilable(Integer)).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil); end
        end
        class Tier < Stripe::RequestParams
          # The flat billing amount for an entire tier, regardless of the number of units in the tier.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :flat_amount
          # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :flat_amount_decimal
          # The per unit billing amount for each individual unit for which this tier applies.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
          sig { returns(T.any(String, Integer)) }
          attr_accessor :up_to
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
          returns(T.nilable(::Stripe::PriceService::CreateParams::CurrencyOptions::CustomUnitAmount))
         }
        attr_accessor :custom_unit_amount
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_behavior
        # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
        sig {
          returns(T.nilable(T::Array[::Stripe::PriceService::CreateParams::CurrencyOptions::Tier]))
         }
        attr_accessor :tiers
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(custom_unit_amount: T.nilable(::Stripe::PriceService::CreateParams::CurrencyOptions::CustomUnitAmount), tax_behavior: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::PriceService::CreateParams::CurrencyOptions::Tier]), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
        sig { returns(T.nilable(Integer)) }
        attr_accessor :maximum
        # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :minimum
        # The starting unit amount which can be updated by the customer.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :preset
        sig {
          params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer), preset: T.nilable(Integer)).void
         }
        def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil); end
      end
      class ProductData < Stripe::RequestParams
        # Whether the product is currently available for purchase. Defaults to `true`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :active
        # The identifier for the product. Must be unique. If not provided, an identifier will be randomly generated.
        sig { returns(T.nilable(String)) }
        attr_accessor :id
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The product's name, meant to be displayable to the customer.
        sig { returns(String) }
        attr_accessor :name
        # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
        #
        # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_code
        # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_label
        sig {
          params(active: T.nilable(T::Boolean), id: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), name: String, statement_descriptor: T.nilable(String), tax_code: T.nilable(String), unit_label: T.nilable(String)).void
         }
        def initialize(
          active: nil,
          id: nil,
          metadata: nil,
          name: nil,
          statement_descriptor: nil,
          tax_code: nil,
          unit_label: nil
        ); end
      end
      class Recurring < Stripe::RequestParams
        # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
        sig { returns(String) }
        attr_accessor :interval
        # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :interval_count
        # The meter tracking the usage of a metered price
        sig { returns(T.nilable(String)) }
        attr_accessor :meter
        # Default number of trial days when subscribing a customer to this price using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days
        # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
        sig { returns(T.nilable(String)) }
        attr_accessor :usage_type
        sig {
          params(interval: String, interval_count: T.nilable(Integer), meter: T.nilable(String), trial_period_days: T.nilable(Integer), usage_type: T.nilable(String)).void
         }
        def initialize(
          interval: nil,
          interval_count: nil,
          meter: nil,
          trial_period_days: nil,
          usage_type: nil
        ); end
      end
      class Tier < Stripe::RequestParams
        # The flat billing amount for an entire tier, regardless of the number of units in the tier.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :flat_amount
        # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :flat_amount_decimal
        # The per unit billing amount for each individual unit for which this tier applies.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
        sig { returns(T.any(String, Integer)) }
        attr_accessor :up_to
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
      class TransformQuantity < Stripe::RequestParams
        # Divide usage by this number.
        sig { returns(Integer) }
        attr_accessor :divide_by
        # After division, either round the result `up` or `down`.
        sig { returns(String) }
        attr_accessor :round
        sig { params(divide_by: Integer, round: String).void }
        def initialize(divide_by: nil, round: nil); end
      end
      # Whether the price can be used for new purchases. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_scheme
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig {
        returns(T.nilable(T::Hash[String, ::Stripe::PriceService::CreateParams::CurrencyOptions]))
       }
      attr_accessor :currency_options
      # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
      sig { returns(T.nilable(::Stripe::PriceService::CreateParams::CustomUnitAmount)) }
      attr_accessor :custom_unit_amount
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :lookup_key
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # A brief description of the price, hidden from customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :nickname
      # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
      sig { returns(T.nilable(String)) }
      attr_accessor :product
      # These fields can be used to create a new product that this price will belong to.
      sig { returns(T.nilable(::Stripe::PriceService::CreateParams::ProductData)) }
      attr_accessor :product_data
      # The recurring components of a price such as `interval` and `usage_type`.
      sig { returns(T.nilable(::Stripe::PriceService::CreateParams::Recurring)) }
      attr_accessor :recurring
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_behavior
      # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
      sig { returns(T.nilable(T::Array[::Stripe::PriceService::CreateParams::Tier])) }
      attr_accessor :tiers
      # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
      sig { returns(T.nilable(String)) }
      attr_accessor :tiers_mode
      # If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :transfer_lookup_key
      # Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
      sig { returns(T.nilable(::Stripe::PriceService::CreateParams::TransformQuantity)) }
      attr_accessor :transform_quantity
      # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount`, `unit_amount_decimal`, or `custom_unit_amount` is required, unless `billing_scheme=tiered`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :unit_amount
      # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
      sig { returns(T.nilable(String)) }
      attr_accessor :unit_amount_decimal
      sig {
        params(active: T.nilable(T::Boolean), billing_scheme: T.nilable(String), currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::PriceService::CreateParams::CurrencyOptions]), custom_unit_amount: T.nilable(::Stripe::PriceService::CreateParams::CustomUnitAmount), expand: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), nickname: T.nilable(String), product: T.nilable(String), product_data: T.nilable(::Stripe::PriceService::CreateParams::ProductData), recurring: T.nilable(::Stripe::PriceService::CreateParams::Recurring), tax_behavior: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::PriceService::CreateParams::Tier]), tiers_mode: T.nilable(String), transfer_lookup_key: T.nilable(T::Boolean), transform_quantity: T.nilable(::Stripe::PriceService::CreateParams::TransformQuantity), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        billing_scheme: nil,
        currency: nil,
        currency_options: nil,
        custom_unit_amount: nil,
        expand: nil,
        lookup_key: nil,
        metadata: nil,
        nickname: nil,
        product: nil,
        product_data: nil,
        recurring: nil,
        tax_behavior: nil,
        tiers: nil,
        tiers_mode: nil,
        transfer_lookup_key: nil,
        transform_quantity: nil,
        unit_amount: nil,
        unit_amount_decimal: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        class CustomUnitAmount < Stripe::RequestParams
          # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The maximum unit amount the customer can specify for this item.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum
          # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum
          # The starting unit amount which can be updated by the customer.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :preset
          sig {
            params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer), preset: T.nilable(Integer)).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil); end
        end
        class Tier < Stripe::RequestParams
          # The flat billing amount for an entire tier, regardless of the number of units in the tier.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :flat_amount
          # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :flat_amount_decimal
          # The per unit billing amount for each individual unit for which this tier applies.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
          sig { returns(T.any(String, Integer)) }
          attr_accessor :up_to
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
          returns(T.nilable(::Stripe::PriceService::UpdateParams::CurrencyOptions::CustomUnitAmount))
         }
        attr_accessor :custom_unit_amount
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_behavior
        # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
        sig {
          returns(T.nilable(T::Array[::Stripe::PriceService::UpdateParams::CurrencyOptions::Tier]))
         }
        attr_accessor :tiers
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(custom_unit_amount: T.nilable(::Stripe::PriceService::UpdateParams::CurrencyOptions::CustomUnitAmount), tax_behavior: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::PriceService::UpdateParams::CurrencyOptions::Tier]), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          custom_unit_amount: nil,
          tax_behavior: nil,
          tiers: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      # Whether the price can be used for new purchases. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig {
        returns(T.nilable(T.any(String, T::Hash[String, ::Stripe::PriceService::UpdateParams::CurrencyOptions])))
       }
      attr_accessor :currency_options
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :lookup_key
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # A brief description of the price, hidden from customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :nickname
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_behavior
      # If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :transfer_lookup_key
      sig {
        params(active: T.nilable(T::Boolean), currency_options: T.nilable(T.any(String, T::Hash[String, ::Stripe::PriceService::UpdateParams::CurrencyOptions])), expand: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), nickname: T.nilable(String), tax_behavior: T.nilable(String), transfer_lookup_key: T.nilable(T::Boolean)).void
       }
      def initialize(
        active: nil,
        currency_options: nil,
        expand: nil,
        lookup_key: nil,
        metadata: nil,
        nickname: nil,
        tax_behavior: nil,
        transfer_lookup_key: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for prices](https://stripe.com/docs/search#query-fields-for-prices).
      sig { returns(String) }
      attr_accessor :query
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    # Creates a new [Price for an existing <a href="https://docs.stripe.com/api/products">Product](https://docs.stripe.com/api/prices). The Price can be recurring or one-time.
    sig {
      params(params: T.any(::Stripe::PriceService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Price)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of your active prices, excluding [inline prices](https://docs.stripe.com/docs/products-prices/pricing-models#inline-pricing). For the list of inactive prices, set active to false.
    sig {
      params(params: T.any(::Stripe::PriceService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the price with the given ID.
    sig {
      params(price: String, params: T.any(::Stripe::PriceService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Price)
     }
    def retrieve(price, params = {}, opts = {}); end

    # Search for prices you've previously created using Stripe's [Search Query Language](https://docs.stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    sig {
      params(params: T.any(::Stripe::PriceService::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def search(params = {}, opts = {}); end

    # Updates the specified price by setting the values of the parameters passed. Any parameters not provided are left unchanged.
    sig {
      params(price: String, params: T.any(::Stripe::PriceService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Price)
     }
    def update(price, params = {}, opts = {}); end
  end
end