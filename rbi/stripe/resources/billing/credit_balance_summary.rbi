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
            sig { returns(String) }
            attr_reader :currency
            sig { returns(Integer) }
            attr_reader :value
          end
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary
          sig { returns(String) }
          attr_reader :type
        end
        class LedgerBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :currency
            sig { returns(Integer) }
            attr_reader :value
          end
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(AvailableBalance) }
        attr_reader :available_balance
        sig { returns(LedgerBalance) }
        attr_reader :ledger_balance
      end
      sig { returns(T::Array[Balance]) }
      # The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
      attr_reader :balances
      sig { returns(T.any(String, Stripe::Customer)) }
      # The customer the balance is for.
      attr_reader :customer
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
    end
  end
end