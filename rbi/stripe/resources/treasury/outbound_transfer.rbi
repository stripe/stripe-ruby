# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://stripe.com/docs/api#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.
    #
    # Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.
    #
    # Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
    class OutboundTransfer < APIResource
      class DestinationPaymentMethodDetails < Stripe::StripeObject
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
        class FinancialAccount < Stripe::StripeObject
          # Token of the FinancialAccount.
          sig { returns(String) }
          attr_reader :id
          # The rails used to send funds.
          sig { returns(String) }
          attr_reader :network
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
        # Attribute for field financial_account
        sig { returns(FinancialAccount) }
        attr_reader :financial_account
        # The type of the payment method used in the OutboundTransfer.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class ReturnedDetails < Stripe::StripeObject
        # Reason for the return.
        sig { returns(String) }
        attr_reader :code
        # The Transaction associated with this object.
        sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
        attr_reader :transaction
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when an OutboundTransfer changed status to `canceled`
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at
        # Timestamp describing when an OutboundTransfer changed status to `failed`
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at
        # Timestamp describing when an OutboundTransfer changed status to `posted`
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
        # Timestamp describing when an OutboundTransfer changed status to `returned`
        sig { returns(T.nilable(Integer)) }
        attr_reader :returned_at
      end
      class TrackingDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          # ACH trace ID of the OutboundTransfer for transfers sent over the `ach` network.
          sig { returns(String) }
          attr_reader :trace_id
        end
        class UsDomesticWire < Stripe::StripeObject
          # CHIPS System Sequence Number (SSN) of the OutboundTransfer for transfers sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          attr_reader :chips
          # IMAD of the OutboundTransfer for transfers sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          attr_reader :imad
          # OMAD of the OutboundTransfer for transfers sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          attr_reader :omad
        end
        # Attribute for field ach
        sig { returns(Ach) }
        attr_reader :ach
        # The US bank account network used to send funds.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_domestic_wire
        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      attr_reader :amount
      # Returns `true` if the object can be canceled, and `false` otherwise.
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
      # The PaymentMethod used as the payment instrument for an OutboundTransfer.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_payment_method
      # Attribute for field destination_payment_method_details
      sig { returns(DestinationPaymentMethodDetails) }
      attr_reader :destination_payment_method_details
      # The date when funds are expected to arrive in the destination account.
      sig { returns(Integer) }
      attr_reader :expected_arrival_date
      # The FinancialAccount that funds were pulled from.
      sig { returns(String) }
      attr_reader :financial_account
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Details about a returned OutboundTransfer. Only set when the status is `returned`.
      sig { returns(T.nilable(ReturnedDetails)) }
      attr_reader :returned_details
      # Information about the OutboundTransfer to be sent to the recipient account.
      sig { returns(String) }
      attr_reader :statement_descriptor
      # Current status of the OutboundTransfer: `processing`, `failed`, `canceled`, `posted`, `returned`. An OutboundTransfer is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundTransfer has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundTransfer fails to arrive at its destination, its status will change to `returned`.
      sig { returns(String) }
      attr_reader :status
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions
      # Details about network-specific tracking information if available.
      sig { returns(T.nilable(TrackingDetails)) }
      attr_reader :tracking_details
      # The Transaction associated with this object.
      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
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
        # Only return OutboundTransfers that have the given status: `processing`, `canceled`, `failed`, `posted`, or `returned`.
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
        class DestinationPaymentMethodData < Stripe::RequestParams
          # Required if type is set to `financial_account`. The FinancialAccount ID to send funds to.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_account
          # The type of the destination.
          sig { returns(String) }
          attr_accessor :type
          sig { params(financial_account: T.nilable(String), type: String).void }
          def initialize(financial_account: nil, type: nil); end
        end
        class DestinationPaymentMethodOptions < Stripe::RequestParams
          class UsBankAccount < Stripe::RequestParams
            # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
            sig { returns(T.nilable(String)) }
            attr_accessor :network
            sig { params(network: T.nilable(String)).void }
            def initialize(network: nil); end
          end
          # Optional fields for `us_bank_account`.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundTransfer::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          attr_accessor :us_bank_account
          sig {
            params(us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundTransfer::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).void
           }
          def initialize(us_bank_account: nil); end
        end
        # Amount (in cents) to be transferred.
        sig { returns(Integer) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The PaymentMethod to use as the payment instrument for the OutboundTransfer.
        sig { returns(T.nilable(String)) }
        attr_accessor :destination_payment_method
        # Hash used to generate the PaymentMethod to be used for this OutboundTransfer. Exclusive with `destination_payment_method`.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundTransfer::CreateParams::DestinationPaymentMethodData))
         }
        attr_accessor :destination_payment_method_data
        # Hash describing payment method configuration details.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundTransfer::CreateParams::DestinationPaymentMethodOptions))
         }
        attr_accessor :destination_payment_method_options
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The FinancialAccount to pull funds from.
        sig { returns(String) }
        attr_accessor :financial_account
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Statement descriptor to be shown on the receiving end of an OutboundTransfer. Maximum 10 characters for `ach` transfers or 140 characters for `us_domestic_wire` transfers. The default value is "transfer".
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor
        sig {
          params(amount: Integer, currency: String, description: T.nilable(String), destination_payment_method: T.nilable(String), destination_payment_method_data: T.nilable(::Stripe::Treasury::OutboundTransfer::CreateParams::DestinationPaymentMethodData), destination_payment_method_options: T.nilable(::Stripe::Treasury::OutboundTransfer::CreateParams::DestinationPaymentMethodOptions), expand: T.nilable(T::Array[String]), financial_account: String, metadata: T.nilable(T::Hash[String, String]), statement_descriptor: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          destination_payment_method: nil,
          destination_payment_method_data: nil,
          destination_payment_method_options: nil,
          expand: nil,
          financial_account: nil,
          metadata: nil,
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
      class UpdateParams < Stripe::RequestParams
        class TrackingDetails < Stripe::RequestParams
          class Ach < Stripe::RequestParams
            # ACH trace ID for funds sent over the `ach` network.
            sig { returns(String) }
            attr_accessor :trace_id
            sig { params(trace_id: String).void }
            def initialize(trace_id: nil); end
          end
          class UsDomesticWire < Stripe::RequestParams
            # CHIPS System Sequence Number (SSN) for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            attr_accessor :chips
            # IMAD for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            attr_accessor :imad
            # OMAD for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            attr_accessor :omad
            sig {
              params(chips: T.nilable(String), imad: T.nilable(String), omad: T.nilable(String)).void
             }
            def initialize(chips: nil, imad: nil, omad: nil); end
          end
          # ACH network tracking details.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundTransfer::UpdateParams::TrackingDetails::Ach))
           }
          attr_accessor :ach
          # The US bank account network used to send funds.
          sig { returns(String) }
          attr_accessor :type
          # US domestic wire network tracking details.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundTransfer::UpdateParams::TrackingDetails::UsDomesticWire))
           }
          attr_accessor :us_domestic_wire
          sig {
            params(ach: T.nilable(::Stripe::Treasury::OutboundTransfer::UpdateParams::TrackingDetails::Ach), type: String, us_domestic_wire: T.nilable(::Stripe::Treasury::OutboundTransfer::UpdateParams::TrackingDetails::UsDomesticWire)).void
           }
          def initialize(ach: nil, type: nil, us_domestic_wire: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Details about network-specific tracking information.
        sig { returns(::Stripe::Treasury::OutboundTransfer::UpdateParams::TrackingDetails) }
        attr_accessor :tracking_details
        sig {
          params(expand: T.nilable(T::Array[String]), tracking_details: ::Stripe::Treasury::OutboundTransfer::UpdateParams::TrackingDetails).void
         }
        def initialize(expand: nil, tracking_details: nil); end
      end
      class FailParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class PostParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ReturnOutboundTransferParams < Stripe::RequestParams
        class ReturnedDetails < Stripe::RequestParams
          # Reason for the return.
          sig { returns(T.nilable(String)) }
          attr_accessor :code
          sig { params(code: T.nilable(String)).void }
          def initialize(code: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Details about a returned OutboundTransfer.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundTransfer::ReturnOutboundTransferParams::ReturnedDetails))
         }
        attr_accessor :returned_details
        sig {
          params(expand: T.nilable(T::Array[String]), returned_details: T.nilable(::Stripe::Treasury::OutboundTransfer::ReturnOutboundTransferParams::ReturnedDetails)).void
         }
        def initialize(expand: nil, returned_details: nil); end
      end
      # An OutboundTransfer can be canceled if the funds have not yet been paid out.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundTransfer::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
       }
      def cancel(params = {}, opts = {}); end

      # An OutboundTransfer can be canceled if the funds have not yet been paid out.
      sig {
        params(outbound_transfer: String, params: T.any(::Stripe::Treasury::OutboundTransfer::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
       }
      def self.cancel(outbound_transfer, params = {}, opts = {}); end

      # Creates an OutboundTransfer.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundTransfer::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of OutboundTransfers sent from the specified FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundTransfer::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end