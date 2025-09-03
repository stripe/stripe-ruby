# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    class OutboundTransferService < StripeService
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
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return OutboundTransfers that have the given status: `processing`, `canceled`, `failed`, `posted`, or `returned`.
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
        class DestinationPaymentMethodData < Stripe::RequestParams
          # Required if type is set to `financial_account`. The FinancialAccount ID to send funds to.
          sig { returns(T.nilable(String)) }
          def financial_account; end
          sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
          def financial_account=(_financial_account); end
          # The type of the destination.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(financial_account: T.nilable(String), type: String).void }
          def initialize(financial_account: nil, type: nil); end
        end
        class DestinationPaymentMethodOptions < Stripe::RequestParams
          class UsBankAccount < Stripe::RequestParams
            # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
            sig { returns(T.nilable(String)) }
            def network; end
            sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
            def network=(_network); end
            sig { params(network: T.nilable(String)).void }
            def initialize(network: nil); end
          end
          # Optional fields for `us_bank_account`.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          def us_bank_account=(_us_bank_account); end
          sig {
            params(us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).void
           }
          def initialize(us_bank_account: nil); end
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
        # The PaymentMethod to use as the payment instrument for the OutboundTransfer.
        sig { returns(T.nilable(String)) }
        def destination_payment_method; end
        sig { params(_destination_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def destination_payment_method=(_destination_payment_method); end
        # Hash used to generate the PaymentMethod to be used for this OutboundTransfer. Exclusive with `destination_payment_method`.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodData))
         }
        def destination_payment_method_data; end
        sig {
          params(_destination_payment_method_data: T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodData)).returns(T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodData))
         }
        def destination_payment_method_data=(_destination_payment_method_data); end
        # Hash describing payment method configuration details.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions))
         }
        def destination_payment_method_options; end
        sig {
          params(_destination_payment_method_options: T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions)).returns(T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions))
         }
        def destination_payment_method_options=(_destination_payment_method_options); end
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
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Statement descriptor to be shown on the receiving end of an OutboundTransfer. Maximum 10 characters for `ach` transfers or 140 characters for `us_domestic_wire` transfers. The default value is "transfer".
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        sig {
          params(amount: Integer, currency: String, description: T.nilable(String), destination_payment_method: T.nilable(String), destination_payment_method_data: T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodData), destination_payment_method_options: T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions), expand: T.nilable(T::Array[String]), financial_account: String, metadata: T.nilable(T::Hash[String, String]), statement_descriptor: T.nilable(String)).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # An OutboundTransfer can be canceled if the funds have not yet been paid out.
      sig {
        params(outbound_transfer: String, params: T.any(::Stripe::Treasury::OutboundTransferService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
       }
      def cancel(outbound_transfer, params = {}, opts = {}); end

      # Creates an OutboundTransfer.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundTransferService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of OutboundTransfers sent from the specified FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundTransferService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundTransfer creation request or OutboundTransfer list.
      sig {
        params(outbound_transfer: String, params: T.any(::Stripe::Treasury::OutboundTransferService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
       }
      def retrieve(outbound_transfer, params = {}, opts = {}); end
    end
  end
end