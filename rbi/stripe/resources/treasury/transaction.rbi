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
        def cash; end
        # The change made to funds that are not spendable yet, but will become available at a later time.
        sig { returns(Integer) }
        def inbound_pending; end
        # The change made to funds in the account, but not spendable because they are being held for pending outbound flows.
        sig { returns(Integer) }
        def outbound_pending; end
      end
      class FlowDetails < Stripe::StripeObject
        # You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
        sig { returns(Stripe::Treasury::CreditReversal) }
        def credit_reversal; end
        # You can reverse some [ReceivedDebits](https://stripe.com/docs/api#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
        sig { returns(Stripe::Treasury::DebitReversal) }
        def debit_reversal; end
        # Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
        #
        # Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
        sig { returns(Stripe::Treasury::InboundTransfer) }
        def inbound_transfer; end
        # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization`
        # object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the
        # purchase to be completed successfully.
        #
        # Related guide: [Issued card authorizations](https://stripe.com/docs/issuing/purchases/authorizations)
        sig { returns(Stripe::Issuing::Authorization) }
        def issuing_authorization; end
        # Use [OutboundPayments](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments) to send funds to another party's external bank account or [FinancialAccount](https://stripe.com/docs/api#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://stripe.com/docs/api#outbound_transfers).
        #
        # Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.
        #
        # Related guide: [Moving money with Treasury using OutboundPayment objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments)
        sig { returns(Stripe::Treasury::OutboundPayment) }
        def outbound_payment; end
        # Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://stripe.com/docs/api#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.
        #
        # Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.
        #
        # Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
        sig { returns(Stripe::Treasury::OutboundTransfer) }
        def outbound_transfer; end
        # ReceivedCredits represent funds sent to a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
        sig { returns(Stripe::Treasury::ReceivedCredit) }
        def received_credit; end
        # ReceivedDebits represent funds pulled from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts). These are not initiated from the FinancialAccount.
        sig { returns(Stripe::Treasury::ReceivedDebit) }
        def received_debit; end
        # Type of the flow that created the Transaction. Set to the same value as `flow_type`.
        sig { returns(String) }
        def type; end
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when the Transaction changed status to `posted`.
        sig { returns(T.nilable(Integer)) }
        def posted_at; end
        # Timestamp describing when the Transaction changed status to `void`.
        sig { returns(T.nilable(Integer)) }
        def void_at; end
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      def amount; end
      # Change to a FinancialAccount's balance
      sig { returns(BalanceImpact) }
      def balance_impact; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      def description; end
      # A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints.
      sig { returns(T.nilable(Stripe::ListObject)) }
      def entries; end
      # The FinancialAccount associated with this object.
      sig { returns(String) }
      def financial_account; end
      # ID of the flow that created the Transaction.
      sig { returns(T.nilable(String)) }
      def flow; end
      # Details of the flow that created the Transaction.
      sig { returns(T.nilable(FlowDetails)) }
      def flow_details; end
      # Type of the flow that created the Transaction.
      sig { returns(String) }
      def flow_type; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Status of the Transaction.
      sig { returns(String) }
      def status; end
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      def status_transitions; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        class StatusTransitions < Stripe::RequestParams
          class PostedAt < Stripe::RequestParams
            # Minimum value to filter by (exclusive)
            sig { returns(T.nilable(Integer)) }
            def gt; end
            sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def gt=(_gt); end
            # Minimum value to filter by (inclusive)
            sig { returns(T.nilable(Integer)) }
            def gte; end
            sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def gte=(_gte); end
            # Maximum value to filter by (exclusive)
            sig { returns(T.nilable(Integer)) }
            def lt; end
            sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def lt=(_lt); end
            # Maximum value to filter by (inclusive)
            sig { returns(T.nilable(Integer)) }
            def lte; end
            sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def lte=(_lte); end
            sig {
              params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
             }
            def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
          end
          # Returns Transactions with `posted_at` within the specified range.
          sig {
            returns(T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::StatusTransitions::PostedAt, Integer)))
           }
          def posted_at; end
          sig {
            params(_posted_at: T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::StatusTransitions::PostedAt, Integer))).returns(T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::StatusTransitions::PostedAt, Integer)))
           }
          def posted_at=(_posted_at); end
          sig {
            params(posted_at: T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::StatusTransitions::PostedAt, Integer))).void
           }
          def initialize(posted_at: nil); end
        end
        # Only return Transactions that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Treasury::Transaction::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Returns objects associated with this FinancialAccount.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # The results are in reverse chronological order by `created` or `posted_at`. The default is `created`.
        sig { returns(T.nilable(String)) }
        def order_by; end
        sig { params(_order_by: T.nilable(String)).returns(T.nilable(String)) }
        def order_by=(_order_by); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return Transactions that have the given status: `open`, `posted`, or `void`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # A filter for the `status_transitions.posted_at` timestamp. When using this filter, `status=posted` and `order_by=posted_at` must also be specified.
        sig { returns(T.nilable(::Stripe::Treasury::Transaction::ListParams::StatusTransitions)) }
        def status_transitions; end
        sig {
          params(_status_transitions: T.nilable(::Stripe::Treasury::Transaction::ListParams::StatusTransitions)).returns(T.nilable(::Stripe::Treasury::Transaction::ListParams::StatusTransitions))
         }
        def status_transitions=(_status_transitions); end
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