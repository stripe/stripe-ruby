# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Transaction records the tax collected from or refunded to your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom#tax-transaction)
    class Transaction < APIResource
      OBJECT_NAME = "tax.transaction"
      def self.object_name
        "tax.transaction"
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

      class Reversal < Stripe::StripeObject
        attr_reader :original_transaction
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
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The ID of an existing [Customer](https://stripe.com/docs/api/customers/object) used for the resource.
      attr_reader :customer
      # Attribute for field customer_details
      attr_reader :customer_details
      # Unique identifier for the transaction.
      attr_reader :id
      # The tax collected or refunded, by line item.
      attr_reader :line_items
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The Unix timestamp representing when the tax liability is assumed or reduced.
      attr_reader :posted_at
      # A custom unique identifier, such as 'myOrder_123'.
      attr_reader :reference
      # If `type=reversal`, contains information about what was reversed.
      attr_reader :reversal
      # The details of the ship from location, such as the address.
      attr_reader :ship_from_details
      # The shipping cost details for the transaction.
      attr_reader :shipping_cost
      # Timestamp of date at which the tax rules and rates in effect applies for the calculation.
      attr_reader :tax_date
      # If `reversal`, this transaction reverses an earlier transaction.
      attr_reader :type

      # Creates a Tax Transaction from a calculation, if that calculation hasn't expired. Calculations expire after 90 days.
      def self.create_from_calculation(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_from_calculation",
          params: params,
          opts: opts
        )
      end

      # Partially or fully reverses a previously created Transaction.
      def self.create_reversal(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_reversal",
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a committed standalone transaction as a collection.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a committed standalone transaction as a collection.
      def self.list_line_items(transaction, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
