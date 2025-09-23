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
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # A positive integer representing the amount.
            attr_reader :value
          end
          # The monetary amount.
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          attr_reader :type
        end

        class CreditsApplicationInvoiceVoided < Stripe::StripeObject
          # The invoice to which the reinstated billing credits were originally applied.
          attr_reader :invoice
          # The invoice line item to which the reinstated billing credits were originally applied.
          attr_reader :invoice_line_item
        end
        # Attribute for field amount
        attr_reader :amount
        # Details of the invoice to which the reinstated credits were originally applied. Only present if `type` is `credits_application_invoice_voided`.
        attr_reader :credits_application_invoice_voided
        # The type of credit transaction.
        attr_reader :type
      end

      class Debit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # A positive integer representing the amount.
            attr_reader :value
          end
          # The monetary amount.
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          attr_reader :type
        end

        class CreditsApplied < Stripe::StripeObject
          # The invoice to which the billing credits were applied.
          attr_reader :invoice
          # The invoice line item to which the billing credits were applied.
          attr_reader :invoice_line_item
        end
        # Attribute for field amount
        attr_reader :amount
        # Details of how the billing credits were applied to an invoice. Only present if `type` is `credits_applied`.
        attr_reader :credits_applied
        # The type of debit transaction.
        attr_reader :type
      end

      class ListParams < Stripe::RequestParams
        # The credit grant for which to fetch credit balance transactions.
        attr_accessor :credit_grant
        # The customer for which to fetch credit balance transactions.
        attr_accessor :customer
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          credit_grant: nil,
          customer: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        )
          @credit_grant = credit_grant
          @customer = customer
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
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

      # Retrieve a list of credit balance transactions.
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
