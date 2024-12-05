# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Calculation allows you to calculate the tax to collect from your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom)
    class Calculation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "tax.calculation"
      def self.object_name
        "tax.calculation"
      end

      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end

        class TaxId < Stripe::StripeObject
          attr_reader :type, :value
        end
        attr_reader :address, :address_source, :ip_address, :tax_ids, :taxability_override
      end

      class ShipFromDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address
      end

      class ShippingCost < Stripe::StripeObject
        class TaxBreakdown < Stripe::StripeObject
          class Jurisdiction < Stripe::StripeObject
            attr_reader :country, :display_name, :level, :state
          end

          class TaxRateDetails < Stripe::StripeObject
            attr_reader :display_name, :percentage_decimal, :tax_type
          end
          attr_reader :amount, :jurisdiction, :sourcing, :tax_rate_details, :taxability_reason, :taxable_amount
        end
        attr_reader :amount, :amount_tax, :shipping_rate, :tax_behavior, :tax_breakdown, :tax_code
      end

      class TaxBreakdown < Stripe::StripeObject
        class TaxRateDetails < Stripe::StripeObject
          class FlatAmount < Stripe::StripeObject
            attr_reader :amount, :currency
          end
          attr_reader :country, :flat_amount, :percentage_decimal, :rate_type, :state, :tax_type
        end
        attr_reader :amount, :inclusive, :tax_rate_details, :taxability_reason, :taxable_amount
      end
      # Total amount after taxes in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_total
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The ID of an existing [Customer](https://stripe.com/docs/api/customers/object) used for the resource.
      attr_reader :customer
      # Attribute for field customer_details
      attr_reader :customer_details
      # Timestamp of date at which the tax calculation will expire.
      attr_reader :expires_at
      # Unique identifier for the calculation.
      attr_reader :id
      # The list of items the customer is purchasing.
      attr_reader :line_items
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The details of the ship from location, such as the address.
      attr_reader :ship_from_details
      # The shipping cost details for the calculation.
      attr_reader :shipping_cost
      # The amount of tax to be collected on top of the line item prices.
      attr_reader :tax_amount_exclusive
      # The amount of tax already included in the line item prices.
      attr_reader :tax_amount_inclusive
      # Breakdown of individual tax amounts that add up to the total.
      attr_reader :tax_breakdown
      # Timestamp of date at which the tax rules and rates in effect applies for the calculation.
      attr_reader :tax_date

      # Calculates tax based on the input and returns a Tax Calculation object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/calculations",
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a tax calculation as a collection, if the calculation hasn't expired.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/calculations/%<calculation>s/line_items", { calculation: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a tax calculation as a collection, if the calculation hasn't expired.
      def self.list_line_items(calculation, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/calculations/%<calculation>s/line_items", { calculation: CGI.escape(calculation) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
