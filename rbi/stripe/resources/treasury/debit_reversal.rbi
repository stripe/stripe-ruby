# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # You can reverse some [ReceivedDebits](https://stripe.com/docs/api#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
    class DebitReversal < APIResource
      class LinkedFlows < Stripe::StripeObject
        # Set if there is an Issuing dispute associated with the DebitReversal.
        sig { returns(T.nilable(String)) }
        def issuing_dispute; end
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when the DebitReversal changed status to `completed`.
        sig { returns(T.nilable(Integer)) }
        def completed_at; end
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      def amount; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The FinancialAccount to reverse funds from.
      sig { returns(T.nilable(String)) }
      def financial_account; end
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      def hosted_regulatory_receipt_url; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Other flows linked to a DebitReversal.
      sig { returns(T.nilable(LinkedFlows)) }
      def linked_flows; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # The rails used to reverse the funds.
      sig { returns(String) }
      def network; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The ReceivedDebit being reversed.
      sig { returns(String) }
      def received_debit; end
      # Status of the DebitReversal
      sig { returns(String) }
      def status; end
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      def status_transitions; end
      # The Transaction associated with this object.
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      def transaction; end
      class ListParams < Stripe::RequestParams
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
        # Only return DebitReversals for the ReceivedDebit ID.
        sig { returns(T.nilable(String)) }
        def received_debit; end
        sig { params(_received_debit: T.nilable(String)).returns(T.nilable(String)) }
        def received_debit=(_received_debit); end
        # Only return DebitReversals for a given resolution.
        sig { returns(T.nilable(String)) }
        def resolution; end
        sig { params(_resolution: T.nilable(String)).returns(T.nilable(String)) }
        def resolution=(_resolution); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return DebitReversals for a given status.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, limit: T.nilable(Integer), received_debit: T.nilable(String), resolution: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          received_debit: nil,
          resolution: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The ReceivedDebit to reverse.
        sig { returns(String) }
        def received_debit; end
        sig { params(_received_debit: String).returns(String) }
        def received_debit=(_received_debit); end
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), received_debit: String).void
         }
        def initialize(expand: nil, metadata: nil, received_debit: nil); end
      end
      # Reverses a ReceivedDebit and creates a DebitReversal object.
      sig {
        params(params: T.any(::Stripe::Treasury::DebitReversal::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::DebitReversal)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of DebitReversals.
      sig {
        params(params: T.any(::Stripe::Treasury::DebitReversal::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end