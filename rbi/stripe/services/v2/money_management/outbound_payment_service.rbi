# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentService < StripeService
        class CancelParams < Stripe::RequestParams; end
        class CreateParams < Stripe::RequestParams
          class DeliveryOptions < Stripe::RequestParams
            # Open Enum. Method for bank account.
            sig { returns(T.nilable(String)) }
            attr_accessor :bank_account
            sig { params(bank_account: T.nilable(String)).void }
            def initialize(bank_account: nil); end
          end
          class From < Stripe::RequestParams
            # Describes the FinancialAmount's currency drawn from.
            sig { returns(String) }
            attr_accessor :currency
            # The FinancialAccount that funds were pulled from.
            sig { returns(String) }
            attr_accessor :financial_account
            sig { params(currency: String, financial_account: String).void }
            def initialize(currency: nil, financial_account: nil); end
          end
          class RecipientNotification < Stripe::RequestParams
            # Closed Enum. Configuration option to enable or disable notifications to recipients.
            # Do not send notifications when setting is NONE. Default to account setting when setting is CONFIGURED or not set.
            sig { returns(String) }
            attr_accessor :setting
            sig { params(setting: String).void }
            def initialize(setting: nil); end
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
            attr_accessor :currency
            # The payout method which the OutboundPayment uses to send payout.
            sig { returns(T.nilable(String)) }
            attr_accessor :payout_method
            # To which account the OutboundPayment is sent.
            sig { returns(String) }
            attr_accessor :recipient
            sig {
              params(currency: T.nilable(String), payout_method: T.nilable(String), recipient: String).void
             }
            def initialize(currency: nil, payout_method: nil, recipient: nil); end
          end
          # The "presentment amount" to be sent to the recipient.
          sig { returns(Stripe::V2::Amount) }
          attr_accessor :amount
          # Delivery options to be used to send the OutboundPayment.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::DeliveryOptions))
           }
          attr_accessor :delivery_options
          # An arbitrary string attached to the OutboundPayment. Often useful for displaying to users.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # From which FinancialAccount and BalanceType to pull funds from.
          sig { returns(::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::From) }
          attr_accessor :from
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The quote for this OutboundPayment. Only required for countries with regulatory mandates to display fee estimates before OutboundPayment creation.
          sig { returns(T.nilable(String)) }
          attr_accessor :outbound_payment_quote
          # Details about the notification settings for the OutboundPayment recipient.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::RecipientNotification))
           }
          attr_accessor :recipient_notification
          # To which payout method to send the OutboundPayment.
          sig { returns(::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::To) }
          attr_accessor :to
          sig {
            params(amount: Stripe::V2::Amount, delivery_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::DeliveryOptions), description: T.nilable(String), from: ::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::From, metadata: T.nilable(T::Hash[String, String]), outbound_payment_quote: T.nilable(String), recipient_notification: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::RecipientNotification), to: ::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams::To).void
           }
          def initialize(
            amount: nil,
            delivery_options: nil,
            description: nil,
            from: nil,
            metadata: nil,
            outbound_payment_quote: nil,
            recipient_notification: nil,
            to: nil
          ); end
        end
        class ListParams < Stripe::RequestParams
          # Filter for objects created at the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gt
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gte
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lt
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lte
          # The maximum number of results to return.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Only return OutboundPayments sent to this recipient.
          sig { returns(T.nilable(String)) }
          attr_accessor :recipient
          # Closed Enum. Only return OutboundPayments with this status.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :status
          sig {
            params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer), recipient: T.nilable(String), status: T.nilable(T::Array[String])).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil,
            recipient: nil,
            status: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        # Cancels an OutboundPayment. Only processing OutboundPayments can be canceled.
        #
        # ** raises AlreadyCanceledError
        # ** raises NotCancelableError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundPayment)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates an OutboundPayment.
        #
        # ** raises InsufficientFundsError
        # ** raises QuotaExceededError
        # ** raises RecipientNotNotifiableError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundPayment)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of OutboundPayments that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment create or list response.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundPayment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end