# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
    #
    # Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
    class InboundTransfer < APIResource
      class FailureDetails < Stripe::StripeObject
        # Reason for the failure.
        sig { returns(String) }
        attr_reader :code
      end
      class LinkedFlows < Stripe::StripeObject
        # If funds for this flow were returned after the flow went to the `succeeded` state, this field contains a reference to the ReceivedDebit return.
        sig { returns(T.nilable(String)) }
        attr_reader :received_debit
      end
      class OriginPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field address
          sig { returns(Address) }
          attr_reader :address
          # Email address.
          sig { returns(T.nilable(String)) }
          attr_reader :email
          # Full name.
          sig { returns(T.nilable(String)) }
          attr_reader :name
        end
        class UsBankAccount < Stripe::StripeObject
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_reader :account_type
          # Name of the bank associated with the bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint
          # Last four digits of the bank account number.
          sig { returns(T.nilable(String)) }
          attr_reader :last4
          # ID of the mandate used to make this payment.
          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate
          # The network rails used. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
          sig { returns(String) }
          attr_reader :network
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end
        # Attribute for field billing_details
        sig { returns(BillingDetails) }
        attr_reader :billing_details
        # The type of the payment method used in the InboundTransfer.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when an InboundTransfer changed status to `canceled`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at
        # Timestamp describing when an InboundTransfer changed status to `failed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at
        # Timestamp describing when an InboundTransfer changed status to `succeeded`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :succeeded_at
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      attr_reader :amount
      # Returns `true` if the InboundTransfer is able to be canceled.
      sig { returns(T::Boolean) }
      attr_reader :cancelable
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # Details about this InboundTransfer's failure. Only set when status is `failed`.
      sig { returns(T.nilable(FailureDetails)) }
      attr_reader :failure_details
      # The FinancialAccount that received the funds.
      sig { returns(String) }
      attr_reader :financial_account
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Attribute for field linked_flows
      sig { returns(LinkedFlows) }
      attr_reader :linked_flows
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The origin payment method to be debited for an InboundTransfer.
      sig { returns(T.nilable(String)) }
      attr_reader :origin_payment_method
      # Details about the PaymentMethod for an InboundTransfer.
      sig { returns(T.nilable(OriginPaymentMethodDetails)) }
      attr_reader :origin_payment_method_details
      # Returns `true` if the funds for an InboundTransfer were returned after the InboundTransfer went to the `succeeded` state.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :returned
      # Statement descriptor shown when funds are debited from the source. Not all payment networks support `statement_descriptor`.
      sig { returns(String) }
      attr_reader :statement_descriptor
      # Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
      sig { returns(String) }
      attr_reader :status
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions
      # The Transaction associated with this object.
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
      class ListParams < Stripe::RequestParams
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
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return InboundTransfers that have the given status: `processing`, `succeeded`, `failed` or `canceled`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
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
        # Amount (in cents) to be transferred.
        sig { returns(Integer) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The FinancialAccount to send funds to.
        sig { returns(String) }
        attr_accessor :financial_account
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The origin payment method to be debited for the InboundTransfer.
        sig { returns(String) }
        attr_accessor :origin_payment_method
        # The complete description that appears on your customers' statements. Maximum 10 characters.
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor
        sig {
          params(amount: Integer, currency: String, description: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, metadata: T.nilable(T::Hash[String, String]), origin_payment_method: String, statement_descriptor: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          expand: nil,
          financial_account: nil,
          metadata: nil,
          origin_payment_method: nil,
          statement_descriptor: nil
        ); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class FailParams < Stripe::RequestParams
        class FailureDetails < Stripe::RequestParams
          # Reason for the failure.
          sig { returns(T.nilable(String)) }
          attr_accessor :code
          sig { params(code: T.nilable(String)).void }
          def initialize(code: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Details about a failed InboundTransfer.
        sig { returns(T.nilable(::Stripe::Treasury::InboundTransfer::FailParams::FailureDetails)) }
        attr_accessor :failure_details
        sig {
          params(expand: T.nilable(T::Array[String]), failure_details: T.nilable(::Stripe::Treasury::InboundTransfer::FailParams::FailureDetails)).void
         }
        def initialize(expand: nil, failure_details: nil); end
      end
      class ReturnInboundTransferParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class SucceedParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Cancels an InboundTransfer.
      sig {
        params(params: T.any(::Stripe::Treasury::InboundTransfer::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::InboundTransfer)
       }
      def cancel(params = {}, opts = {}); end

      # Cancels an InboundTransfer.
      sig {
        params(inbound_transfer: String, params: T.any(::Stripe::Treasury::InboundTransfer::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::InboundTransfer)
       }
      def self.cancel(inbound_transfer, params = {}, opts = {}); end

      # Creates an InboundTransfer.
      sig {
        params(params: T.any(::Stripe::Treasury::InboundTransfer::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::InboundTransfer)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of InboundTransfers sent from the specified FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::InboundTransfer::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end