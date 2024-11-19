# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # A Tax Transaction records the tax collected from or refunded to your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom#tax-transaction)
    class Transaction < APIResource
      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city
          sig { returns(String) }
          attr_reader :country
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        class TaxId < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
          sig { returns(String) }
          attr_reader :value
        end
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        sig { returns(T.nilable(String)) }
        attr_reader :address_source
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address
        sig { returns(T::Array[TaxId]) }
        attr_reader :tax_ids
        sig { returns(String) }
        attr_reader :taxability_override
      end
      class Reversal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :original_transaction
      end
      class ShipFromDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city
          sig { returns(String) }
          attr_reader :country
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        sig { returns(Address) }
        attr_reader :address
      end
      class ShippingCost < Stripe::StripeObject
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
        attr_reader :amount
        sig { returns(Integer) }
        attr_reader :amount_tax
        sig { returns(String) }
        attr_reader :shipping_rate
        sig { returns(String) }
        attr_reader :tax_behavior
        sig { returns(T::Array[TaxBreakdown]) }
        attr_reader :tax_breakdown
        sig { returns(String) }
        attr_reader :tax_code
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(String)) }
      # The ID of an existing [Customer](https://stripe.com/docs/api/customers/object) used for the resource.
      attr_reader :customer
      sig { returns(CustomerDetails) }
      # Attribute for field customer_details
      attr_reader :customer_details
      sig { returns(String) }
      # Unique identifier for the transaction.
      attr_reader :id
      sig { returns(T.nilable(Stripe::ListObject)) }
      # The tax collected or refunded, by line item.
      attr_reader :line_items
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Integer) }
      # The Unix timestamp representing when the tax liability is assumed or reduced.
      attr_reader :posted_at
      sig { returns(String) }
      # A custom unique identifier, such as 'myOrder_123'.
      attr_reader :reference
      sig { returns(T.nilable(Reversal)) }
      # If `type=reversal`, contains information about what was reversed.
      attr_reader :reversal
      sig { returns(T.nilable(ShipFromDetails)) }
      # The details of the ship from location, such as the address.
      attr_reader :ship_from_details
      sig { returns(T.nilable(ShippingCost)) }
      # The shipping cost details for the transaction.
      attr_reader :shipping_cost
      sig { returns(Integer) }
      # Timestamp of date at which the tax rules and rates in effect applies for the calculation.
      attr_reader :tax_date
      sig { returns(String) }
      # If `reversal`, this transaction reverses an earlier transaction.
      attr_reader :type
    end
  end
end