# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # ReceivedDebits represent funds pulled from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts). These are not initiated from the FinancialAccount.
    class ReceivedDebit < APIResource
      class InitiatingPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field address
          sig { returns(Address) }
          def address; end
          # Email address.
          sig { returns(T.nilable(String)) }
          def email; end
          # Full name.
          sig { returns(T.nilable(String)) }
          def name; end
        end
        class FinancialAccount < Stripe::StripeObject
          # The FinancialAccount ID.
          sig { returns(String) }
          def id; end
          # The rails the ReceivedCredit was sent over. A FinancialAccount can only send funds over `stripe`.
          sig { returns(String) }
          def network; end
        end
        class UsBankAccount < Stripe::StripeObject
          # Bank name.
          sig { returns(T.nilable(String)) }
          def bank_name; end
          # The last four digits of the bank account number.
          sig { returns(T.nilable(String)) }
          def last4; end
          # The routing number for the bank account.
          sig { returns(T.nilable(String)) }
          def routing_number; end
        end
        # Set when `type` is `balance`.
        sig { returns(String) }
        def balance; end
        # Attribute for field billing_details
        sig { returns(BillingDetails) }
        def billing_details; end
        # Attribute for field financial_account
        sig { returns(FinancialAccount) }
        def financial_account; end
        # Set when `type` is `issuing_card`. This is an [Issuing Card](https://stripe.com/docs/api#issuing_cards) ID.
        sig { returns(String) }
        def issuing_card; end
        # Polymorphic type matching the originating money movement's source. This can be an external account, a Stripe balance, or a FinancialAccount.
        sig { returns(String) }
        def type; end
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        def us_bank_account; end
      end
      class LinkedFlows < Stripe::StripeObject
        # The DebitReversal created as a result of this ReceivedDebit being reversed.
        sig { returns(T.nilable(String)) }
        def debit_reversal; end
        # Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
        sig { returns(T.nilable(String)) }
        def inbound_transfer; end
        # Set if the ReceivedDebit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
        sig { returns(T.nilable(String)) }
        def issuing_authorization; end
        # Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://stripe.com/docs/api#issuing_disputes) object.
        sig { returns(T.nilable(String)) }
        def issuing_transaction; end
        # Set if the ReceivedDebit was created due to a [Payout](https://stripe.com/docs/api#payouts) object.
        sig { returns(T.nilable(String)) }
        def payout; end
      end
      class ReversalDetails < Stripe::StripeObject
        # Time before which a ReceivedDebit can be reversed.
        sig { returns(T.nilable(Integer)) }
        def deadline; end
        # Set if a ReceivedDebit can't be reversed.
        sig { returns(T.nilable(String)) }
        def restricted_reason; end
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
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      def description; end
      # Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn't have sufficient funds, is closed, or is frozen.
      sig { returns(T.nilable(String)) }
      def failure_code; end
      # The FinancialAccount that funds were pulled from.
      sig { returns(T.nilable(String)) }
      def financial_account; end
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      def hosted_regulatory_receipt_url; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Attribute for field initiating_payment_method_details
      sig { returns(InitiatingPaymentMethodDetails) }
      def initiating_payment_method_details; end
      # Attribute for field linked_flows
      sig { returns(LinkedFlows) }
      def linked_flows; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The network used for the ReceivedDebit.
      sig { returns(String) }
      def network; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Details describing when a ReceivedDebit might be reversed.
      sig { returns(T.nilable(ReversalDetails)) }
      def reversal_details; end
      # Status of the ReceivedDebit. ReceivedDebits are created with a status of either `succeeded` (approved) or `failed` (declined). The failure reason can be found under the `failure_code`.
      sig { returns(String) }
      def status; end
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
        # The FinancialAccount that funds were pulled from.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return ReceivedDebits that have the given status: `succeeded` or `failed`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class InitiatingPaymentMethodDetails < Stripe::RequestParams
          class UsBankAccount < Stripe::RequestParams
            # The bank account holder's name.
            sig { returns(T.nilable(String)) }
            def account_holder_name; end
            sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
            def account_holder_name=(_account_holder_name); end
            # The bank account number.
            sig { returns(T.nilable(String)) }
            def account_number; end
            sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
            def account_number=(_account_number); end
            # The bank account's routing number.
            sig { returns(T.nilable(String)) }
            def routing_number; end
            sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
            def routing_number=(_routing_number); end
            sig {
              params(account_holder_name: T.nilable(String), account_number: T.nilable(String), routing_number: T.nilable(String)).void
             }
            def initialize(account_holder_name: nil, account_number: nil, routing_number: nil); end
          end
          # The source type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Optional fields for `us_bank_account`.
          sig {
            returns(T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount)).returns(T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount))
           }
          def us_bank_account=(_us_bank_account); end
          sig {
            params(type: String, us_bank_account: T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount)).void
           }
          def initialize(type: nil, us_bank_account: nil); end
        end
        # Amount (in cents) to be transferred.
        sig { returns(Integer) }
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The FinancialAccount to pull funds from.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Initiating payment method details for the object.
        sig {
          returns(T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails))
         }
        def initiating_payment_method_details; end
        sig {
          params(_initiating_payment_method_details: T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails)).returns(T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails))
         }
        def initiating_payment_method_details=(_initiating_payment_method_details); end
        # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
        sig { returns(String) }
        def network; end
        sig { params(_network: String).returns(String) }
        def network=(_network); end
        sig {
          params(amount: Integer, currency: String, description: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, initiating_payment_method_details: T.nilable(::Stripe::Treasury::ReceivedDebit::CreateParams::InitiatingPaymentMethodDetails), network: String).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          expand: nil,
          financial_account: nil,
          initiating_payment_method_details: nil,
          network: nil
        ); end
      end
      # Returns a list of ReceivedDebits.
      sig {
        params(params: T.any(::Stripe::Treasury::ReceivedDebit::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end