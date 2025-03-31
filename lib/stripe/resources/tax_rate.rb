# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Tax rates can be applied to [invoices](https://stripe.com/invoicing/taxes/tax-rates), [subscriptions](https://stripe.com/billing/taxes/tax-rates) and [Checkout Sessions](https://stripe.com/payments/checkout/use-manual-tax-rates) to collect tax.
  #
  # Related guide: [Tax rates](https://stripe.com/billing/taxes/tax-rates)
  class TaxRate < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "tax_rate"
    def self.object_name
      "tax_rate"
    end

    class FlatAmount < Stripe::StripeObject
      # Amount of the tax when the `rate_type` is `flat_amount`. This positive integer represents how much to charge in the smallest currency unit (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      attr_reader :amount
      # Three-letter ISO currency code, in lowercase.
      attr_reader :currency
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
      # Optional flag to filter by tax rates that are either active or inactive (archived).
      attr_accessor :active
      # Optional range for filtering created date.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Optional flag to filter by tax rates that are inclusive (or those that are not inclusive).
      attr_accessor :inclusive
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        active: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        inclusive: nil,
        limit: nil,
        starting_after: nil
      )
        @active = active
        @created = created
        @ending_before = ending_before
        @expand = expand
        @inclusive = inclusive
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
      attr_accessor :active
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      attr_accessor :country
      # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
      attr_accessor :description
      # The display name of the tax rate, which will be shown to users.
      attr_accessor :display_name
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # This specifies if the tax rate is inclusive or exclusive.
      attr_accessor :inclusive
      # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
      attr_accessor :jurisdiction
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # This represents the tax rate percent out of 100.
      attr_accessor :percentage
      # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
      attr_accessor :state
      # The high-level tax type, such as `vat` or `sales_tax`.
      attr_accessor :tax_type

      def initialize(
        active: nil,
        country: nil,
        description: nil,
        display_name: nil,
        expand: nil,
        inclusive: nil,
        jurisdiction: nil,
        metadata: nil,
        percentage: nil,
        state: nil,
        tax_type: nil
      )
        @active = active
        @country = country
        @description = description
        @display_name = display_name
        @expand = expand
        @inclusive = inclusive
        @jurisdiction = jurisdiction
        @metadata = metadata
        @percentage = percentage
        @state = state
        @tax_type = tax_type
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
      attr_accessor :active
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      attr_accessor :country
      # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
      attr_accessor :description
      # The display name of the tax rate, which will be shown to users.
      attr_accessor :display_name
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
      attr_accessor :jurisdiction
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
      attr_accessor :state
      # The high-level tax type, such as `vat` or `sales_tax`.
      attr_accessor :tax_type

      def initialize(
        active: nil,
        country: nil,
        description: nil,
        display_name: nil,
        expand: nil,
        jurisdiction: nil,
        metadata: nil,
        state: nil,
        tax_type: nil
      )
        @active = active
        @country = country
        @description = description
        @display_name = display_name
        @expand = expand
        @jurisdiction = jurisdiction
        @metadata = metadata
        @state = state
        @tax_type = tax_type
      end
    end
    # Defaults to `true`. When set to `false`, this tax rate cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
    attr_reader :active
    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    attr_reader :country
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
    attr_reader :description
    # The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
    attr_reader :display_name
    # Actual/effective tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true,
    # this percentage reflects the rate actually used to calculate tax based on the product's taxability
    # and whether the user is registered to collect taxes in the corresponding jurisdiction.
    attr_reader :effective_percentage
    # The amount of the tax rate when the `rate_type` is `flat_amount`. Tax rates with `rate_type` `percentage` can vary based on the transaction, resulting in this field being `null`. This field exposes the amount and currency of the flat tax rate.
    attr_reader :flat_amount
    # Unique identifier for the object.
    attr_reader :id
    # This specifies if the tax rate is inclusive or exclusive.
    attr_reader :inclusive
    # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
    attr_reader :jurisdiction
    # The level of the jurisdiction that imposes this tax rate. Will be `null` for manually defined tax rates.
    attr_reader :jurisdiction_level
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true, this percentage includes the statutory tax rate of non-taxable jurisdictions.
    attr_reader :percentage
    # Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
    attr_reader :rate_type
    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
    attr_reader :state
    # The high-level tax type, such as `vat` or `sales_tax`.
    attr_reader :tax_type

    # Creates a new tax rate.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/tax_rates", params: params, opts: opts)
    end

    # Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_rates", params: params, opts: opts)
    end

    # Updates an existing tax rate.
    def self.update(tax_rate, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/tax_rates/%<tax_rate>s", { tax_rate: CGI.escape(tax_rate) }),
        params: params,
        opts: opts
      )
    end
  end
end
