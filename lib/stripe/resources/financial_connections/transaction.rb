# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.transaction"
      def self.object_name
        "financial_connections.transaction"
      end

      class StatusTransitions < Stripe::StripeObject
        # Time at which this transaction posted. Measured in seconds since the Unix epoch.
        attr_reader :posted_at
        # Time at which this transaction was voided. Measured in seconds since the Unix epoch.
        attr_reader :void_at
      end

      class ListParams < Stripe::RequestParams
        class TransactedAt < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end

        class TransactionRefresh < Stripe::RequestParams
          # Return results where the transactions were created or updated by a refresh that took place after this refresh (non-inclusive).
          attr_accessor :after

          def initialize(after: nil)
            @after = after
          end
        end
        # The ID of the Financial Connections Account whose transactions will be retrieved.
        attr_accessor :account
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # A filter on the list based on the object `transacted_at` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with the following options:
        attr_accessor :transacted_at
        # A filter on the list based on the object `transaction_refresh` field. The value can be a dictionary with the following options:
        attr_accessor :transaction_refresh

        def initialize(
          account: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          transacted_at: nil,
          transaction_refresh: nil
        )
          @account = account
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @transacted_at = transacted_at
          @transaction_refresh = transaction_refresh
        end
      end
      # The ID of the Financial Connections Account this transaction belongs to.
      attr_reader :account
      # The amount of this transaction, in cents (or local equivalent).
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The description of this transaction.
      attr_reader :description
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The status of the transaction.
      attr_reader :status
      # Attribute for field status_transitions
      attr_reader :status_transitions
      # Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
      attr_reader :transacted_at
      # The token of the transaction refresh that last updated or created this transaction.
      attr_reader :transaction_refresh
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated

      # Returns a list of Financial Connections Transaction objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/financial_connections/transactions",
          params: params,
          opts: opts
        )
      end
    end
  end
end
