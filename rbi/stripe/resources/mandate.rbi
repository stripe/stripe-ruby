# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Mandate is a record of the permission that your customer gives you to debit their payment method.
  class Mandate < APIResource
    class CustomerAcceptance < Stripe::StripeObject
      class Offline < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Online < Stripe::StripeObject
        # The customer accepts the mandate from this IP address.
        sig { returns(T.nilable(String)) }
        def ip_address; end
        # The customer accepts the mandate using the user agent of the browser.
        sig { returns(T.nilable(String)) }
        def user_agent; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The time that the customer accepts the mandate.
      sig { returns(T.nilable(Integer)) }
      def accepted_at; end
      # Attribute for field offline
      sig { returns(T.nilable(Offline)) }
      def offline; end
      # Attribute for field online
      sig { returns(T.nilable(Online)) }
      def online; end
      # The mandate includes the type of customer acceptance information, such as: `online` or `offline`.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {offline: Offline, online: Online}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class MultiUse < Stripe::StripeObject
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class MultiUse < Stripe::StripeObject
      # The amount of the payment on a multi use mandate.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      # The currency of the payment on a multi use mandate.
      sig { returns(T.nilable(String)) }
      def currency; end
    end
    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        # List of Stripe products where this mandate can be selected automatically.
        sig { returns(T.nilable(T::Array[String])) }
        def default_for; end
        # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
        sig { returns(T.nilable(String)) }
        def interval_description; end
        # Payment schedule for the mandate.
        sig { returns(String) }
        def payment_schedule; end
        # Transaction type of the mandate.
        sig { returns(String) }
        def transaction_type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class AmazonPay < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class AuBecsDebit < Stripe::StripeObject
        # The URL of the mandate. This URL generally contains sensitive information about the customer and should be shared with them exclusively.
        sig { returns(String) }
        def url; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class BacsDebit < Stripe::StripeObject
        # The status of the mandate on the Bacs network. Can be one of `pending`, `revoked`, `refused`, or `accepted`.
        sig { returns(String) }
        def network_status; end
        # The unique reference identifying the mandate on the Bacs network.
        sig { returns(String) }
        def reference; end
        # When the mandate is revoked on the Bacs network this field displays the reason for the revocation.
        sig { returns(T.nilable(String)) }
        def revocation_reason; end
        # The URL that will contain the mandate that the customer has signed.
        sig { returns(String) }
        def url; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Card < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Cashapp < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class KakaoPay < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Klarna < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class KrCard < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Link < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class NaverPay < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class NzBankAccount < Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Paypal < Stripe::StripeObject
        # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
        sig { returns(T.nilable(String)) }
        def billing_agreement_id; end
        # Uniquely identifies this particular PayPal account. You can use this attribute to check whether two PayPal accounts are the same.
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
        sig { returns(T.nilable(String)) }
        def payer_id; end
        # Owner's verified email. Values are verified or provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        def verified_email; end
      end
      class Payto < Stripe::StripeObject
        # Amount that will be collected. It is required when `amount_type` is `fixed`.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
        sig { returns(String) }
        def amount_type; end
        # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
        sig { returns(T.nilable(String)) }
        def end_date; end
        # The periodicity at which payments will be collected.
        sig { returns(String) }
        def payment_schedule; end
        # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
        sig { returns(T.nilable(Integer)) }
        def payments_per_period; end
        # The purpose for which payments are made. Defaults to retail.
        sig { returns(T.nilable(String)) }
        def purpose; end
        # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
        sig { returns(T.nilable(String)) }
        def start_date; end
      end
      class Pix < Stripe::StripeObject
        # Determines if the amount includes the IOF tax.
        sig { returns(T.nilable(String)) }
        def amount_includes_iof; end
        # Type of amount.
        sig { returns(T.nilable(String)) }
        def amount_type; end
        # Date when the mandate expires and no further payments will be charged, in `YYYY-MM-DD`.
        sig { returns(T.nilable(String)) }
        def end_date; end
        # Schedule at which the future payments will be charged.
        sig { returns(T.nilable(String)) }
        def payment_schedule; end
        # Subscription name displayed to buyers in their bank app.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Start date of the mandate, in `YYYY-MM-DD`.
        sig { returns(T.nilable(String)) }
        def start_date; end
      end
      class SepaDebit < Stripe::StripeObject
        # The unique reference of the mandate.
        sig { returns(String) }
        def reference; end
        # The URL of the mandate. This URL generally contains sensitive information about the customer and should be shared with them exclusively.
        sig { returns(String) }
        def url; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class UsBankAccount < Stripe::StripeObject
        # Mandate collection method
        sig { returns(T.nilable(String)) }
        def collection_method; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field acss_debit
      sig { returns(T.nilable(AcssDebit)) }
      def acss_debit; end
      # Attribute for field amazon_pay
      sig { returns(T.nilable(AmazonPay)) }
      def amazon_pay; end
      # Attribute for field au_becs_debit
      sig { returns(T.nilable(AuBecsDebit)) }
      def au_becs_debit; end
      # Attribute for field bacs_debit
      sig { returns(T.nilable(BacsDebit)) }
      def bacs_debit; end
      # Attribute for field card
      sig { returns(T.nilable(Card)) }
      def card; end
      # Attribute for field cashapp
      sig { returns(T.nilable(Cashapp)) }
      def cashapp; end
      # Attribute for field kakao_pay
      sig { returns(T.nilable(KakaoPay)) }
      def kakao_pay; end
      # Attribute for field klarna
      sig { returns(T.nilable(Klarna)) }
      def klarna; end
      # Attribute for field kr_card
      sig { returns(T.nilable(KrCard)) }
      def kr_card; end
      # Attribute for field link
      sig { returns(T.nilable(Link)) }
      def link; end
      # Attribute for field naver_pay
      sig { returns(T.nilable(NaverPay)) }
      def naver_pay; end
      # Attribute for field nz_bank_account
      sig { returns(T.nilable(NzBankAccount)) }
      def nz_bank_account; end
      # Attribute for field paypal
      sig { returns(T.nilable(Paypal)) }
      def paypal; end
      # Attribute for field payto
      sig { returns(T.nilable(Payto)) }
      def payto; end
      # Attribute for field pix
      sig { returns(T.nilable(Pix)) }
      def pix; end
      # Attribute for field revolut_pay
      sig { returns(T.nilable(RevolutPay)) }
      def revolut_pay; end
      # Attribute for field sepa_debit
      sig { returns(T.nilable(SepaDebit)) }
      def sepa_debit; end
      # This mandate corresponds with a specific payment method type. The `payment_method_details` includes an additional hash with the same name and contains mandate information that's specific to that payment method.
      sig { returns(String) }
      def type; end
      # Attribute for field us_bank_account
      sig { returns(T.nilable(UsBankAccount)) }
      def us_bank_account; end
      def self.inner_class_types
        @inner_class_types = {
          acss_debit: AcssDebit,
          amazon_pay: AmazonPay,
          au_becs_debit: AuBecsDebit,
          bacs_debit: BacsDebit,
          card: Card,
          cashapp: Cashapp,
          kakao_pay: KakaoPay,
          klarna: Klarna,
          kr_card: KrCard,
          link: Link,
          naver_pay: NaverPay,
          nz_bank_account: NzBankAccount,
          paypal: Paypal,
          revolut_pay: RevolutPay,
          sepa_debit: SepaDebit,
          us_bank_account: UsBankAccount,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class SingleUse < Stripe::StripeObject
      # The amount of the payment on a single use mandate.
      sig { returns(Integer) }
      def amount; end
      # The currency of the payment on a single use mandate.
      sig { returns(String) }
      def currency; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field customer_acceptance
    sig { returns(CustomerAcceptance) }
    def customer_acceptance; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Attribute for field multi_use
    sig { returns(T.nilable(MultiUse)) }
    def multi_use; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The account (if any) that the mandate is intended for.
    sig { returns(T.nilable(String)) }
    def on_behalf_of; end
    # ID of the payment method associated with this mandate.
    sig { returns(T.any(String, Stripe::PaymentMethod)) }
    def payment_method; end
    # Attribute for field payment_method_details
    sig { returns(PaymentMethodDetails) }
    def payment_method_details; end
    # Attribute for field single_use
    sig { returns(T.nilable(SingleUse)) }
    def single_use; end
    # The mandate status indicates whether or not you can use it to initiate a payment.
    sig { returns(String) }
    def status; end
    # The type of the mandate.
    sig { returns(String) }
    def type; end
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
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # The Stripe account ID that the mandates are intended for. Learn more about the [use case for connected accounts payments](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
      def on_behalf_of=(_on_behalf_of); end
      # Attribute for param field payment_method
      sig { returns(String) }
      def payment_method; end
      sig { params(_payment_method: String).returns(String) }
      def payment_method=(_payment_method); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      # The status of the mandates to retrieve. Status indicates whether or not you can use it to initiate a payment, and can have a value of `active`, `pending`, or `inactive`.
      sig { returns(String) }
      def status; end
      sig { params(_status: String).returns(String) }
      def status=(_status); end
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), on_behalf_of: T.nilable(String), payment_method: String, starting_after: T.nilable(String), status: String).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        on_behalf_of: nil,
        payment_method: nil,
        starting_after: nil,
        status: nil
      ); end
    end
    # Retrieves a list of Mandates for a given PaymentMethod.
    sig {
      params(params: T.any(::Stripe::Mandate::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end