# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for objects created at the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_gt
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_gte
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_lt
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_lte
          # The maximum number of results to return.
          attr_accessor :limit
          # Only return OutboundPayments sent to this recipient.
          attr_accessor :recipient
          # Closed Enum. Only return OutboundPayments with this status.
          attr_accessor :status

          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil,
            recipient: nil,
            status: nil
          )
            @created = created
            @created_gt = created_gt
            @created_gte = created_gte
            @created_lt = created_lt
            @created_lte = created_lte
            @limit = limit
            @recipient = recipient
            @status = status
          end
        end

        class CreateParams < Stripe::RequestParams
          class DeliveryOptions < Stripe::RequestParams
            # Open Enum. Method for bank account.
            attr_accessor :bank_account

            def initialize(bank_account: nil)
              @bank_account = bank_account
            end
          end

          class From < Stripe::RequestParams
            # Describes the FinancialAmount's currency drawn from.
            attr_accessor :currency
            # The FinancialAccount that funds were pulled from.
            attr_accessor :financial_account

            def initialize(currency: nil, financial_account: nil)
              @currency = currency
              @financial_account = financial_account
            end
          end

          class RecipientNotification < Stripe::RequestParams
            # Closed Enum. Configuration option to enable or disable notifications to recipients.
            # Do not send notifications when setting is NONE. Default to account setting when setting is CONFIGURED or not set.
            attr_accessor :setting

            def initialize(setting: nil)
              @setting = setting
            end
          end

          class To < Stripe::RequestParams
            # Describes the currency to send to the recipient.
            # If included, this currency must match a currency supported by the destination.
            # Can be omitted in the following cases:
            # - destination only supports one currency
            # - destination supports multiple currencies and one of the currencies matches the FA currency
            # - destination supports multiple currencies and one of the currencies matches the presentment currency
            # Note - when both FA currency and presentment currency are supported, we pick the FA currency to minimize FX.
            attr_accessor :currency
            # The payout method which the OutboundPayment uses to send payout.
            attr_accessor :payout_method
            # To which account the OutboundPayment is sent.
            attr_accessor :recipient

            def initialize(currency: nil, payout_method: nil, recipient: nil)
              @currency = currency
              @payout_method = payout_method
              @recipient = recipient
            end
          end
          # The "presentment amount" to be sent to the recipient.
          attr_accessor :amount
          # Delivery options to be used to send the OutboundPayment.
          attr_accessor :delivery_options
          # An arbitrary string attached to the OutboundPayment. Often useful for displaying to users.
          attr_accessor :description
          # From which FinancialAccount and BalanceType to pull funds from.
          attr_accessor :from
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The quote for this OutboundPayment. Only required for countries with regulatory mandates to display fee estimates before OutboundPayment creation.
          attr_accessor :outbound_payment_quote
          # Details about the notification settings for the OutboundPayment recipient.
          attr_accessor :recipient_notification
          # The recipient verification id for this OutboundPayment. Only required for countries with regulatory mandates to verify recipient names before OutboundPayment creation.
          attr_accessor :recipient_verification
          # To which payout method to send the OutboundPayment.
          attr_accessor :to

          def initialize(
            amount: nil,
            delivery_options: nil,
            description: nil,
            from: nil,
            metadata: nil,
            outbound_payment_quote: nil,
            recipient_notification: nil,
            recipient_verification: nil,
            to: nil
          )
            @amount = amount
            @delivery_options = delivery_options
            @description = description
            @from = from
            @metadata = metadata
            @outbound_payment_quote = outbound_payment_quote
            @recipient_notification = recipient_notification
            @recipient_verification = recipient_verification
            @to = to
          end
        end

        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end

        # Cancels an OutboundPayment. Only processing OutboundPayments can be canceled.
        #
        # ** raises AlreadyCanceledError
        # ** raises NotCancelableError
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/outbound_payments/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates an OutboundPayment.
        #
        # ** raises InsufficientFundsError
        # ** raises QuotaExceededError
        # ** raises RecipientNotNotifiableError
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/outbound_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of OutboundPayments that match the provided filters.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/outbound_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment create or list response.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/outbound_payments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
