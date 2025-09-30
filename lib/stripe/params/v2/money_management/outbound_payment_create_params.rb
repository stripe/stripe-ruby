# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentCreateParams < Stripe::RequestParams
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
    end
  end
end
