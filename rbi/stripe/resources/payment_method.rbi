# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # PaymentMethod objects represent your customer's payment instruments.
  # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
  # Customer objects to store instrument details for future payments.
  #
  # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
  class PaymentMethod < APIResource
    class AcssDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :institution_number
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :transit_number
    end
    class Affirm < Stripe::StripeObject; end
    class AfterpayClearpay < Stripe::StripeObject; end
    class Alipay < Stripe::StripeObject; end
    class Alma < Stripe::StripeObject; end
    class AmazonPay < Stripe::StripeObject; end
    class AuBecsDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bsb_number
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end
    class BacsDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :sort_code
    end
    class Bancontact < Stripe::StripeObject; end
    class BillingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :email
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class Blik < Stripe::StripeObject; end
    class Boleto < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :tax_id
    end
    class Card < Stripe::StripeObject
      class Checks < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :address_line1_check
        sig { returns(T.nilable(String)) }
        attr_reader :address_postal_code_check
        sig { returns(T.nilable(String)) }
        attr_reader :cvc_check
      end
      class GeneratedFrom < Stripe::StripeObject
        class PaymentMethodDetails < Stripe::StripeObject
          class CardPresent < Stripe::StripeObject
            class Offline < Stripe::StripeObject
              sig { returns(T.nilable(Integer)) }
              attr_reader :stored_at
              sig { returns(T.nilable(String)) }
              attr_reader :type
            end
            class Receipt < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :account_type
              sig { returns(T.nilable(String)) }
              attr_reader :application_cryptogram
              sig { returns(T.nilable(String)) }
              attr_reader :application_preferred_name
              sig { returns(T.nilable(String)) }
              attr_reader :authorization_code
              sig { returns(T.nilable(String)) }
              attr_reader :authorization_response_code
              sig { returns(T.nilable(String)) }
              attr_reader :cardholder_verification_method
              sig { returns(T.nilable(String)) }
              attr_reader :dedicated_file_name
              sig { returns(T.nilable(String)) }
              attr_reader :terminal_verification_results
              sig { returns(T.nilable(String)) }
              attr_reader :transaction_status_information
            end
            class Wallet < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :type
            end
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_authorized
            sig { returns(T.nilable(String)) }
            attr_reader :brand
            sig { returns(T.nilable(String)) }
            attr_reader :brand_product
            sig { returns(Integer) }
            attr_reader :capture_before
            sig { returns(T.nilable(String)) }
            attr_reader :cardholder_name
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :description
            sig { returns(T.nilable(String)) }
            attr_reader :emv_auth_data
            sig { returns(Integer) }
            attr_reader :exp_month
            sig { returns(Integer) }
            attr_reader :exp_year
            sig { returns(T.nilable(String)) }
            attr_reader :fingerprint
            sig { returns(T.nilable(String)) }
            attr_reader :funding
            sig { returns(T.nilable(String)) }
            attr_reader :generated_card
            sig { returns(T.nilable(String)) }
            attr_reader :iin
            sig { returns(T::Boolean) }
            attr_reader :incremental_authorization_supported
            sig { returns(T.nilable(String)) }
            attr_reader :issuer
            sig { returns(T.nilable(String)) }
            attr_reader :last4
            sig { returns(T.nilable(String)) }
            attr_reader :network
            sig { returns(T.nilable(String)) }
            attr_reader :network_transaction_id
            sig { returns(T.nilable(Offline)) }
            attr_reader :offline
            sig { returns(T::Boolean) }
            attr_reader :overcapture_supported
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :preferred_locales
            sig { returns(T.nilable(String)) }
            attr_reader :read_method
            sig { returns(T.nilable(Receipt)) }
            attr_reader :receipt
            sig { returns(Wallet) }
            attr_reader :wallet
          end
          sig { returns(CardPresent) }
          attr_reader :card_present
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(String)) }
        attr_reader :charge
        sig { returns(T.nilable(PaymentMethodDetails)) }
        attr_reader :payment_method_details
        sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
        attr_reader :setup_attempt
      end
      class Networks < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :available
        sig { returns(T.nilable(String)) }
        attr_reader :preferred
      end
      class ThreeDSecureUsage < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :supported
      end
      class Wallet < Stripe::StripeObject
        class AmexExpressCheckout < Stripe::StripeObject; end
        class ApplePay < Stripe::StripeObject; end
        class GooglePay < Stripe::StripeObject; end
        class Link < Stripe::StripeObject; end
        class Masterpass < Stripe::StripeObject
          class BillingAddress < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class ShippingAddress < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          sig { returns(T.nilable(BillingAddress)) }
          attr_reader :billing_address
          sig { returns(T.nilable(String)) }
          attr_reader :email
          sig { returns(T.nilable(String)) }
          attr_reader :name
          sig { returns(T.nilable(ShippingAddress)) }
          attr_reader :shipping_address
        end
        class SamsungPay < Stripe::StripeObject; end
        class VisaCheckout < Stripe::StripeObject
          class BillingAddress < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          class ShippingAddress < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          sig { returns(T.nilable(BillingAddress)) }
          attr_reader :billing_address
          sig { returns(T.nilable(String)) }
          attr_reader :email
          sig { returns(T.nilable(String)) }
          attr_reader :name
          sig { returns(T.nilable(ShippingAddress)) }
          attr_reader :shipping_address
        end
        sig { returns(AmexExpressCheckout) }
        attr_reader :amex_express_checkout
        sig { returns(ApplePay) }
        attr_reader :apple_pay
        sig { returns(T.nilable(String)) }
        attr_reader :dynamic_last4
        sig { returns(GooglePay) }
        attr_reader :google_pay
        sig { returns(Link) }
        attr_reader :link
        sig { returns(Masterpass) }
        attr_reader :masterpass
        sig { returns(SamsungPay) }
        attr_reader :samsung_pay
        sig { returns(String) }
        attr_reader :type
        sig { returns(VisaCheckout) }
        attr_reader :visa_checkout
      end
      sig { returns(String) }
      attr_reader :brand
      sig { returns(T.nilable(Checks)) }
      attr_reader :checks
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(T.nilable(String)) }
      attr_reader :display_brand
      sig { returns(Integer) }
      attr_reader :exp_month
      sig { returns(Integer) }
      attr_reader :exp_year
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(String) }
      attr_reader :funding
      sig { returns(T.nilable(GeneratedFrom)) }
      attr_reader :generated_from
      sig { returns(T.nilable(String)) }
      attr_reader :iin
      sig { returns(T.nilable(String)) }
      attr_reader :issuer
      sig { returns(String) }
      attr_reader :last4
      sig { returns(T.nilable(Networks)) }
      attr_reader :networks
      sig { returns(T.nilable(ThreeDSecureUsage)) }
      attr_reader :three_d_secure_usage
      sig { returns(T.nilable(Wallet)) }
      attr_reader :wallet
    end
    class CardPresent < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :available
        sig { returns(T.nilable(String)) }
        attr_reader :preferred
      end
      class Offline < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :stored_at
        sig { returns(T.nilable(String)) }
        attr_reader :type
      end
      class Wallet < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      sig { returns(T.nilable(String)) }
      attr_reader :brand_product
      sig { returns(T.nilable(String)) }
      attr_reader :cardholder_name
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(Integer) }
      attr_reader :exp_month
      sig { returns(Integer) }
      attr_reader :exp_year
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      sig { returns(T.nilable(String)) }
      attr_reader :iin
      sig { returns(T.nilable(String)) }
      attr_reader :issuer
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(Networks)) }
      attr_reader :networks
      sig { returns(T.nilable(Offline)) }
      attr_reader :offline
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :preferred_locales
      sig { returns(T.nilable(String)) }
      attr_reader :read_method
      sig { returns(Wallet) }
      attr_reader :wallet
    end
    class Cashapp < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :buyer_id
      sig { returns(T.nilable(String)) }
      attr_reader :cashtag
    end
    class CustomerBalance < Stripe::StripeObject; end
    class Eps < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank
    end
    class Fpx < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_type
      sig { returns(String) }
      attr_reader :bank
    end
    class Giropay < Stripe::StripeObject; end
    class Gopay < Stripe::StripeObject; end
    class Grabpay < Stripe::StripeObject; end
    class IdBankTransfer < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :display_name
    end
    class Ideal < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank
      sig { returns(T.nilable(String)) }
      attr_reader :bic
    end
    class InteracPresent < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :available
        sig { returns(T.nilable(String)) }
        attr_reader :preferred
      end
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      sig { returns(T.nilable(String)) }
      attr_reader :cardholder_name
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(Integer) }
      attr_reader :exp_month
      sig { returns(Integer) }
      attr_reader :exp_year
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      sig { returns(T.nilable(String)) }
      attr_reader :iin
      sig { returns(T.nilable(String)) }
      attr_reader :issuer
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(Networks)) }
      attr_reader :networks
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :preferred_locales
      sig { returns(T.nilable(String)) }
      attr_reader :read_method
    end
    class KakaoPay < Stripe::StripeObject; end
    class Klarna < Stripe::StripeObject
      class Dob < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :day
        sig { returns(T.nilable(Integer)) }
        attr_reader :month
        sig { returns(T.nilable(Integer)) }
        attr_reader :year
      end
      sig { returns(T.nilable(Dob)) }
      attr_reader :dob
    end
    class Konbini < Stripe::StripeObject; end
    class KrCard < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end
    class Link < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :email
      sig { returns(String) }
      attr_reader :persistent_token
    end
    class MbWay < Stripe::StripeObject; end
    class Mobilepay < Stripe::StripeObject; end
    class Multibanco < Stripe::StripeObject; end
    class NaverPay < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :funding
    end
    class Oxxo < Stripe::StripeObject; end
    class P24 < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank
    end
    class Payco < Stripe::StripeObject; end
    class Paynow < Stripe::StripeObject; end
    class Paypal < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :payer_email
      sig { returns(T.nilable(String)) }
      attr_reader :payer_id
      sig { returns(T.nilable(String)) }
      attr_reader :verified_email
    end
    class Payto < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bsb_number
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :pay_id
    end
    class Pix < Stripe::StripeObject; end
    class Promptpay < Stripe::StripeObject; end
    class Qris < Stripe::StripeObject; end
    class RadarOptions < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :session
    end
    class Rechnung < Stripe::StripeObject
      class Dob < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :day
        sig { returns(Integer) }
        attr_reader :month
        sig { returns(Integer) }
        attr_reader :year
      end
      sig { returns(Dob) }
      attr_reader :dob
    end
    class RevolutPay < Stripe::StripeObject; end
    class SamsungPay < Stripe::StripeObject; end
    class SepaDebit < Stripe::StripeObject
      class GeneratedFrom < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
        attr_reader :charge
        sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
        attr_reader :setup_attempt
      end
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :branch_code
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(GeneratedFrom)) }
      attr_reader :generated_from
      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end
    class Shopeepay < Stripe::StripeObject; end
    class Sofort < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :country
    end
    class Swish < Stripe::StripeObject; end
    class Twint < Stripe::StripeObject; end
    class UsBankAccount < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :preferred
        sig { returns(T::Array[String]) }
        attr_reader :supported
      end
      class StatusDetails < Stripe::StripeObject
        class Blocked < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :network_code
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        sig { returns(Blocked) }
        attr_reader :blocked
      end
      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_type
      sig { returns(T.nilable(String)) }
      attr_reader :account_number
      sig { returns(T.nilable(String)) }
      attr_reader :account_type
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :financial_connections_account
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(Networks)) }
      attr_reader :networks
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
      sig { returns(T.nilable(StatusDetails)) }
      attr_reader :status_details
    end
    class WechatPay < Stripe::StripeObject; end
    class Zip < Stripe::StripeObject; end
    sig { returns(AcssDebit) }
    # Attribute for field acss_debit
    attr_reader :acss_debit
    sig { returns(Affirm) }
    # Attribute for field affirm
    attr_reader :affirm
    sig { returns(AfterpayClearpay) }
    # Attribute for field afterpay_clearpay
    attr_reader :afterpay_clearpay
    sig { returns(Alipay) }
    # Attribute for field alipay
    attr_reader :alipay
    sig { returns(String) }
    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    attr_reader :allow_redisplay
    sig { returns(Alma) }
    # Attribute for field alma
    attr_reader :alma
    sig { returns(AmazonPay) }
    # Attribute for field amazon_pay
    attr_reader :amazon_pay
    sig { returns(AuBecsDebit) }
    # Attribute for field au_becs_debit
    attr_reader :au_becs_debit
    sig { returns(BacsDebit) }
    # Attribute for field bacs_debit
    attr_reader :bacs_debit
    sig { returns(Bancontact) }
    # Attribute for field bancontact
    attr_reader :bancontact
    sig { returns(BillingDetails) }
    # Attribute for field billing_details
    attr_reader :billing_details
    sig { returns(Blik) }
    # Attribute for field blik
    attr_reader :blik
    sig { returns(Boleto) }
    # Attribute for field boleto
    attr_reader :boleto
    sig { returns(Card) }
    # Attribute for field card
    attr_reader :card
    sig { returns(CardPresent) }
    # Attribute for field card_present
    attr_reader :card_present
    sig { returns(Cashapp) }
    # Attribute for field cashapp
    attr_reader :cashapp
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
    attr_reader :customer
    sig { returns(CustomerBalance) }
    # Attribute for field customer_balance
    attr_reader :customer_balance
    sig { returns(Eps) }
    # Attribute for field eps
    attr_reader :eps
    sig { returns(Fpx) }
    # Attribute for field fpx
    attr_reader :fpx
    sig { returns(Giropay) }
    # Attribute for field giropay
    attr_reader :giropay
    sig { returns(Gopay) }
    # Attribute for field gopay
    attr_reader :gopay
    sig { returns(Grabpay) }
    # Attribute for field grabpay
    attr_reader :grabpay
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(IdBankTransfer) }
    # Attribute for field id_bank_transfer
    attr_reader :id_bank_transfer
    sig { returns(Ideal) }
    # Attribute for field ideal
    attr_reader :ideal
    sig { returns(InteracPresent) }
    # Attribute for field interac_present
    attr_reader :interac_present
    sig { returns(KakaoPay) }
    # Attribute for field kakao_pay
    attr_reader :kakao_pay
    sig { returns(Klarna) }
    # Attribute for field klarna
    attr_reader :klarna
    sig { returns(Konbini) }
    # Attribute for field konbini
    attr_reader :konbini
    sig { returns(KrCard) }
    # Attribute for field kr_card
    attr_reader :kr_card
    sig { returns(Link) }
    # Attribute for field link
    attr_reader :link
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(MbWay) }
    # Attribute for field mb_way
    attr_reader :mb_way
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(Mobilepay) }
    # Attribute for field mobilepay
    attr_reader :mobilepay
    sig { returns(Multibanco) }
    # Attribute for field multibanco
    attr_reader :multibanco
    sig { returns(NaverPay) }
    # Attribute for field naver_pay
    attr_reader :naver_pay
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Oxxo) }
    # Attribute for field oxxo
    attr_reader :oxxo
    sig { returns(P24) }
    # Attribute for field p24
    attr_reader :p24
    sig { returns(Payco) }
    # Attribute for field payco
    attr_reader :payco
    sig { returns(Paynow) }
    # Attribute for field paynow
    attr_reader :paynow
    sig { returns(Paypal) }
    # Attribute for field paypal
    attr_reader :paypal
    sig { returns(Payto) }
    # Attribute for field payto
    attr_reader :payto
    sig { returns(Pix) }
    # Attribute for field pix
    attr_reader :pix
    sig { returns(Promptpay) }
    # Attribute for field promptpay
    attr_reader :promptpay
    sig { returns(Qris) }
    # Attribute for field qris
    attr_reader :qris
    sig { returns(RadarOptions) }
    # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
    attr_reader :radar_options
    sig { returns(Rechnung) }
    # Attribute for field rechnung
    attr_reader :rechnung
    sig { returns(RevolutPay) }
    # Attribute for field revolut_pay
    attr_reader :revolut_pay
    sig { returns(SamsungPay) }
    # Attribute for field samsung_pay
    attr_reader :samsung_pay
    sig { returns(SepaDebit) }
    # Attribute for field sepa_debit
    attr_reader :sepa_debit
    sig { returns(Shopeepay) }
    # Attribute for field shopeepay
    attr_reader :shopeepay
    sig { returns(Sofort) }
    # Attribute for field sofort
    attr_reader :sofort
    sig { returns(Swish) }
    # Attribute for field swish
    attr_reader :swish
    sig { returns(Twint) }
    # Attribute for field twint
    attr_reader :twint
    sig { returns(String) }
    # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
    attr_reader :type
    sig { returns(UsBankAccount) }
    # Attribute for field us_bank_account
    attr_reader :us_bank_account
    sig { returns(WechatPay) }
    # Attribute for field wechat_pay
    attr_reader :wechat_pay
    sig { returns(Zip) }
    # Attribute for field zip
    attr_reader :zip
  end
end