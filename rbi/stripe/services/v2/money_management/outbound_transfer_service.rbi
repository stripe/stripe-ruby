# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundTransferService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for objects created at the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created; end
          sig { params(_created: T.nilable(String)).returns(T.nilable(String)) }
          def created=(_created); end
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_gt; end
          sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
          def created_gt=(_created_gt); end
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_gte; end
          sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
          def created_gte=(_created_gte); end
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_lt; end
          sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
          def created_lt=(_created_lt); end
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_lte; end
          sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
          def created_lte=(_created_lte); end
          # The maximum number of results to return.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Closed Enum. Only return OutboundTransfers with this status.
          sig { returns(T.nilable(T::Array[String])) }
          def status; end
          sig { params(_status: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def status=(_status); end
          sig {
            params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer), status: T.nilable(T::Array[String])).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil,
            status: nil
          ); end
        end
        class CreateParams < Stripe::RequestParams
          class DeliveryOptions < Stripe::RequestParams
            # Open Enum. Method for bank account.
            sig { returns(T.nilable(String)) }
            def bank_account; end
            sig { params(_bank_account: T.nilable(String)).returns(T.nilable(String)) }
            def bank_account=(_bank_account); end
            sig { params(bank_account: T.nilable(String)).void }
            def initialize(bank_account: nil); end
          end
          class From < Stripe::RequestParams
            # Describes the FinancialAmount's currency drawn from.
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
            # The FinancialAccount that funds were pulled from.
            sig { returns(String) }
            def financial_account; end
            sig { params(_financial_account: String).returns(String) }
            def financial_account=(_financial_account); end
            sig { params(currency: String, financial_account: String).void }
            def initialize(currency: nil, financial_account: nil); end
          end
          class To < Stripe::RequestParams
            # Describes the currency to send to the recipient.
            # If included, this currency must match a currency supported by the destination.
            # Can be omitted in the following cases:
            # - destination only supports one currency
            # - destination supports multiple currencies and one of the currencies matches the FA currency
            # - destination supports multiple currencies and one of the currencies matches the presentment currency
            # Note - when both FA currency and presentment currency are supported, we pick the FA currency to minimize FX.
            sig { returns(T.nilable(String)) }
            def currency; end
            sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_currency); end
            # The payout method which the OutboundTransfer uses to send payout.
            sig { returns(String) }
            def payout_method; end
            sig { params(_payout_method: String).returns(String) }
            def payout_method=(_payout_method); end
            sig { params(currency: T.nilable(String), payout_method: String).void }
            def initialize(currency: nil, payout_method: nil); end
          end
          # The "presentment amount" for the OutboundPayment.
          sig { returns(Stripe::V2::Amount) }
          def amount; end
          sig { params(_amount: Stripe::V2::Amount).returns(Stripe::V2::Amount) }
          def amount=(_amount); end
          # Delivery options to be used to send the OutboundTransfer.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::DeliveryOptions))
           }
          def delivery_options; end
          sig {
            params(_delivery_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::DeliveryOptions)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::DeliveryOptions))
           }
          def delivery_options=(_delivery_options); end
          # An arbitrary string attached to the OutboundTransfer. Often useful for displaying to users.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # The FinancialAccount to pull funds from.
          sig {
            returns(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::From)
           }
          def from; end
          sig {
            params(_from: ::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::From).returns(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::From)
           }
          def from=(_from); end
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # To which payout method to send the OutboundTransfer.
          sig { returns(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::To) }
          def to; end
          sig {
            params(_to: ::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::To).returns(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::To)
           }
          def to=(_to); end
          sig {
            params(amount: Stripe::V2::Amount, delivery_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::DeliveryOptions), description: T.nilable(String), from: ::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::From, metadata: T.nilable(T::Hash[String, String]), to: ::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams::To).void
           }
          def initialize(
            amount: nil,
            delivery_options: nil,
            description: nil,
            from: nil,
            metadata: nil,
            to: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end
        # Cancels an OutboundTransfer. Only processing OutboundTransfers can be canceled.
        #
        # ** raises AlreadyCanceledError
        # ** raises NotCancelableError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundTransfer)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates an OutboundTransfer.
        #
        # ** raises InsufficientFundsError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundTransfer)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of OutboundTransfers that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundPayment create or list response.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundTransfer)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end