# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class CalculationLineItem < APIResource
      class TaxBreakdown < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :country
          sig { returns(String) }
          attr_reader :display_name
          sig { returns(String) }
          attr_reader :level
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        class TaxRateDetails < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :display_name
          sig { returns(String) }
          attr_reader :percentage_decimal
          sig { returns(String) }
          attr_reader :tax_type
        end
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(Jurisdiction) }
        attr_reader :jurisdiction
        sig { returns(String) }
        attr_reader :sourcing
        sig { returns(T.nilable(TaxRateDetails)) }
        attr_reader :tax_rate_details
        sig { returns(String) }
        attr_reader :taxability_reason
        sig { returns(Integer) }
        attr_reader :taxable_amount
      end
      sig { returns(Integer) }
      # The line item amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
      attr_reader :amount
      sig { returns(Integer) }
      # The amount of tax calculated for this line item, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_tax
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # The ID of an existing [Product](https://stripe.com/docs/api/products/object).
      attr_reader :product
      sig { returns(Integer) }
      # The number of units of the item being purchased. For reversals, this is the quantity reversed.
      attr_reader :quantity
      sig { returns(T.nilable(String)) }
      # A custom identifier for this line item.
      attr_reader :reference
      sig { returns(String) }
      # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
      attr_reader :tax_behavior
      sig { returns(T.nilable(T::Array[TaxBreakdown])) }
      # Detailed account of taxes relevant to this line item.
      attr_reader :tax_breakdown
      sig { returns(String) }
      # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for this resource.
      attr_reader :tax_code
    end
  end
end