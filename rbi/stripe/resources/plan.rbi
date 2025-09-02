# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
    class Tier < Stripe::StripeObject
      # Price for the entire tier.
      sig { returns(T.nilable(Integer)) }
      def flat_amount; end
      # Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      def flat_amount_decimal; end
      # Per unit price for units relevant to the tier.
      sig { returns(T.nilable(Integer)) }
      def unit_amount; end
      # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      def unit_amount_decimal; end
      # Up to and including to this quantity will be contained in the tier.
      sig { returns(T.nilable(Integer)) }
      def up_to; end
    end
    class TransformUsage < Stripe::StripeObject
      # Divide usage by this number.
      sig { returns(Integer) }
      def divide_by; end
      # After division, either round the result `up` or `down`.
      sig { returns(String) }
      def round; end
    end
    # Whether the plan can be used for new purchases.
    sig { returns(T::Boolean) }
    def active; end
    # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    sig { returns(T.nilable(Integer)) }
    def amount; end
    # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    sig { returns(T.nilable(String)) }
    def amount_decimal; end
    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    sig { returns(String) }
    def billing_scheme; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    sig { returns(String) }
    def interval; end
    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    sig { returns(Integer) }
    def interval_count; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # The meter tracking the usage of a metered price
    sig { returns(T.nilable(String)) }
    def meter; end
    # A brief description of the plan, hidden from customers.
    sig { returns(T.nilable(String)) }
    def nickname; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The product whose pricing this plan determines.
    sig { returns(T.nilable(T.any(String, Stripe::Product))) }
    def product; end
    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    sig { returns(T::Array[Tier]) }
    def tiers; end
    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    sig { returns(T.nilable(String)) }
    def tiers_mode; end
    # Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
    sig { returns(T.nilable(TransformUsage)) }
    def transform_usage; end
    # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
    sig { returns(T.nilable(Integer)) }
    def trial_period_days; end
    # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
    sig { returns(String) }
    def usage_type; end
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    def deleted; end
    class DeleteParams < Stripe::RequestParams; end
    class UpdateParams < Stripe::RequestParams
      # Whether the plan is currently available for new subscriptions.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # A brief description of the plan, hidden from customers.
      sig { returns(T.nilable(String)) }
      def nickname; end
      sig { params(_nickname: T.nilable(String)).returns(T.nilable(String)) }
      def nickname=(_nickname); end
      # The product the plan belongs to. This cannot be changed once it has been used in a subscription or subscription schedule.
      sig { returns(T.nilable(String)) }
      def product; end
      sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
      def product=(_product); end
      # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
      sig { returns(T.nilable(Integer)) }
      def trial_period_days; end
      sig { params(_trial_period_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def trial_period_days=(_trial_period_days); end
      sig {
        params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), nickname: T.nilable(String), product: T.nilable(String), trial_period_days: T.nilable(Integer)).void
       }
      def initialize(
        active: nil,
        expand: nil,
        metadata: nil,
        nickname: nil,
        product: nil,
        trial_period_days: nil
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
      # Only return plans that are active or inactive (e.g., pass `false` to list all inactive plans).
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::Plan::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::Plan::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Plan::ListParams::Created, Integer)))
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
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Only return plans for the given product.
      sig { returns(T.nilable(String)) }
      def product; end
      sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
      def product=(_product); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(active: T.nilable(T::Boolean), created: T.nilable(T.any(::Stripe::Plan::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), product: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        product: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Product < Stripe::RequestParams
        # Whether the product is currently available for purchase. Defaults to `true`.
        sig { returns(T.nilable(T::Boolean)) }
        def active; end
        sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def active=(_active); end
        # The identifier for the product. Must be unique. If not provided, an identifier will be randomly generated.
        sig { returns(T.nilable(String)) }
        def id; end
        sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
        def id=(_id); end
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
        # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
        #
        # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
        sig { returns(T.nilable(String)) }
        def tax_code; end
        sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
        def tax_code=(_tax_code); end
        # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
        sig { returns(T.nilable(String)) }
        def unit_label; end
        sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
        def unit_label=(_unit_label); end
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
      class TransformUsage < Stripe::RequestParams
        # Divide usage by this number.
        sig { returns(Integer) }
        def divide_by; end
        sig { params(_divide_by: Integer).returns(Integer) }
        def divide_by=(_divide_by); end
        # After division, either round the result `up` or `down`.
        sig { returns(String) }
        def round; end
        sig { params(_round: String).returns(String) }
        def round=(_round); end
        sig { params(divide_by: Integer, round: String).void }
        def initialize(divide_by: nil, round: nil); end
      end
      # Whether the plan is currently available for new subscriptions. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # A positive integer in cents (or local equivalent) (or 0 for a free plan) representing how much to charge on a recurring basis.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Same as `amount`, but accepts a decimal value with at most 12 decimal places. Only one of `amount` and `amount_decimal` can be set.
      sig { returns(T.nilable(String)) }
      def amount_decimal; end
      sig { params(_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
      def amount_decimal=(_amount_decimal); end
      # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
      sig { returns(T.nilable(String)) }
      def billing_scheme; end
      sig { params(_billing_scheme: T.nilable(String)).returns(T.nilable(String)) }
      def billing_scheme=(_billing_scheme); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # An identifier randomly generated by Stripe. Used to identify this plan when subscribing a customer. You can optionally override this ID, but the ID must be unique across all plans in your Stripe account. You can, however, use the same plan ID in both live and test modes.
      sig { returns(T.nilable(String)) }
      def id; end
      sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
      def id=(_id); end
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
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The meter tracking the usage of a metered price
      sig { returns(T.nilable(String)) }
      def meter; end
      sig { params(_meter: T.nilable(String)).returns(T.nilable(String)) }
      def meter=(_meter); end
      # A brief description of the plan, hidden from customers.
      sig { returns(T.nilable(String)) }
      def nickname; end
      sig { params(_nickname: T.nilable(String)).returns(T.nilable(String)) }
      def nickname=(_nickname); end
      # Attribute for param field product
      sig { returns(T.nilable(T.any(::Stripe::Plan::CreateParams::Product, String))) }
      def product; end
      sig {
        params(_product: T.nilable(T.any(::Stripe::Plan::CreateParams::Product, String))).returns(T.nilable(T.any(::Stripe::Plan::CreateParams::Product, String)))
       }
      def product=(_product); end
      # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
      sig { returns(T.nilable(T::Array[::Stripe::Plan::CreateParams::Tier])) }
      def tiers; end
      sig {
        params(_tiers: T.nilable(T::Array[::Stripe::Plan::CreateParams::Tier])).returns(T.nilable(T::Array[::Stripe::Plan::CreateParams::Tier]))
       }
      def tiers=(_tiers); end
      # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
      sig { returns(T.nilable(String)) }
      def tiers_mode; end
      sig { params(_tiers_mode: T.nilable(String)).returns(T.nilable(String)) }
      def tiers_mode=(_tiers_mode); end
      # Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
      sig { returns(T.nilable(::Stripe::Plan::CreateParams::TransformUsage)) }
      def transform_usage; end
      sig {
        params(_transform_usage: T.nilable(::Stripe::Plan::CreateParams::TransformUsage)).returns(T.nilable(::Stripe::Plan::CreateParams::TransformUsage))
       }
      def transform_usage=(_transform_usage); end
      # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
      sig { returns(T.nilable(Integer)) }
      def trial_period_days; end
      sig { params(_trial_period_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def trial_period_days=(_trial_period_days); end
      # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
      sig { returns(T.nilable(String)) }
      def usage_type; end
      sig { params(_usage_type: T.nilable(String)).returns(T.nilable(String)) }
      def usage_type=(_usage_type); end
      sig {
        params(active: T.nilable(T::Boolean), amount: T.nilable(Integer), amount_decimal: T.nilable(String), billing_scheme: T.nilable(String), currency: String, expand: T.nilable(T::Array[String]), id: T.nilable(String), interval: String, interval_count: T.nilable(Integer), metadata: T.nilable(T.any(String, T::Hash[String, String])), meter: T.nilable(String), nickname: T.nilable(String), product: T.nilable(T.any(::Stripe::Plan::CreateParams::Product, String)), tiers: T.nilable(T::Array[::Stripe::Plan::CreateParams::Tier]), tiers_mode: T.nilable(String), transform_usage: T.nilable(::Stripe::Plan::CreateParams::TransformUsage), trial_period_days: T.nilable(Integer), usage_type: T.nilable(String)).void
       }
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
      ); end
    end
    # You can now model subscriptions more flexibly using the [Prices API](https://docs.stripe.com/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
    sig {
      params(params: T.any(::Stripe::Plan::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Plan)
     }
    def self.create(params = {}, opts = {}); end

    # Deleting plans means new subscribers can't be added. Existing subscribers aren't affected.
    sig {
      params(plan: String, params: T.any(::Stripe::Plan::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Plan)
     }
    def self.delete(plan, params = {}, opts = {}); end

    # Deleting plans means new subscribers can't be added. Existing subscribers aren't affected.
    sig {
      params(params: T.any(::Stripe::Plan::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Plan)
     }
    def delete(params = {}, opts = {}); end

    # Returns a list of your plans.
    sig {
      params(params: T.any(::Stripe::Plan::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the specified plan by setting the values of the parameters passed. Any parameters not provided are left unchanged. By design, you cannot change a plan's ID, amount, currency, or billing cycle.
    sig {
      params(plan: String, params: T.any(::Stripe::Plan::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Plan)
     }
    def self.update(plan, params = {}, opts = {}); end
  end
end