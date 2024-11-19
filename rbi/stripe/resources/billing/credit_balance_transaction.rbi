# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A credit balance transaction is a resource representing a transaction (either a credit or a debit) against an existing credit grant.
    class CreditBalanceTransaction < APIResource
      class Credit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
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
        sig { returns(Amount) }
        attr_reader :amount
        sig { returns(String) }
        attr_reader :type
      end
      class Debit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
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
        class CreditsApplied < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Invoice)) }
          attr_reader :invoice
          sig { returns(String) }
          attr_reader :invoice_line_item
        end
        sig { returns(Amount) }
        attr_reader :amount
        sig { returns(T.nilable(CreditsApplied)) }
        attr_reader :credits_applied
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(Credit)) }
      # Credit details for this credit balance transaction. Only present if type is `credit`.
      attr_reader :credit
      sig { returns(T.any(String, Stripe::Billing::CreditGrant)) }
      # The credit grant associated with this credit balance transaction.
      attr_reader :credit_grant
      sig { returns(T.nilable(Debit)) }
      # Debit details for this credit balance transaction. Only present if type is `debit`.
      attr_reader :debit
      sig { returns(Integer) }
      # The effective time of this credit balance transaction.
      attr_reader :effective_at
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      # ID of the test clock this credit balance transaction belongs to.
      attr_reader :test_clock
      sig { returns(T.nilable(String)) }
      # The type of credit balance transaction (credit or debit).
      attr_reader :type
    end
  end
end