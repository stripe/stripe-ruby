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
        def network_decline_code; end
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class BrBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class Card < Stripe::StripeObject
        # Value of the reference number assigned to the refund.
        sig { returns(String) }
        def reference; end
        # Status of the reference number on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(String) }
        def reference_status; end
        # Type of the reference number assigned to the refund.
        sig { returns(String) }
        def reference_type; end
        # The type of refund. This can be `refund`, `reversal`, or `pending`.
        sig { returns(String) }
        def type; end
      end
      class Cashapp < Stripe::StripeObject; end
      class CustomerCashBalance < Stripe::StripeObject; end
      class Eps < Stripe::StripeObject; end
      class EuBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class GbBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class Giropay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end
      class JpBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class Klarna < Stripe::StripeObject; end
      class Multibanco < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class MxBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class NzBankTransfer < Stripe::StripeObject; end
      class P24 < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class Paynow < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject
        # For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
        sig { returns(T.nilable(String)) }
        def network_decline_code; end
      end
      class Pix < Stripe::StripeObject; end
      class Revolut < Stripe::StripeObject; end
      class Sofort < Stripe::StripeObject; end
      class Swish < Stripe::StripeObject
        # For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
        sig { returns(T.nilable(String)) }
        def network_decline_code; end
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class ThBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class UsBankTransfer < Stripe::StripeObject
        # The reference assigned to the refund.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
        sig { returns(T.nilable(String)) }
        def reference_status; end
      end
      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
      # Attribute for field affirm
      sig { returns(Affirm) }
      def affirm; end
      # Attribute for field afterpay_clearpay
      sig { returns(AfterpayClearpay) }
      def afterpay_clearpay; end
      # Attribute for field alipay
      sig { returns(Alipay) }
      def alipay; end
      # Attribute for field alma
      sig { returns(Alma) }
      def alma; end
      # Attribute for field amazon_pay
      sig { returns(AmazonPay) }
      def amazon_pay; end
      # Attribute for field au_bank_transfer
      sig { returns(AuBankTransfer) }
      def au_bank_transfer; end
      # Attribute for field blik
      sig { returns(Blik) }
      def blik; end
      # Attribute for field br_bank_transfer
      sig { returns(BrBankTransfer) }
      def br_bank_transfer; end
      # Attribute for field card
      sig { returns(Card) }
      def card; end
      # Attribute for field cashapp
      sig { returns(Cashapp) }
      def cashapp; end
      # Attribute for field customer_cash_balance
      sig { returns(CustomerCashBalance) }
      def customer_cash_balance; end
      # Attribute for field eps
      sig { returns(Eps) }
      def eps; end
      # Attribute for field eu_bank_transfer
      sig { returns(EuBankTransfer) }
      def eu_bank_transfer; end
      # Attribute for field gb_bank_transfer
      sig { returns(GbBankTransfer) }
      def gb_bank_transfer; end
      # Attribute for field giropay
      sig { returns(Giropay) }
      def giropay; end
      # Attribute for field grabpay
      sig { returns(Grabpay) }
      def grabpay; end
      # Attribute for field jp_bank_transfer
      sig { returns(JpBankTransfer) }
      def jp_bank_transfer; end
      # Attribute for field klarna
      sig { returns(Klarna) }
      def klarna; end
      # Attribute for field multibanco
      sig { returns(Multibanco) }
      def multibanco; end
      # Attribute for field mx_bank_transfer
      sig { returns(MxBankTransfer) }
      def mx_bank_transfer; end
      # Attribute for field nz_bank_transfer
      sig { returns(NzBankTransfer) }
      def nz_bank_transfer; end
      # Attribute for field p24
      sig { returns(P24) }
      def p24; end
      # Attribute for field paynow
      sig { returns(Paynow) }
      def paynow; end
      # Attribute for field paypal
      sig { returns(Paypal) }
      def paypal; end
      # Attribute for field pix
      sig { returns(Pix) }
      def pix; end
      # Attribute for field revolut
      sig { returns(Revolut) }
      def revolut; end
      # Attribute for field sofort
      sig { returns(Sofort) }
      def sofort; end
      # Attribute for field swish
      sig { returns(Swish) }
      def swish; end
      # Attribute for field th_bank_transfer
      sig { returns(ThBankTransfer) }
      def th_bank_transfer; end
      # The type of transaction-specific details of the payment method used in the refund (e.g., `card`). An additional hash is included on `destination_details` with a name matching this value. It contains information specific to the refund transaction.
      sig { returns(String) }
      def type; end
      # Attribute for field us_bank_transfer
      sig { returns(UsBankTransfer) }
      def us_bank_transfer; end
      # Attribute for field wechat_pay
      sig { returns(WechatPay) }
      def wechat_pay; end
      # Attribute for field zip
      sig { returns(Zip) }
      def zip; end
    end
    class NextAction < Stripe::StripeObject
      class DisplayDetails < Stripe::StripeObject
        class EmailSent < Stripe::StripeObject
          # The timestamp when the email was sent.
          sig { returns(Integer) }
          def email_sent_at; end
          # The recipient's email address.
          sig { returns(String) }
          def email_sent_to; end
        end
        # Attribute for field email_sent
        sig { returns(EmailSent) }
        def email_sent; end
        # The expiry timestamp.
        sig { returns(Integer) }
        def expires_at; end
      end
      # Attribute for field display_details
      sig { returns(DisplayDetails) }
      def display_details; end
      # Type of the next action to perform.
      sig { returns(String) }
      def type; end
    end
    class PresentmentDetails < Stripe::StripeObject
      # Amount intended to be collected by this payment, denominated in `presentment_currency`.
      sig { returns(Integer) }
      def presentment_amount; end
      # Currency presented to the customer during payment.
      sig { returns(String) }
      def presentment_currency; end
    end
    # Amount, in cents (or local equivalent).
    sig { returns(Integer) }
    def amount; end
    # Balance transaction that describes the impact on your account balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    def balance_transaction; end
    # ID of the charge that's refunded.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    def charge; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # An arbitrary string attached to the object. You can use this for displaying to users (available on non-card refunds only).
    sig { returns(String) }
    def description; end
    # Attribute for field destination_details
    sig { returns(DestinationDetails) }
    def destination_details; end
    # After the refund fails, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
    sig { returns(T.any(String, Stripe::BalanceTransaction)) }
    def failure_balance_transaction; end
    # Provides the reason for the refund failure. Possible values are: `lost_or_stolen_card`, `expired_or_canceled_card`, `charge_for_pending_refund_disputed`, `insufficient_funds`, `declined`, `merchant_request`, or `unknown`.
    sig { returns(String) }
    def failure_reason; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # For payment methods without native refund support (for example, Konbini, PromptPay), provide an email address for the customer to receive refund instructions.
    sig { returns(String) }
    def instructions_email; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # Attribute for field next_action
    sig { returns(NextAction) }
    def next_action; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # ID of the PaymentIntent that's refunded.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    def payment_intent; end
    # Provides the reason for why the refund is pending. Possible values are: `processing`, `insufficient_funds`, or `charge_pending`.
    sig { returns(String) }
    def pending_reason; end
    # Attribute for field presentment_details
    sig { returns(PresentmentDetails) }
    def presentment_details; end
    # Reason for the refund, which is either user-provided (`duplicate`, `fraudulent`, or `requested_by_customer`) or generated by Stripe internally (`expired_uncaptured_charge`).
    sig { returns(T.nilable(String)) }
    def reason; end
    # This is the transaction number that appears on email receipts sent for this refund.
    sig { returns(T.nilable(String)) }
    def receipt_number; end
    # The transfer reversal that's associated with the refund. Only present if the charge came from another Stripe account.
    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    def source_transfer_reversal; end
    # Status of the refund. This can be `pending`, `requires_action`, `succeeded`, `failed`, or `canceled`. Learn more about [failed refunds](https://stripe.com/docs/refunds#failed-refunds).
    sig { returns(T.nilable(String)) }
    def status; end
    # This refers to the transfer reversal object if the accompanying transfer reverses. This is only applicable if the charge was created using the destination parameter.
    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    def transfer_reversal; end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return refunds for the charge specified by this charge ID.
      sig { returns(T.nilable(String)) }
      def charge; end
      sig { params(_charge: T.nilable(String)).returns(T.nilable(String)) }
      def charge=(_charge); end
      # Only return refunds that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Refund::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::Refund::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Refund::ListParams::Created, Integer)))
       }
      def created=(_created); end
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
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Only return refunds for the PaymentIntent specified by this ID.
      sig { returns(T.nilable(String)) }
      def payment_intent; end
      sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
      def payment_intent=(_payment_intent); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(charge: T.nilable(String), created: T.nilable(T.any(::Stripe::Refund::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_intent: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        charge: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # Attribute for param field amount
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # The identifier of the charge to refund.
      sig { returns(T.nilable(String)) }
      def charge; end
      sig { params(_charge: T.nilable(String)).returns(T.nilable(String)) }
      def charge=(_charge); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # Customer whose customer balance to refund from.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
      sig { returns(T.nilable(String)) }
      def instructions_email; end
      sig { params(_instructions_email: T.nilable(String)).returns(T.nilable(String)) }
      def instructions_email=(_instructions_email); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Origin of the refund
      sig { returns(T.nilable(String)) }
      def origin; end
      sig { params(_origin: T.nilable(String)).returns(T.nilable(String)) }
      def origin=(_origin); end
      # The identifier of the PaymentIntent to refund.
      sig { returns(T.nilable(String)) }
      def payment_intent; end
      sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
      def payment_intent=(_payment_intent); end
      # String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://stripe.com/docs/radar/lists), and will also help us improve our fraud detection algorithms.
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
      sig { returns(T.nilable(T::Boolean)) }
      def refund_application_fee; end
      sig { params(_refund_application_fee: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def refund_application_fee=(_refund_application_fee); end
      # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).<br><br>A transfer can be reversed only by the application that created the charge.
      sig { returns(T.nilable(T::Boolean)) }
      def reverse_transfer; end
      sig { params(_reverse_transfer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def reverse_transfer=(_reverse_transfer); end
      sig {
        params(amount: T.nilable(Integer), charge: T.nilable(String), currency: T.nilable(String), customer: T.nilable(String), expand: T.nilable(T::Array[String]), instructions_email: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), origin: T.nilable(String), payment_intent: T.nilable(String), reason: T.nilable(String), refund_application_fee: T.nilable(T::Boolean), reverse_transfer: T.nilable(T::Boolean)).void
       }
      def initialize(
        amount: nil,
        charge: nil,
        currency: nil,
        customer: nil,
        expand: nil,
        instructions_email: nil,
        metadata: nil,
        origin: nil,
        payment_intent: nil,
        reason: nil,
        refund_application_fee: nil,
        reverse_transfer: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      sig {
        params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(expand: nil, metadata: nil); end
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
    class ExpireParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Cancels a refund with a status of requires_action.
    #
    # You can't cancel refunds in other states. Only refunds for payment methods that require customer action can enter the requires_action state.
    sig {
      params(params: T.any(::Stripe::Refund::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def cancel(params = {}, opts = {}); end

    # Cancels a refund with a status of requires_action.
    #
    # You can't cancel refunds in other states. Only refunds for payment methods that require customer action can enter the requires_action state.
    sig {
      params(refund: String, params: T.any(::Stripe::Refund::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def self.cancel(refund, params = {}, opts = {}); end

    # When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.
    #
    # Creating a new refund will refund a charge that has previously been created but not yet refunded.
    # Funds will be refunded to the credit or debit card that was originally charged.
    #
    # You can optionally refund only part of a charge.
    # You can do so multiple times, until the entire charge has been refunded.
    #
    # Once entirely refunded, a charge can't be refunded again.
    # This method will raise an error when called on an already-refunded charge,
    # or when trying to refund more money than is left on a charge.
    sig {
      params(params: T.any(::Stripe::Refund::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of all refunds you created. We return the refunds in sorted order, with the most recent refunds appearing first. The 10 most recent refunds are always available by default on the Charge object.
    sig {
      params(params: T.any(::Stripe::Refund::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the refund that you specify by setting the values of the passed parameters. Any parameters that you don't provide remain unchanged.
    #
    # This request only accepts metadata as an argument.
    sig {
      params(refund: String, params: T.any(::Stripe::Refund::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Refund)
     }
    def self.update(refund, params = {}, opts = {}); end
  end
end