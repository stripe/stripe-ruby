# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
  #
  # Related guide: [Tax rates](https://stripe.com/docs/billing/taxes/tax-rates)
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

    # Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location.
    sig { returns(T.nilable(String)) }
    attr_reader :rate_type

    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
    sig { returns(T.nilable(String)) }
    attr_reader :state

    # The high-level tax type, such as `vat` or `sales_tax`.
    sig { returns(T.nilable(String)) }
    attr_reader :tax_type
  end
end