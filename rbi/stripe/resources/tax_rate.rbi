# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Tax rates can be applied to [invoices](https://docs.stripe.com/invoicing/taxes/tax-rates), [subscriptions](https://docs.stripe.com/billing/taxes/tax-rates) and [Checkout Sessions](https://docs.stripe.com/payments/checkout/use-manual-tax-rates) to collect tax.
  #
  # Related guide: [Tax rates](https://docs.stripe.com/billing/taxes/tax-rates)
  class TaxRate < APIResource
    class FlatAmount < Stripe::StripeObject
      # Amount of the tax when the `rate_type` is `flat_amount`. This positive integer represents how much to charge in the smallest currency unit (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(Integer) }
      attr_reader :amount
      # Three-letter ISO currency code, in lowercase.
      sig { returns(String) }
      attr_reader :currency
    end
    # Defaults to `true`. When set to `false`, this tax rate cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
    sig { returns(T::Boolean) }
    attr_reader :active
    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    sig { returns(T.nilable(String)) }
    attr_reader :country
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
    sig { returns(String) }
    attr_reader :display_name
    # Actual/effective tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true,
    # this percentage reflects the rate actually used to calculate tax based on the product's taxability
    # and whether the user is registered to collect taxes in the corresponding jurisdiction.
    sig { returns(T.nilable(Float)) }
    attr_reader :effective_percentage
    # The amount of the tax rate when the `rate_type` is `flat_amount`. Tax rates with `rate_type` `percentage` can vary based on the transaction, resulting in this field being `null`. This field exposes the amount and currency of the flat tax rate.
    sig { returns(T.nilable(FlatAmount)) }
    attr_reader :flat_amount
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # This specifies if the tax rate is inclusive or exclusive.
    sig { returns(T::Boolean) }
    attr_reader :inclusive
    # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
    sig { returns(T.nilable(String)) }
    attr_reader :jurisdiction
    # The level of the jurisdiction that imposes this tax rate. Will be `null` for manually defined tax rates.
    sig { returns(T.nilable(String)) }
    attr_reader :jurisdiction_level
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true, this percentage includes the statutory tax rate of non-taxable jurisdictions.
    sig { returns(Float) }
    attr_reader :percentage
    # Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
    sig { returns(T.nilable(String)) }
    attr_reader :rate_type
    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
    sig { returns(T.nilable(String)) }
    attr_reader :state
    # The high-level tax type, such as `vat` or `sales_tax`.
    sig { returns(T.nilable(String)) }
    attr_reader :tax_type
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
      # Optional flag to filter by tax rates that are either active or inactive (archived).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Optional range for filtering created date.
      sig { returns(T.nilable(T.any(::Stripe::TaxRate::ListParams::Created, Integer))) }
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Optional flag to filter by tax rates that are inclusive (or those that are not inclusive).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :inclusive
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(active: T.nilable(T::Boolean), created: T.nilable(T.any(::Stripe::TaxRate::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), inclusive: T.nilable(T::Boolean), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        inclusive: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(T.nilable(String)) }
      attr_accessor :country
      # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The display name of the tax rate, which will be shown to users.
      sig { returns(String) }
      attr_accessor :display_name
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # This specifies if the tax rate is inclusive or exclusive.
      sig { returns(T::Boolean) }
      attr_accessor :inclusive
      # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :jurisdiction
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # This represents the tax rate percent out of 100.
      sig { returns(Float) }
      attr_accessor :percentage
      # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
      sig { returns(T.nilable(String)) }
      attr_accessor :state
      # The high-level tax type, such as `vat` or `sales_tax`.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_type
      sig {
        params(active: T.nilable(T::Boolean), country: T.nilable(String), description: T.nilable(String), display_name: String, expand: T.nilable(T::Array[String]), inclusive: T::Boolean, jurisdiction: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), percentage: Float, state: T.nilable(String), tax_type: T.nilable(String)).void
       }
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
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      # Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(T.nilable(String)) }
      attr_accessor :country
      # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The display name of the tax rate, which will be shown to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :display_name
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :jurisdiction
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
      sig { returns(T.nilable(String)) }
      attr_accessor :state
      # The high-level tax type, such as `vat` or `sales_tax`.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_type
      sig {
        params(active: T.nilable(T::Boolean), country: T.nilable(String), description: T.nilable(String), display_name: T.nilable(String), expand: T.nilable(T::Array[String]), jurisdiction: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), state: T.nilable(String), tax_type: T.nilable(String)).void
       }
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
      ); end
    end
    # Creates a new tax rate.
    sig {
      params(params: T.any(::Stripe::TaxRate::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TaxRate)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.
    sig {
      params(params: T.any(::Stripe::TaxRate::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates an existing tax rate.
    sig {
      params(tax_rate: String, params: T.any(::Stripe::TaxRate::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::TaxRate)
     }
    def self.update(tax_rate, params = {}, opts = {}); end
  end
end