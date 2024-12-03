# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A credit balance transaction is a resource representing a transaction (either a credit or a debit) against an existing credit grant.
    class CreditBalanceTransaction < APIResource
      class Credit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency
            # A positive integer representing the amount.
            sig { returns(Integer) }
            attr_reader :value
          end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          attr_reader :type
        end
        # Attribute for field amount
        sig { returns(Amount) }
        attr_reader :amount
        # The type of credit transaction.
        sig { returns(String) }
        attr_reader :type
      end
      class Debit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency
            # A positive integer representing the amount.
            sig { returns(Integer) }
            attr_reader :value
          end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          attr_reader :type
        end
        class CreditsApplied < Stripe::StripeObject
          # The invoice to which the billing credits were applied.
          sig { returns(T.any(String, Stripe::Invoice)) }
          attr_reader :invoice
          # The invoice line item to which the billing credits were applied.
          sig { returns(String) }
          attr_reader :invoice_line_item
        end
        # Attribute for field amount
        sig { returns(Amount) }
        attr_reader :amount
        # Details of how the billing credits were applied to an invoice. Only present if `type` is `credits_applied`.
        sig { returns(T.nilable(CreditsApplied)) }
        attr_reader :credits_applied
        # The type of debit transaction.
        sig { returns(String) }
        attr_reader :type
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Credit details for this credit balance transaction. Only present if type is `credit`.
      sig { returns(T.nilable(Credit)) }
      attr_reader :credit

      # The credit grant associated with this credit balance transaction.
      sig { returns(T.any(String, Stripe::Billing::CreditGrant)) }
      attr_reader :credit_grant

      # Debit details for this credit balance transaction. Only present if type is `debit`.
      sig { returns(T.nilable(Debit)) }
      attr_reader :debit

      # The effective time of this credit balance transaction.
      sig { returns(Integer) }
      attr_reader :effective_at

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # ID of the test clock this credit balance transaction belongs to.
      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      attr_reader :test_clock

      # The type of credit balance transaction (credit or debit).
      sig { returns(T.nilable(String)) }
      attr_reader :type
    end
  end
end