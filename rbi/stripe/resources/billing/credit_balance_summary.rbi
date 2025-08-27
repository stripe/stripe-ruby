# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # Indicates the billing credit balance for billing credits granted to a customer.
    class CreditBalanceSummary < SingletonAPIResource
      class Balance < Stripe::StripeObject
        class AvailableBalance < Stripe::StripeObject
          class CustomPricingUnit < Stripe::StripeObject
            class CustomPricingUnitDetails < Stripe::StripeObject
              # Time at which the object was created. Measured in seconds since the Unix epoch.
              sig { returns(Integer) }
              attr_reader :created
              # The name of the custom pricing unit.
              sig { returns(String) }
              attr_reader :display_name
              # Unique identifier for the object.
              sig { returns(String) }
              attr_reader :id
              # A lookup key for the custom pricing unit.
              sig { returns(T.nilable(String)) }
              attr_reader :lookup_key
              # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T::Hash[String, String]) }
              attr_reader :metadata
              # The status of the custom pricing unit.
              sig { returns(String) }
              attr_reader :status
            end
            # The custom pricing unit object.
            sig { returns(T.nilable(CustomPricingUnitDetails)) }
            attr_reader :custom_pricing_unit_details
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
            # A positive integer representing the amount.
            sig { returns(String) }
            attr_reader :value
          end
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency
            # A positive integer representing the amount.
            sig { returns(Integer) }
            attr_reader :value
          end
          # The custom pricing unit amount.
          sig { returns(T.nilable(CustomPricingUnit)) }
          attr_reader :custom_pricing_unit
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          attr_reader :type
        end
        class LedgerBalance < Stripe::StripeObject
          class CustomPricingUnit < Stripe::StripeObject
            class CustomPricingUnitDetails < Stripe::StripeObject
              # Time at which the object was created. Measured in seconds since the Unix epoch.
              sig { returns(Integer) }
              attr_reader :created
              # The name of the custom pricing unit.
              sig { returns(String) }
              attr_reader :display_name
              # Unique identifier for the object.
              sig { returns(String) }
              attr_reader :id
              # A lookup key for the custom pricing unit.
              sig { returns(T.nilable(String)) }
              attr_reader :lookup_key
              # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T::Hash[String, String]) }
              attr_reader :metadata
              # The status of the custom pricing unit.
              sig { returns(String) }
              attr_reader :status
            end
            # The custom pricing unit object.
            sig { returns(T.nilable(CustomPricingUnitDetails)) }
            attr_reader :custom_pricing_unit_details
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
            # A positive integer representing the amount.
            sig { returns(String) }
            attr_reader :value
          end
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency
            # A positive integer representing the amount.
            sig { returns(Integer) }
            attr_reader :value
          end
          # The custom pricing unit amount.
          sig { returns(T.nilable(CustomPricingUnit)) }
          attr_reader :custom_pricing_unit
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          attr_reader :type
        end
        # Attribute for field available_balance
        sig { returns(AvailableBalance) }
        attr_reader :available_balance
        # Attribute for field ledger_balance
        sig { returns(LedgerBalance) }
        attr_reader :ledger_balance
      end
      # The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
      sig { returns(T::Array[Balance]) }
      attr_reader :balances
      # The customer the balance is for.
      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer
      # The account the balance is for.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_account
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end