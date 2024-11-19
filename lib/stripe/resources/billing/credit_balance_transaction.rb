# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A credit balance transaction is a resource representing a transaction (either a credit or a debit) against an existing credit grant.
    class CreditBalanceTransaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "billing.credit_balance_transaction"
      def self.object_name
        "billing.credit_balance_transaction"
      end

      class Credit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            attr_reader :currency, :value
          end
          attr_reader :monetary, :type
        end
        attr_reader :amount, :type
      end

      class Debit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            attr_reader :currency, :value
          end
          attr_reader :monetary, :type
        end

        class CreditsApplied < Stripe::StripeObject
          attr_reader :invoice, :invoice_line_item
        end
        attr_reader :amount, :credits_applied, :type
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Credit details for this credit balance transaction. Only present if type is `credit`.
      attr_reader :credit
      # The credit grant associated with this credit balance transaction.
      attr_reader :credit_grant
      # Debit details for this credit balance transaction. Only present if type is `debit`.
      attr_reader :debit
      # The effective time of this credit balance transaction.
      attr_reader :effective_at
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # ID of the test clock this credit balance transaction belongs to.
      attr_reader :test_clock
      # The type of credit balance transaction (credit or debit).
      attr_reader :type

      # Retrieve a list of credit balance transactions
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing/credit_balance_transactions",
          params: params,
          opts: opts
        )
      end
    end
  end
end
