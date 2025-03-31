# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
  #
  # Plans define the base price, currency, and billing cycle for recurring purchases of products.
  # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.
  #
  # For example, you might have a single "gold" product that has plans for $10/month, $100/year, €9/month, and €90/year.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription) and more about [products and prices](https://stripe.com/docs/products-prices/overview).
  class Plan < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "plan"
    def self.object_name
      "plan"
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

    class TransformUsage < Stripe::StripeObject
      # Divide usage by this number.
      attr_reader :divide_by
      # After division, either round the result `up` or `down`.
      attr_reader :round
    end

    class DeleteParams < Stripe::RequestParams
    end

    class UpdateParams < Stripe::RequestParams
      # Whether the plan is currently available for new subscriptions.
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # A brief description of the plan, hidden from customers.
      attr_accessor :nickname
      # The product the plan belongs to. This cannot be changed once it has been used in a subscription or subscription schedule.
      attr_accessor :product
      # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
      attr_accessor :trial_period_days

      def initialize(
        active: nil,
        expand: nil,
        metadata: nil,
        nickname: nil,
        product: nil,
        trial_period_days: nil
      )
        @active = active
        @expand = expand
        @metadata = metadata
        @nickname = nickname
        @product = product
        @trial_period_days = trial_period_days
      end
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
      # Only return plans that are active or inactive (e.g., pass `false` to list all inactive plans).
      attr_accessor :active
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return plans for the given product.
      attr_accessor :product
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        active: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        product: nil,
        starting_after: nil
      )
        @active = active
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @product = product
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class Product < Stripe::RequestParams
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

      class TransformUsage < Stripe::RequestParams
        # Divide usage by this number.
        attr_accessor :divide_by
        # After division, either round the result `up` or `down`.
        attr_accessor :round

        def initialize(divide_by: nil, round: nil)
          @divide_by = divide_by
          @round = round
        end
      end
      # Whether the plan is currently available for new subscriptions. Defaults to `true`.
      attr_accessor :active
      # A positive integer in cents (or local equivalent) (or 0 for a free plan) representing how much to charge on a recurring basis.
      attr_accessor :amount
      # Same as `amount`, but accepts a decimal value with at most 12 decimal places. Only one of `amount` and `amount_decimal` can be set.
      attr_accessor :amount_decimal
      # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
      attr_accessor :billing_scheme
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # An identifier randomly generated by Stripe. Used to identify this plan when subscribing a customer. You can optionally override this ID, but the ID must be unique across all plans in your Stripe account. You can, however, use the same plan ID in both live and test modes.
      attr_accessor :id
      # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
      attr_accessor :interval
      # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
      attr_accessor :interval_count
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The meter tracking the usage of a metered price
      attr_accessor :meter
      # A brief description of the plan, hidden from customers.
      attr_accessor :nickname
      # Attribute for param field product
      attr_accessor :product
      # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
      attr_accessor :tiers
      # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
      attr_accessor :tiers_mode
      # Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
      attr_accessor :transform_usage
      # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
      attr_accessor :trial_period_days
      # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
      attr_accessor :usage_type

      def initialize(
        active: nil,
        amount: nil,
        amount_decimal: nil,
        billing_scheme: nil,
        currency: nil,
        expand: nil,
        id: nil,
        interval: nil,
        interval_count: nil,
        metadata: nil,
        meter: nil,
        nickname: nil,
        product: nil,
        tiers: nil,
        tiers_mode: nil,
        transform_usage: nil,
        trial_period_days: nil,
        usage_type: nil
      )
        @active = active
        @amount = amount
        @amount_decimal = amount_decimal
        @billing_scheme = billing_scheme
        @currency = currency
        @expand = expand
        @id = id
        @interval = interval
        @interval_count = interval_count
        @metadata = metadata
        @meter = meter
        @nickname = nickname
        @product = product
        @tiers = tiers
        @tiers_mode = tiers_mode
        @transform_usage = transform_usage
        @trial_period_days = trial_period_days
        @usage_type = usage_type
      end
    end
    # Whether the plan can be used for new purchases.
    attr_reader :active
    # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    attr_reader :amount
    # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    attr_reader :amount_decimal
    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    attr_reader :billing_scheme
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Unique identifier for the object.
    attr_reader :id
    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    attr_reader :interval
    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    attr_reader :interval_count
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # The meter tracking the usage of a metered price
    attr_reader :meter
    # A brief description of the plan, hidden from customers.
    attr_reader :nickname
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The product whose pricing this plan determines.
    attr_reader :product
    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    attr_reader :tiers
    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    attr_reader :tiers_mode
    # Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
    attr_reader :transform_usage
    # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
    attr_reader :trial_period_days
    # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
    attr_reader :usage_type
    # Always true for a deleted object
    attr_reader :deleted

    # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/plans", params: params, opts: opts)
    end

    # Deleting plans means new subscribers can't be added. Existing subscribers aren't affected.
    def self.delete(plan, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/plans/%<plan>s", { plan: CGI.escape(plan) }),
        params: params,
        opts: opts
      )
    end

    # Deleting plans means new subscribers can't be added. Existing subscribers aren't affected.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/plans/%<plan>s", { plan: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your plans.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/plans", params: params, opts: opts)
    end

    # Updates the specified plan by setting the values of the parameters passed. Any parameters not provided are left unchanged. By design, you cannot change a plan's ID, amount, currency, or billing cycle.
    def self.update(plan, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/plans/%<plan>s", { plan: CGI.escape(plan) }),
        params: params,
        opts: opts
      )
    end
  end
end
