# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class CalculationLineItem < APIResource
      OBJECT_NAME = "tax.calculation_line_item"
      def self.object_name
        "tax.calculation_line_item"
      end

      class TaxBreakdown < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          attr_reader :country, :display_name, :level, :state
        end

        class TaxRateDetails < Stripe::StripeObject
          attr_reader :display_name, :percentage_decimal, :tax_type
        end
        attr_reader :amount, :jurisdiction, :sourcing, :tax_rate_details, :taxability_reason, :taxable_amount
      end
      # The line item amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
      attr_reader :amount
      # The amount of tax calculated for this line item, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_tax
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The ID of an existing [Product](https://stripe.com/docs/api/products/object).
      attr_reader :product
      # The number of units of the item being purchased. For reversals, this is the quantity reversed.
      attr_reader :quantity
      # A custom identifier for this line item.
      attr_reader :reference
      # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
      attr_reader :tax_behavior
      # Detailed account of taxes relevant to this line item.
      attr_reader :tax_breakdown
      # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for this resource.
      attr_reader :tax_code
    end
  end
end
