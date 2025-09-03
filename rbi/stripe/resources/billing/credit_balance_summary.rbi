# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # Indicates the billing credit balance for billing credits granted to a customer.
    class CreditBalanceSummary < SingletonAPIResource
      class Balance < Stripe::StripeObject
        class AvailableBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            # A positive integer representing the amount.
            sig { returns(Integer) }
            def value; end
          end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          def monetary; end
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          def type; end
        end
        class LedgerBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            # A positive integer representing the amount.
            sig { returns(Integer) }
            def value; end
          end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          def monetary; end
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          def type; end
        end
        # Attribute for field available_balance
        sig { returns(AvailableBalance) }
        def available_balance; end
        # Attribute for field ledger_balance
        sig { returns(LedgerBalance) }
        def ledger_balance; end
      end
      # The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
      sig { returns(T::Array[Balance]) }
      def balances; end
      # The customer the balance is for.
      sig { returns(T.any(String, Stripe::Customer)) }
      def customer; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
    end
  end
end