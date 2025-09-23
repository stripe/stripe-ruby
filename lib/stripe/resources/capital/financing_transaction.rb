# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    # This is an object representing the details of a transaction on a Capital financing object.
    class FinancingTransaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "capital.financing_transaction"
      def self.object_name
        "capital.financing_transaction"
      end

      class Details < Stripe::StripeObject
        class Transaction < Stripe::StripeObject
          # The linked payment ID.
          attr_reader :charge
          # The linked Treasury Financing Transaction ID.
          attr_reader :treasury_transaction

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The advance amount being repaid, paid out, or reversed in minor units.
        attr_reader :advance_amount
        # The currency of the financing transaction.
        attr_reader :currency
        # The fee amount being repaid, paid out, or reversed in minor units.
        attr_reader :fee_amount
        # The linked payment for the transaction. This field only applies to financing transactions of type `paydown` and reason `automatic_withholding`.
        attr_reader :linked_payment
        # The reason for the financing transaction (if applicable).
        attr_reader :reason
        # The reversed transaction. This field only applies to financing
        # transactions of type `reversal`.
        attr_reader :reversed_transaction
        # The advance and fee amount being repaid, paid out, or reversed in minor units.
        attr_reader :total_amount
        # This is an object representing a linked transaction on a Capital Financing Transaction.
        attr_reader :transaction

        def self.inner_class_types
          @inner_class_types = { transaction: Transaction }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class ListParams < Stripe::RequestParams
        # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this charge.
        attr_accessor :charge
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Returns transactions that were created that apply to this financing offer ID.
        attr_accessor :financing_offer
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Only returns transactions that are responsible for reversing this financing transaction ID.
        attr_accessor :reversed_transaction
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this Treasury Transaction.
        attr_accessor :treasury_transaction

        def initialize(
          charge: nil,
          ending_before: nil,
          expand: nil,
          financing_offer: nil,
          limit: nil,
          reversed_transaction: nil,
          starting_after: nil,
          treasury_transaction: nil
        )
          @charge = charge
          @ending_before = ending_before
          @expand = expand
          @financing_offer = financing_offer
          @limit = limit
          @reversed_transaction = reversed_transaction
          @starting_after = starting_after
          @treasury_transaction = treasury_transaction
        end
      end
      # The ID of the merchant associated with this financing transaction.
      attr_reader :account
      # Time at which the financing transaction was created. Given in seconds since unix epoch.
      attr_reader :created_at
      # This is an object representing a transaction on a Capital financing offer.
      attr_reader :details
      # The Capital financing offer for this financing transaction.
      attr_reader :financing_offer
      # A unique identifier for the financing transaction object.
      attr_reader :id
      # The Capital transaction object that predates the Financing Transactions API and
      # corresponds with the balance transaction that was created as a result of this
      # financing transaction.
      attr_reader :legacy_balance_transaction_source
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The object type: financing_transaction
      attr_reader :object
      # The type of the financing transaction.
      attr_reader :type
      # A human-friendly description of the financing transaction.
      attr_reader :user_facing_description

      # Returns a list of financing transactions. The transactions are returned in sorted order,
      # with the most recent transactions appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/capital/financing_transactions",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { details: Details }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
