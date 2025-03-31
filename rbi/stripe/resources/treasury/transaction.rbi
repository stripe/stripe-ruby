# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Transactions represent changes to a [FinancialAccount's](https://stripe.com/docs/api#financial_accounts) balance.
    class Transaction < APIResource
      class BalanceImpact < Stripe::StripeObject
        # The change made to funds the user can spend right now.
        sig { returns(Integer) }
        attr_reader :cash
        # The change made to funds that are not spendable yet, but will become available at a later time.
        sig { returns(Integer) }
        attr_reader :inbound_pending
        # The change made to funds in the account, but not spendable because they are being held for pending outbound flows.
        sig { returns(Integer) }
        attr_reader :outbound_pending
      end
      class FlowDetails < Stripe::StripeObject
        # You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
        sig { returns(Stripe::Treasury::CreditReversal) }
        attr_reader :credit_reversal
        # You can reverse some [ReceivedDebits](https://stripe.com/docs/api#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
        sig { returns(Stripe::Treasury::DebitReversal) }
        attr_reader :debit_reversal
        # Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
        #
        # Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
        sig { returns(Stripe::Treasury::InboundTransfer) }
        attr_reader :inbound_transfer
        # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization`
        # object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the
        # purchase to be completed successfully.
        #
        # Related guide: [Issued card authorizations](https://stripe.com/docs/issuing/purchases/authorizations)
        sig { returns(Stripe::Issuing::Authorization) }
        attr_reader :issuing_authorization
        # Use [OutboundPayments](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments) to send funds to another party's external bank account or [FinancialAccount](https://stripe.com/docs/api#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://stripe.com/docs/api#outbound_transfers).
        #
        # Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.
        #
        # Related guide: [Moving money with Treasury using OutboundPayment objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments)
        sig { returns(Stripe::Treasury::OutboundPayment) }
        attr_reader :outbound_payment
        # Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://stripe.com/docs/api#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.
        #
        # Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.
        #
        # Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
        sig { returns(Stripe::Treasury::OutboundTransfer) }
        attr_reader :outbound_transfer
        # ReceivedCredits represent funds sent to a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
        sig { returns(Stripe::Treasury::ReceivedCredit) }
        attr_reader :received_credit
        # ReceivedDebits represent funds pulled from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts). These are not initiated from the FinancialAccount.
        sig { returns(Stripe::Treasury::ReceivedDebit) }
        attr_reader :received_debit
        # Type of the flow that created the Transaction. Set to the same value as `flow_type`.
        sig { returns(String) }
        attr_reader :type
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when the Transaction changed status to `posted`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
        # Timestamp describing when the Transaction changed status to `void`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :void_at
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      attr_reader :amount
      # Change to a FinancialAccount's balance
      sig { returns(BalanceImpact) }
      attr_reader :balance_impact
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_reader :description
      # A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints.
      sig { returns(T.nilable(Stripe::ListObject)) }
      attr_reader :entries
      # The FinancialAccount associated with this object.
      sig { returns(String) }
      attr_reader :financial_account
      # ID of the flow that created the Transaction.
      sig { returns(T.nilable(String)) }
      attr_reader :flow
      # Details of the flow that created the Transaction.
      sig { returns(T.nilable(FlowDetails)) }
      attr_reader :flow_details
      # Type of the flow that created the Transaction.
      sig { returns(String) }
      attr_reader :flow_type
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Status of the Transaction.
      sig { returns(String) }
      attr_reader :status
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        class StatusTransitions < Stripe::RequestParams
          class PostedAt < Stripe::RequestParams
            # Minimum value to filter by (exclusive)
            sig { returns(T.nilable(Integer)) }
            attr_accessor :gt
            # Minimum value to filter by (inclusive)
            sig { returns(T.nilable(Integer)) }
            attr_accessor :gte
            # Maximum value to filter by (exclusive)
            sig { returns(T.nilable(Integer)) }
            attr_accessor :lt
            # Maximum value to filter by (inclusive)
            sig { returns(T.nilable(Integer)) }
            attr_accessor :lte
            sig {
              params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
             }
            def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
          end
          # Returns Transactions with `posted_at` within the specified range.
          sig {
            returns(T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::StatusTransitions::PostedAt, Integer)))
           }
          attr_accessor :posted_at
          sig {
            params(posted_at: T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::StatusTransitions::PostedAt, Integer))).void
           }
          def initialize(posted_at: nil); end
        end
        # Only return Transactions that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Returns objects associated with this FinancialAccount.
        sig { returns(String) }
        attr_accessor :financial_account
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # The results are in reverse chronological order by `created` or `posted_at`. The default is `created`.
        sig { returns(T.nilable(String)) }
        attr_accessor :order_by
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return Transactions that have the given status: `open`, `posted`, or `void`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # A filter for the `status_transitions.posted_at` timestamp. When using this filter, `status=posted` and `order_by=posted_at` must also be specified.
        sig { returns(T.nilable(::Stripe::Treasury::Transaction::ListParams::StatusTransitions)) }
        attr_accessor :status_transitions
        sig {
          params(created: T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, limit: T.nilable(Integer), order_by: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String), status_transitions: T.nilable(::Stripe::Treasury::Transaction::ListParams::StatusTransitions)).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          order_by: nil,
          starting_after: nil,
          status: nil,
          status_transitions: nil
        ); end
      end
      # Retrieves a list of Transaction objects.
      sig {
        params(params: T.any(::Stripe::Treasury::Transaction::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end