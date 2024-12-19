# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    class OutboundTransferService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # Returns objects associated with this FinancialAccount.
        sig { returns(String) }
        attr_accessor :financial_account

        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit

        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after

        # Only return OutboundTransfers that have the given status: `processing`, `canceled`, `failed`, `posted`, or `returned`.
        sig { returns(String) }
        attr_accessor :status

        sig {
          params(ending_before: String, expand: T::Array[String], financial_account: String, limit: Integer, starting_after: String, status: String).void
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
        class DestinationPaymentMethodOptions < Stripe::RequestParams
          class UsBankAccount < Stripe::RequestParams
            # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
            sig { returns(String) }
            attr_accessor :network

            sig { params(network: String).void }
            def initialize(network: nil); end
          end
          # Optional fields for `us_bank_account`.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))
           }
          attr_accessor :us_bank_account

          sig {
            params(us_bank_account: T.nilable(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)).void
           }
          def initialize(us_bank_account: nil); end
        end
        class NetworkDetails < Stripe::RequestParams
          class Ach < Stripe::RequestParams
            # Addenda record data associated with this OutboundTransfer.
            sig { returns(String) }
            attr_accessor :addenda

            sig { params(addenda: String).void }
            def initialize(addenda: nil); end
          end
          # Optional fields for `ach`.
          sig {
            returns(::Stripe::Treasury::OutboundTransferService::CreateParams::NetworkDetails::Ach)
           }
          attr_accessor :ach

          # The type of flow that originated the OutboundTransfer.
          sig { returns(String) }
          attr_accessor :type

          sig {
            params(ach: ::Stripe::Treasury::OutboundTransferService::CreateParams::NetworkDetails::Ach, type: String).void
           }
          def initialize(ach: nil, type: nil); end
        end
        # Amount (in cents) to be transferred.
        sig { returns(Integer) }
        attr_accessor :amount

        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency

        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(String) }
        attr_accessor :description

        # The PaymentMethod to use as the payment instrument for the OutboundTransfer.
        sig { returns(String) }
        attr_accessor :destination_payment_method

        # Hash describing payment method configuration details.
        sig {
          returns(::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions)
         }
        attr_accessor :destination_payment_method_options

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # The FinancialAccount to pull funds from.
        sig { returns(String) }
        attr_accessor :financial_account

        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata

        # Details about the network used for the OutboundTransfer.
        sig { returns(::Stripe::Treasury::OutboundTransferService::CreateParams::NetworkDetails) }
        attr_accessor :network_details

        # Statement descriptor to be shown on the receiving end of an OutboundTransfer. Maximum 10 characters for `ach` transfers or 140 characters for `us_domestic_wire` transfers. The default value is "transfer".
        sig { returns(String) }
        attr_accessor :statement_descriptor

        sig {
          params(amount: Integer, currency: String, description: String, destination_payment_method: String, destination_payment_method_options: ::Stripe::Treasury::OutboundTransferService::CreateParams::DestinationPaymentMethodOptions, expand: T::Array[String], financial_account: String, metadata: T::Hash[String, String], network_details: ::Stripe::Treasury::OutboundTransferService::CreateParams::NetworkDetails, statement_descriptor: String).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          destination_payment_method: nil,
          destination_payment_method_options: nil,
          expand: nil,
          financial_account: nil,
          metadata: nil,
          network_details: nil,
          statement_descriptor: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        sig { params(expand: T::Array[String]).void }
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