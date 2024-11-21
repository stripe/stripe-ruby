# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Refund objects allow you to refund a previously created charge that isn't
  # refunded yet. Funds are refunded to the credit or debit card that's
  # initially charged.
  #
  # Related guide: [Refunds](https://stripe.com/docs/refunds)
  class Refund < APIResource
    class DestinationDetails < Stripe::StripeObject
      class Affirm < Stripe::StripeObject; end
      class AfterpayClearpay < Stripe::StripeObject; end
      class Alipay < Stripe::StripeObject; end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end
      class AuBankTransfer < Stripe::StripeObject; end
      class Blik < Stripe::StripeObject
        # For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
        sig { returns(T.nilable(String)) }
        attr_reader :network_decline_code
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class BrBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Card < Stripe::StripeObject
        # Value of the reference number assigned to the refund.
        sig { returns(String) }
        attr_reader :reference
        # Status of the reference number on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(String) }
        attr_reader :reference_status
        # Type of the reference number assigned to the refund.
        sig { returns(String) }
        attr_reader :reference_type
        # The type of refund. This can be `refund`, `reversal`, or `pending`.
        sig { returns(String) }
        attr_reader :type
      end
      class Cashapp < Stripe::StripeObject; end
      class CustomerCashBalance < Stripe::StripeObject; end
      class Eps < Stripe::StripeObject; end
      class EuBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class GbBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Giropay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end
      class IdBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class JpBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Klarna < Stripe::StripeObject; end
      class Multibanco < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class MxBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class P24 < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Paynow < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject; end
      class Pix < Stripe::StripeObject; end
      class Revolut < Stripe::StripeObject; end
      class Sofort < Stripe::StripeObject; end
      class Swish < Stripe::StripeObject
        # For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
        sig { returns(T.nilable(String)) }
        attr_reader :network_decline_code
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class ThBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class UsBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
      # Attribute for field affirm
      sig { returns(Affirm) }
      attr_reader :affirm
      # Attribute for field afterpay_clearpay
      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay
      # Attribute for field alipay
      sig { returns(Alipay) }
      attr_reader :alipay
      # Attribute for field alma
      sig { returns(Alma) }
      attr_reader :alma
      # Attribute for field amazon_pay
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      # Attribute for field au_bank_transfer
      sig { returns(AuBankTransfer) }
      attr_reader :au_bank_transfer
      # Attribute for field blik
      sig { returns(Blik) }
      attr_reader :blik
      # Attribute for field br_bank_transfer
      sig { returns(BrBankTransfer) }
      attr_reader :br_bank_transfer
      # Attribute for field card
      sig { returns(Card) }
      attr_reader :card
      # Attribute for field cashapp
      sig { returns(Cashapp) }
      attr_reader :cashapp
      # Attribute for field customer_cash_balance
      sig { returns(CustomerCashBalance) }
      attr_reader :customer_cash_balance
      # Attribute for field eps
      sig { returns(Eps) }
      attr_reader :eps
      # Attribute for field eu_bank_transfer
      sig { returns(EuBankTransfer) }
      attr_reader :eu_bank_transfer
      # Attribute for field gb_bank_transfer
      sig { returns(GbBankTransfer) }
      attr_reader :gb_bank_transfer
      # Attribute for field giropay
      sig { returns(Giropay) }
      attr_reader :giropay
      # Attribute for field grabpay
      sig { returns(Grabpay) }
      attr_reader :grabpay
      # Attribute for field id_bank_transfer
      sig { returns(IdBankTransfer) }
      attr_reader :id_bank_transfer
      # Attribute for field jp_bank_transfer
      sig { returns(JpBankTransfer) }
      attr_reader :jp_bank_transfer
      # Attribute for field klarna
      sig { returns(Klarna) }
      attr_reader :klarna
      # Attribute for field multibanco
      sig { returns(Multibanco) }
      attr_reader :multibanco
      # Attribute for field mx_bank_transfer
      sig { returns(MxBankTransfer) }
      attr_reader :mx_bank_transfer
      # Attribute for field p24
      sig { returns(P24) }
      attr_reader :p24
      # Attribute for field paynow
      sig { returns(Paynow) }
      attr_reader :paynow
      # Attribute for field paypal
      sig { returns(Paypal) }
      attr_reader :paypal
      # Attribute for field pix
      sig { returns(Pix) }
      attr_reader :pix
      # Attribute for field revolut
      sig { returns(Revolut) }
      attr_reader :revolut
      # Attribute for field sofort
      sig { returns(Sofort) }
      attr_reader :sofort
      # Attribute for field swish
      sig { returns(Swish) }
      attr_reader :swish
      # Attribute for field th_bank_transfer
      sig { returns(ThBankTransfer) }
      attr_reader :th_bank_transfer
      # The type of transaction-specific details of the payment method used in the refund (e.g., `card`). An additional hash is included on `destination_details` with a name matching this value. It contains information specific to the refund transaction.
      sig { returns(String) }
      attr_reader :type
      # Attribute for field us_bank_transfer
      sig { returns(UsBankTransfer) }
      attr_reader :us_bank_transfer
      # Attribute for field wechat_pay
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      # Attribute for field zip
      sig { returns(Zip) }
      attr_reader :zip
    end
    class NextAction < Stripe::StripeObject
      class DisplayDetails < Stripe::StripeObject
        class EmailSent < Stripe::StripeObject
          # The timestamp when the email was sent.
          sig { returns(Integer) }
          attr_reader :email_sent_at
          # The recipient's email address.
          sig { returns(String) }
          attr_reader :email_sent_to
        end
        # Attribute for field email_sent
        sig { returns(EmailSent) }
        attr_reader :email_sent
        # The expiry timestamp.
        sig { returns(Integer) }
        attr_reader :expires_at
      end
      # Attribute for field display_details
      sig { returns(DisplayDetails) }
      attr_reader :display_details
      # Type of the next action to perform.
      sig { returns(String) }
      attr_reader :type
    end
    # Amount, in cents (or local equivalent).
    sig { returns(Integer) }
    attr_reader :amount

    # Balance transaction that describes the impact on your account balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    # ID of the charge that's refunded.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :charge

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # An arbitrary string attached to the object. You can use this for displaying to users (available on non-card refunds only).
    sig { returns(String) }
    attr_reader :description

    # Attribute for field destination_details
    sig { returns(DestinationDetails) }
    attr_reader :destination_details

    # After the refund fails, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
    sig { returns(T.any(String, Stripe::BalanceTransaction)) }
    attr_reader :failure_balance_transaction

    # Provides the reason for the refund failure. Possible values are: `lost_or_stolen_card`, `expired_or_canceled_card`, `charge_for_pending_refund_disputed`, `insufficient_funds`, `declined`, `merchant_request`, or `unknown`.
    sig { returns(String) }
    attr_reader :failure_reason

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # For payment methods without native refund support (for example, Konbini, PromptPay), provide an email address for the customer to receive refund instructions.
    sig { returns(String) }
    attr_reader :instructions_email

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # Attribute for field next_action
    sig { returns(NextAction) }
    attr_reader :next_action

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # ID of the PaymentIntent that's refunded.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    attr_reader :payment_intent

    # Reason for the refund, which is either user-provided (`duplicate`, `fraudulent`, or `requested_by_customer`) or generated by Stripe internally (`expired_uncaptured_charge`).
    sig { returns(T.nilable(String)) }
    attr_reader :reason

    # This is the transaction number that appears on email receipts sent for this refund.
    sig { returns(T.nilable(String)) }
    attr_reader :receipt_number

    # The transfer reversal that's associated with the refund. Only present if the charge came from another Stripe account.
    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    attr_reader :source_transfer_reversal

    # Status of the refund. This can be `pending`, `requires_action`, `succeeded`, `failed`, or `canceled`. Learn more about [failed refunds](https://stripe.com/docs/refunds#failed-refunds).
    sig { returns(T.nilable(String)) }
    attr_reader :status

    # This refers to the transfer reversal object if the accompanying transfer reverses. This is only applicable if the charge was created using the destination parameter.
    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    attr_reader :transfer_reversal
  end
end