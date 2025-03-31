# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.
  # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.
  #
  # For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription), [create an invoice](https://stripe.com/docs/billing/invoices/create), and more about [products and prices](https://stripe.com/docs/products-prices/overview).
  class Price < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "price"
    def self.object_name
      "price"
    end

    class CurrencyOptions < Stripe::StripeObject
      class CustomUnitAmount < Stripe::StripeObject
        # The maximum unit amount the customer can specify for this item.
        attr_reader :maximum
        # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
        attr_reader :minimum
        # The starting unit amount which can be updated by the customer.
        attr_reader :preset
      end

      class Tier < Stripe::StripeObject
        # Price for the entire tier.
        attr_reader :flat_amount
        # Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
        attr_reader :flat_amount_decimal
        # Per unit price for units relevant to the tier.
        attr_reader :unit_amount
        # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
        attr_reader :unit_amount_decimal
        # Up to and including to this quantity will be contained in the tier.
        attr_reader :up_to
      end
      # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
      attr_reader :custom_unit_amount
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      attr_reader :tax_behavior
      # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
      attr_reader :tiers
      # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
      attr_reader :unit_amount
      # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
      attr_reader :unit_amount_decimal
    end

    class CustomUnitAmount < Stripe::StripeObject
      # The maximum unit amount the customer can specify for this item.
      attr_reader :maximum
      # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
      attr_reader :minimum
      # The starting unit amount which can be updated by the customer.
      attr_reader :preset
    end

    class Recurring < Stripe::StripeObject
      # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
      attr_reader :interval
      # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
      attr_reader :interval_count
      # The meter tracking the usage of a metered price
      attr_reader :meter
      # Default number of trial days when subscribing a customer to this price using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
      attr_reader :trial_period_days
      # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
      attr_reader :usage_type
    end

    class Tier < Stripe::StripeObject
      # Price for the entire tier.
      attr_reader :flat_amount
      # Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
      attr_reader :flat_amount_decimal
      # Per unit price for units relevant to the tier.
      attr_reader :unit_amount
      # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
      attr_reader :unit_amount_decimal
      # Up to and including to this quantity will be contained in the tier.
      attr_reader :up_to
    end

    class TransformQuantity < Stripe::StripeObject
      # Divide usage by this number.
      attr_reader :divide_by
      # After division, either round the result `up` or `down`.
      attr_reader :round
    end

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class Recurring < Stripe::RequestParams
        # Filter by billing frequency. Either `day`, `week`, `month` or `year`.
        attr_accessor :interval
        # Filter by the price's meter.
        attr_accessor :meter
        # Filter by the usage type for this price. Can be either `metered` or `licensed`.
        attr_accessor :usage_type

        def initialize(interval: nil, meter: nil, usage_type: nil)
          @interval = interval
          @meter = meter
          @usage_type = usage_type
        end
      end
      # Only return prices that are active or inactive (e.g., pass `false` to list all inactive prices).
      attr_accessor :active
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # Only return prices for the given currency.
      attr_accessor :currency
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return the price with these lookup_keys, if any exist. You can specify up to 10 lookup_keys.
      attr_accessor :lookup_keys
      # Only return prices for the given product.
      attr_accessor :product
      # Only return prices with these recurring fields.
      attr_accessor :recurring
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return prices of type `recurring` or `one_time`.
      attr_accessor :type

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
      )
        @active = active
        @created = created
        @currency = currency
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @lookup_keys = lookup_keys
        @product = product
        @recurring = recurring
        @starting_after = starting_after
        @type = type
      end
    end

    class CreateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        class CustomUnitAmount < Stripe::RequestParams
          # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
          attr_accessor :enabled
          # The maximum unit amount the customer can specify for this item.
          attr_accessor :maximum
          # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
          attr_accessor :minimum
          # The starting unit amount which can be updated by the customer.
          attr_accessor :preset

          def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil)
            @enabled = enabled
            @maximum = maximum
            @minimum = minimum
            @preset = preset
          end
        end

        class Tier < Stripe::RequestParams
          # The flat billing amount for an entire tier, regardless of the number of units in the tier.
          attr_accessor :flat_amount
          # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
          attr_accessor :flat_amount_decimal
          # The per unit billing amount for each individual unit for which this tier applies.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal
          # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
          attr_accessor :up_to

          def initialize(
            flat_amount: nil,
            flat_amount_decimal: nil,
            unit_amount: nil,
            unit_amount_decimal: nil,
            up_to: nil
          )
            @flat_amount = flat_amount
            @flat_amount_decimal = flat_amount_decimal
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
            @up_to = up_to
          end
        end
        # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
        attr_accessor :custom_unit_amount
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        attr_accessor :tax_behavior
        # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
        attr_accessor :tiers
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

        def initialize(
          custom_unit_amount: nil,
          tax_behavior: nil,
          tiers: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        )
          @custom_unit_amount = custom_unit_amount
          @tax_behavior = tax_behavior
          @tiers = tiers
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class CustomUnitAmount < Stripe::RequestParams
        # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
        attr_accessor :enabled
        # The maximum unit amount the customer can specify for this item.
        attr_accessor :maximum
        # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
        attr_accessor :minimum
        # The starting unit amount which can be updated by the customer.
        attr_accessor :preset

        def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil)
          @enabled = enabled
          @maximum = maximum
          @minimum = minimum
          @preset = preset
        end
      end

      class ProductData < Stripe::RequestParams
        # Whether the product is currently available for purchase. Defaults to `true`.
        attr_accessor :active
        # The identifier for the product. Must be unique. If not provided, an identifier will be randomly generated.
        attr_accessor :id
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The product's name, meant to be displayable to the customer.
        attr_accessor :name
        # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
        #
        # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
        attr_accessor :statement_descriptor
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
        attr_accessor :tax_code
        # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
        attr_accessor :unit_label

        def initialize(
          active: nil,
          id: nil,
          metadata: nil,
          name: nil,
          statement_descriptor: nil,
          tax_code: nil,
          unit_label: nil
        )
          @active = active
          @id = id
          @metadata = metadata
          @name = name
          @statement_descriptor = statement_descriptor
          @tax_code = tax_code
          @unit_label = unit_label
        end
      end

      class Recurring < Stripe::RequestParams
        # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
        attr_accessor :interval
        # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
        attr_accessor :interval_count
        # The meter tracking the usage of a metered price
        attr_accessor :meter
        # Default number of trial days when subscribing a customer to this price using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
        attr_accessor :trial_period_days
        # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
        attr_accessor :usage_type

        def initialize(
          interval: nil,
          interval_count: nil,
          meter: nil,
          trial_period_days: nil,
          usage_type: nil
        )
          @interval = interval
          @interval_count = interval_count
          @meter = meter
          @trial_period_days = trial_period_days
          @usage_type = usage_type
        end
      end

      class Tier < Stripe::RequestParams
        # The flat billing amount for an entire tier, regardless of the number of units in the tier.
        attr_accessor :flat_amount
        # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
        attr_accessor :flat_amount_decimal
        # The per unit billing amount for each individual unit for which this tier applies.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal
        # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
        attr_accessor :up_to

        def initialize(
          flat_amount: nil,
          flat_amount_decimal: nil,
          unit_amount: nil,
          unit_amount_decimal: nil,
          up_to: nil
        )
          @flat_amount = flat_amount
          @flat_amount_decimal = flat_amount_decimal
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
          @up_to = up_to
        end
      end

      class TransformQuantity < Stripe::RequestParams
        # Divide usage by this number.
        attr_accessor :divide_by
        # After division, either round the result `up` or `down`.
        attr_accessor :round

        def initialize(divide_by: nil, round: nil)
          @divide_by = divide_by
          @round = round
        end
      end
      # Whether the price can be used for new purchases. Defaults to `true`.
      attr_accessor :active
      # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
      attr_accessor :billing_scheme
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency_options
      # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
      attr_accessor :custom_unit_amount
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
      attr_accessor :lookup_key
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # A brief description of the price, hidden from customers.
      attr_accessor :nickname
      # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
      attr_accessor :product
      # These fields can be used to create a new product that this price will belong to.
      attr_accessor :product_data
      # The recurring components of a price such as `interval` and `usage_type`.
      attr_accessor :recurring
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      attr_accessor :tax_behavior
      # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
      attr_accessor :tiers
      # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
      attr_accessor :tiers_mode
      # If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
      attr_accessor :transfer_lookup_key
      # Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
      attr_accessor :transform_quantity
      # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount`, `unit_amount_decimal`, or `custom_unit_amount` is required, unless `billing_scheme=tiered`.
      attr_accessor :unit_amount
      # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
      attr_accessor :unit_amount_decimal

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
      )
        @active = active
        @billing_scheme = billing_scheme
        @currency = currency
        @currency_options = currency_options
        @custom_unit_amount = custom_unit_amount
        @expand = expand
        @lookup_key = lookup_key
        @metadata = metadata
        @nickname = nickname
        @product = product
        @product_data = product_data
        @recurring = recurring
        @tax_behavior = tax_behavior
        @tiers = tiers
        @tiers_mode = tiers_mode
        @transfer_lookup_key = transfer_lookup_key
        @transform_quantity = transform_quantity
        @unit_amount = unit_amount
        @unit_amount_decimal = unit_amount_decimal
      end
    end

    class UpdateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        class CustomUnitAmount < Stripe::RequestParams
          # Pass in `true` to enable `custom_unit_amount`, otherwise omit `custom_unit_amount`.
          attr_accessor :enabled
          # The maximum unit amount the customer can specify for this item.
          attr_accessor :maximum
          # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
          attr_accessor :minimum
          # The starting unit amount which can be updated by the customer.
          attr_accessor :preset

          def initialize(enabled: nil, maximum: nil, minimum: nil, preset: nil)
            @enabled = enabled
            @maximum = maximum
            @minimum = minimum
            @preset = preset
          end
        end

        class Tier < Stripe::RequestParams
          # The flat billing amount for an entire tier, regardless of the number of units in the tier.
          attr_accessor :flat_amount
          # Same as `flat_amount`, but accepts a decimal value representing an integer in the minor units of the currency. Only one of `flat_amount` and `flat_amount_decimal` can be set.
          attr_accessor :flat_amount_decimal
          # The per unit billing amount for each individual unit for which this tier applies.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal
          # Specifies the upper bound of this tier. The lower bound of a tier is the upper bound of the previous tier adding one. Use `inf` to define a fallback tier.
          attr_accessor :up_to

          def initialize(
            flat_amount: nil,
            flat_amount_decimal: nil,
            unit_amount: nil,
            unit_amount_decimal: nil,
            up_to: nil
          )
            @flat_amount = flat_amount
            @flat_amount_decimal = flat_amount_decimal
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
            @up_to = up_to
          end
        end
        # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
        attr_accessor :custom_unit_amount
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        attr_accessor :tax_behavior
        # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
        attr_accessor :tiers
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

        def initialize(
          custom_unit_amount: nil,
          tax_behavior: nil,
          tiers: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        )
          @custom_unit_amount = custom_unit_amount
          @tax_behavior = tax_behavior
          @tiers = tiers
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end
      # Whether the price can be used for new purchases. Defaults to `true`.
      attr_accessor :active
      # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency_options
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
      attr_accessor :lookup_key
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # A brief description of the price, hidden from customers.
      attr_accessor :nickname
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      attr_accessor :tax_behavior
      # If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
      attr_accessor :transfer_lookup_key

      def initialize(
        active: nil,
        currency_options: nil,
        expand: nil,
        lookup_key: nil,
        metadata: nil,
        nickname: nil,
        tax_behavior: nil,
        transfer_lookup_key: nil
      )
        @active = active
        @currency_options = currency_options
        @expand = expand
        @lookup_key = lookup_key
        @metadata = metadata
        @nickname = nickname
        @tax_behavior = tax_behavior
        @transfer_lookup_key = transfer_lookup_key
      end
    end

    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for prices](https://stripe.com/docs/search#query-fields-for-prices).
      attr_accessor :query

      def initialize(expand: nil, limit: nil, page: nil, query: nil)
        @expand = expand
        @limit = limit
        @page = page
        @query = query
      end
    end
    # Whether the price can be used for new purchases.
    attr_reader :active
    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    attr_reader :billing_scheme
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency_options
    # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
    attr_reader :custom_unit_amount
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
    attr_reader :lookup_key
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # A brief description of the price, hidden from customers.
    attr_reader :nickname
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The ID of the product this price is associated with.
    attr_reader :product
    # The recurring components of a price such as `interval` and `usage_type`.
    attr_reader :recurring
    # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    attr_reader :tax_behavior
    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    attr_reader :tiers
    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    attr_reader :tiers_mode
    # Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
    attr_reader :transform_quantity
    # One of `one_time` or `recurring` depending on whether the price is for a one-time purchase or a recurring (subscription) purchase.
    attr_reader :type
    # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    attr_reader :unit_amount
    # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    attr_reader :unit_amount_decimal
    # Always true for a deleted object
    attr_reader :deleted

    # Creates a new [Price for an existing <a href="https://docs.stripe.com/api/products">Product](https://docs.stripe.com/api/prices). The Price can be recurring or one-time.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/prices", params: params, opts: opts)
    end

    # Returns a list of your active prices, excluding [inline prices](https://stripe.com/docs/products-prices/pricing-models#inline-pricing). For the list of inactive prices, set active to false.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/prices", params: params, opts: opts)
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/prices/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Updates the specified price by setting the values of the parameters passed. Any parameters not provided are left unchanged.
    def self.update(price, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/prices/%<price>s", { price: CGI.escape(price) }),
        params: params,
        opts: opts
      )
    end
  end
end
