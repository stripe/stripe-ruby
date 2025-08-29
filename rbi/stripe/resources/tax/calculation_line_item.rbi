# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class CalculationLineItem < APIResource
      class TaxBreakdown < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_reader :country
          # A human-readable name for the jurisdiction imposing the tax.
          sig { returns(String) }
          attr_reader :display_name
          # Indicates the level of the jurisdiction imposing the tax.
          sig { returns(String) }
          attr_reader :level
          # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        class TaxRateDetails < Stripe::StripeObject
          # A localized display name for tax type, intended to be human-readable. For example, "Local Sales and Use Tax", "Value-added tax (VAT)", or "Umsatzsteuer (USt.)".
          sig { returns(String) }
          attr_reader :display_name
          # The tax rate percentage as a string. For example, 8.5% is represented as "8.5".
          sig { returns(String) }
          attr_reader :percentage_decimal
          # The tax type, such as `vat` or `sales_tax`.
          sig { returns(String) }
          attr_reader :tax_type
        end
        # The amount of tax, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_reader :amount
        # Attribute for field jurisdiction
        sig { returns(Jurisdiction) }
        attr_reader :jurisdiction
        # Indicates whether the jurisdiction was determined by the origin (merchant's address) or destination (customer's address).
        sig { returns(String) }
        attr_reader :sourcing
        # Details regarding the rate for this tax. This field will be `null` when the tax is not imposed, for example if the product is exempt from tax.
        sig { returns(T.nilable(TaxRateDetails)) }
        attr_reader :tax_rate_details
        # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
        sig { returns(String) }
        attr_reader :taxability_reason
        # The amount on which tax is calculated, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_reader :taxable_amount
      end
      # The line item amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
      sig { returns(Integer) }
      attr_reader :amount
      # The amount of tax calculated for this line item, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(Integer) }
      attr_reader :amount_tax
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The ID of an existing [Product](https://stripe.com/docs/api/products/object).
      sig { returns(T.nilable(String)) }
      attr_reader :product
      # The number of units of the item being purchased. For reversals, this is the quantity reversed.
      sig { returns(Integer) }
      attr_reader :quantity
      # A custom identifier for this line item.
      sig { returns(String) }
      attr_reader :reference
      # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
      sig { returns(String) }
      attr_reader :tax_behavior
      # Detailed account of taxes relevant to this line item.
      sig { returns(T.nilable(T::Array[TaxBreakdown])) }
      attr_reader :tax_breakdown
      # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for this resource.
      sig { returns(String) }
      attr_reader :tax_code
    end
  end
end