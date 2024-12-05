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
        sig { returns(T.nilable(String)) }
        attr_reader :network_decline_code
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class BrBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Card < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reference
        sig { returns(String) }
        attr_reader :reference_status
        sig { returns(String) }
        attr_reader :reference_type
        sig { returns(String) }
        attr_reader :type
      end
      class Cashapp < Stripe::StripeObject; end
      class CustomerCashBalance < Stripe::StripeObject; end
      class Eps < Stripe::StripeObject; end
      class EuBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class GbBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Giropay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end
      class IdBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class JpBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Klarna < Stripe::StripeObject; end
      class Multibanco < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class MxBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class P24 < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class Paynow < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject; end
      class Pix < Stripe::StripeObject; end
      class Revolut < Stripe::StripeObject; end
      class Sofort < Stripe::StripeObject; end
      class Swish < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :network_decline_code
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class ThBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class UsBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end
      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
      sig { returns(Affirm) }
      attr_reader :affirm
      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay
      sig { returns(Alipay) }
      attr_reader :alipay
      sig { returns(Alma) }
      attr_reader :alma
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      sig { returns(AuBankTransfer) }
      attr_reader :au_bank_transfer
      sig { returns(Blik) }
      attr_reader :blik
      sig { returns(BrBankTransfer) }
      attr_reader :br_bank_transfer
      sig { returns(Card) }
      attr_reader :card
      sig { returns(Cashapp) }
      attr_reader :cashapp
      sig { returns(CustomerCashBalance) }
      attr_reader :customer_cash_balance
      sig { returns(Eps) }
      attr_reader :eps
      sig { returns(EuBankTransfer) }
      attr_reader :eu_bank_transfer
      sig { returns(GbBankTransfer) }
      attr_reader :gb_bank_transfer
      sig { returns(Giropay) }
      attr_reader :giropay
      sig { returns(Grabpay) }
      attr_reader :grabpay
      sig { returns(IdBankTransfer) }
      attr_reader :id_bank_transfer
      sig { returns(JpBankTransfer) }
      attr_reader :jp_bank_transfer
      sig { returns(Klarna) }
      attr_reader :klarna
      sig { returns(Multibanco) }
      attr_reader :multibanco
      sig { returns(MxBankTransfer) }
      attr_reader :mx_bank_transfer
      sig { returns(P24) }
      attr_reader :p24
      sig { returns(Paynow) }
      attr_reader :paynow
      sig { returns(Paypal) }
      attr_reader :paypal
      sig { returns(Pix) }
      attr_reader :pix
      sig { returns(Revolut) }
      attr_reader :revolut
      sig { returns(Sofort) }
      attr_reader :sofort
      sig { returns(Swish) }
      attr_reader :swish
      sig { returns(ThBankTransfer) }
      attr_reader :th_bank_transfer
      sig { returns(String) }
      attr_reader :type
      sig { returns(UsBankTransfer) }
      attr_reader :us_bank_transfer
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      sig { returns(Zip) }
      attr_reader :zip
    end
    class NextAction < Stripe::StripeObject
      class DisplayDetails < Stripe::StripeObject
        class EmailSent < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :email_sent_at
          sig { returns(String) }
          attr_reader :email_sent_to
        end
        sig { returns(EmailSent) }
        attr_reader :email_sent
        sig { returns(Integer) }
        attr_reader :expires_at
      end
      sig { returns(DisplayDetails) }
      attr_reader :display_details
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(Integer) }
    # Amount, in cents (or local equivalent).
    attr_reader :amount
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # Balance transaction that describes the impact on your account balance.
    attr_reader :balance_transaction
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    # ID of the charge that's refunded.
    attr_reader :charge
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(String) }
    # An arbitrary string attached to the object. You can use this for displaying to users (available on non-card refunds only).
    attr_reader :description
    sig { returns(DestinationDetails) }
    # Attribute for field destination_details
    attr_reader :destination_details
    sig { returns(T.any(String, Stripe::BalanceTransaction)) }
    # After the refund fails, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
    attr_reader :failure_balance_transaction
    sig { returns(String) }
    # Provides the reason for the refund failure. Possible values are: `lost_or_stolen_card`, `expired_or_canceled_card`, `charge_for_pending_refund_disputed`, `insufficient_funds`, `declined`, `merchant_request`, or `unknown`.
    attr_reader :failure_reason
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # For payment methods without native refund support (for example, Konbini, PromptPay), provide an email address for the customer to receive refund instructions.
    attr_reader :instructions_email
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(NextAction) }
    # Attribute for field next_action
    attr_reader :next_action
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    # ID of the PaymentIntent that's refunded.
    attr_reader :payment_intent
    sig { returns(T.nilable(String)) }
    # Reason for the refund, which is either user-provided (`duplicate`, `fraudulent`, or `requested_by_customer`) or generated by Stripe internally (`expired_uncaptured_charge`).
    attr_reader :reason
    sig { returns(T.nilable(String)) }
    # This is the transaction number that appears on email receipts sent for this refund.
    attr_reader :receipt_number
    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    # The transfer reversal that's associated with the refund. Only present if the charge came from another Stripe account.
    attr_reader :source_transfer_reversal
    sig { returns(T.nilable(String)) }
    # Status of the refund. This can be `pending`, `requires_action`, `succeeded`, `failed`, or `canceled`. Learn more about [failed refunds](https://stripe.com/docs/refunds#failed-refunds).
    attr_reader :status
    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    # This refers to the transfer reversal object if the accompanying transfer reverses. This is only applicable if the charge was created using the destination parameter.
    attr_reader :transfer_reversal
  end
end