# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
  #
  # Related guide: [Tax rates](https://stripe.com/docs/billing/taxes/tax-rates)
  class TaxRate < APIResource
    class FlatAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(String) }
      attr_reader :currency
    end
    sig { returns(T::Boolean) }
    # Defaults to `true`. When set to `false`, this tax rate cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
    attr_reader :active
    sig { returns(T.nilable(String)) }
    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    attr_reader :country
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
    attr_reader :description
    sig { returns(String) }
    # The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
    attr_reader :display_name
    sig { returns(T.nilable(Float)) }
    # Actual/effective tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true,
    # this percentage reflects the rate actually used to calculate tax based on the product's taxability
    # and whether the user is registered to collect taxes in the corresponding jurisdiction.
    attr_reader :effective_percentage
    sig { returns(T.nilable(FlatAmount)) }
    # The amount of the tax rate when the `rate_type` is `flat_amount`. Tax rates with `rate_type` `percentage` can vary based on the transaction, resulting in this field being `null`. This field exposes the amount and currency of the flat tax rate.
    attr_reader :flat_amount
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # This specifies if the tax rate is inclusive or exclusive.
    attr_reader :inclusive
    sig { returns(T.nilable(String)) }
    # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
    attr_reader :jurisdiction
    sig { returns(T.nilable(String)) }
    # The level of the jurisdiction that imposes this tax rate. Will be `null` for manually defined tax rates.
    attr_reader :jurisdiction_level
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Float) }
    # Tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true, this percentage includes the statutory tax rate of non-taxable jurisdictions.
    attr_reader :percentage
    sig { returns(T.nilable(String)) }
    # Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location.
    attr_reader :rate_type
    sig { returns(T.nilable(String)) }
    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
    attr_reader :state
    sig { returns(T.nilable(String)) }
    # The high-level tax type, such as `vat` or `sales_tax`.
    attr_reader :tax_type
  end
end