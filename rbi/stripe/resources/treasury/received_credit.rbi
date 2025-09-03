# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # ReceivedCredits represent funds sent to a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
    class ReceivedCredit < APIResource
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
        class SourceFlowDetails < Stripe::StripeObject
          # You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
          sig { returns(Stripe::Treasury::CreditReversal) }
          def credit_reversal; end
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
          # A `Payout` object is created when you receive funds from Stripe, or when you
          # initiate a payout to either a bank account or debit card of a [connected
          # Stripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
          # and list all payouts. Payouts are made on [varying
          # schedules](/docs/connect/manage-payout-schedule), depending on your country and
          # industry.
          #
          # Related guide: [Receiving payouts](https://stripe.com/docs/payouts)
          sig { returns(Stripe::Payout) }
          def payout; end
          # The type of the source flow that originated the ReceivedCredit.
          sig { returns(String) }
          def type; end
        end
        # The CreditReversal created as a result of this ReceivedCredit being reversed.
        sig { returns(T.nilable(String)) }
        def credit_reversal; end
        # Set if the ReceivedCredit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
        sig { returns(T.nilable(String)) }
        def issuing_authorization; end
        # Set if the ReceivedCredit is also viewable as an [Issuing transaction](https://stripe.com/docs/api#issuing_transactions) object.
        sig { returns(T.nilable(String)) }
        def issuing_transaction; end
        # ID of the source flow. Set if `network` is `stripe` and the source flow is visible to the user. Examples of source flows include OutboundPayments, payouts, or CreditReversals.
        sig { returns(T.nilable(String)) }
        def source_flow; end
        # The expandable object of the source flow.
        sig { returns(T.nilable(SourceFlowDetails)) }
        def source_flow_details; end
        # The type of flow that originated the ReceivedCredit (for example, `outbound_payment`).
        sig { returns(T.nilable(String)) }
        def source_flow_type; end
      end
      class ReversalDetails < Stripe::StripeObject
        # Time before which a ReceivedCredit can be reversed.
        sig { returns(T.nilable(Integer)) }
        def deadline; end
        # Set if a ReceivedCredit cannot be reversed.
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
      # Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
      sig { returns(T.nilable(String)) }
      def failure_code; end
      # The FinancialAccount that received the funds.
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
      # The rails used to send the funds.
      sig { returns(String) }
      def network; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Details describing when a ReceivedCredit may be reversed.
      sig { returns(T.nilable(ReversalDetails)) }
      def reversal_details; end
      # Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
      sig { returns(String) }
      def status; end
      # The Transaction associated with this object.
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      def transaction; end
      class ListParams < Stripe::RequestParams
        class LinkedFlows < Stripe::RequestParams
          # The source flow type.
          sig { returns(String) }
          def source_flow_type; end
          sig { params(_source_flow_type: String).returns(String) }
          def source_flow_type=(_source_flow_type); end
          sig { params(source_flow_type: String).void }
          def initialize(source_flow_type: nil); end
        end
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
        # The FinancialAccount that received the funds.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Only return ReceivedCredits described by the flow.
        sig { returns(T.nilable(::Stripe::Treasury::ReceivedCredit::ListParams::LinkedFlows)) }
        def linked_flows; end
        sig {
          params(_linked_flows: T.nilable(::Stripe::Treasury::ReceivedCredit::ListParams::LinkedFlows)).returns(T.nilable(::Stripe::Treasury::ReceivedCredit::ListParams::LinkedFlows))
         }
        def linked_flows=(_linked_flows); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return ReceivedCredits that have the given status: `succeeded` or `failed`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, limit: T.nilable(Integer), linked_flows: T.nilable(::Stripe::Treasury::ReceivedCredit::ListParams::LinkedFlows), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          linked_flows: nil,
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
            returns(T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount)).returns(T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount))
           }
          def us_bank_account=(_us_bank_account); end
          sig {
            params(type: String, us_bank_account: T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails::UsBankAccount)).void
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
        # The FinancialAccount to send funds to.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Initiating payment method details for the object.
        sig {
          returns(T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails))
         }
        def initiating_payment_method_details; end
        sig {
          params(_initiating_payment_method_details: T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails)).returns(T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails))
         }
        def initiating_payment_method_details=(_initiating_payment_method_details); end
        # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
        sig { returns(String) }
        def network; end
        sig { params(_network: String).returns(String) }
        def network=(_network); end
        sig {
          params(amount: Integer, currency: String, description: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, initiating_payment_method_details: T.nilable(::Stripe::Treasury::ReceivedCredit::CreateParams::InitiatingPaymentMethodDetails), network: String).void
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
      # Returns a list of ReceivedCredits.
      sig {
        params(params: T.any(::Stripe::Treasury::ReceivedCredit::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end