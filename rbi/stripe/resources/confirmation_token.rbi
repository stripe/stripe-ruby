# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # ConfirmationTokens help transport client side data collected by Stripe JS over
  # to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
  # is successful, values present on the ConfirmationToken are written onto the Intent.
  #
  # To learn more about how to use ConfirmationToken, visit the related guides:
  # - [Finalize payments on the server](https://stripe.com/docs/payments/finalize-payments-on-the-server)
  # - [Build two-step confirmation](https://stripe.com/docs/payments/build-a-two-step-confirmation).
  class ConfirmationToken < APIResource
    class MandateData < Stripe::StripeObject
      class CustomerAcceptance < Stripe::StripeObject
        class Online < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address
          sig { returns(T.nilable(String)) }
          attr_reader :user_agent
        end
        sig { returns(T.nilable(Online)) }
        attr_reader :online
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(CustomerAcceptance) }
      attr_reader :customer_acceptance
    end
    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :cvc_token
      end
      sig { returns(T.nilable(Card)) }
      attr_reader :card
    end
    class PaymentMethodPreview < Stripe::StripeObject
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
      attr_reader :acss_debit
      sig { returns(Affirm) }
      attr_reader :affirm
      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay
      sig { returns(Alipay) }
      attr_reader :alipay
      sig { returns(String) }
      attr_reader :allow_redisplay
      sig { returns(Alma) }
      attr_reader :alma
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      sig { returns(Bancontact) }
      attr_reader :bancontact
      sig { returns(BillingDetails) }
      attr_reader :billing_details
      sig { returns(Blik) }
      attr_reader :blik
      sig { returns(Boleto) }
      attr_reader :boleto
      sig { returns(Card) }
      attr_reader :card
      sig { returns(CardPresent) }
      attr_reader :card_present
      sig { returns(Cashapp) }
      attr_reader :cashapp
      sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
      attr_reader :customer
      sig { returns(CustomerBalance) }
      attr_reader :customer_balance
      sig { returns(Eps) }
      attr_reader :eps
      sig { returns(Fpx) }
      attr_reader :fpx
      sig { returns(Giropay) }
      attr_reader :giropay
      sig { returns(Gopay) }
      attr_reader :gopay
      sig { returns(Grabpay) }
      attr_reader :grabpay
      sig { returns(IdBankTransfer) }
      attr_reader :id_bank_transfer
      sig { returns(Ideal) }
      attr_reader :ideal
      sig { returns(InteracPresent) }
      attr_reader :interac_present
      sig { returns(KakaoPay) }
      attr_reader :kakao_pay
      sig { returns(Klarna) }
      attr_reader :klarna
      sig { returns(Konbini) }
      attr_reader :konbini
      sig { returns(KrCard) }
      attr_reader :kr_card
      sig { returns(Link) }
      attr_reader :link
      sig { returns(MbWay) }
      attr_reader :mb_way
      sig { returns(Mobilepay) }
      attr_reader :mobilepay
      sig { returns(Multibanco) }
      attr_reader :multibanco
      sig { returns(NaverPay) }
      attr_reader :naver_pay
      sig { returns(Oxxo) }
      attr_reader :oxxo
      sig { returns(P24) }
      attr_reader :p24
      sig { returns(Payco) }
      attr_reader :payco
      sig { returns(Paynow) }
      attr_reader :paynow
      sig { returns(Paypal) }
      attr_reader :paypal
      sig { returns(Payto) }
      attr_reader :payto
      sig { returns(Pix) }
      attr_reader :pix
      sig { returns(Promptpay) }
      attr_reader :promptpay
      sig { returns(Qris) }
      attr_reader :qris
      sig { returns(Rechnung) }
      attr_reader :rechnung
      sig { returns(RevolutPay) }
      attr_reader :revolut_pay
      sig { returns(SamsungPay) }
      attr_reader :samsung_pay
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      sig { returns(Shopeepay) }
      attr_reader :shopeepay
      sig { returns(Sofort) }
      attr_reader :sofort
      sig { returns(Swish) }
      attr_reader :swish
      sig { returns(Twint) }
      attr_reader :twint
      sig { returns(String) }
      attr_reader :type
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      sig { returns(Zip) }
      attr_reader :zip
    end
    class Shipping < Stripe::StripeObject
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
      sig { returns(Address) }
      attr_reader :address
      sig { returns(String) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(Integer)) }
    # Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent.
    attr_reader :expires_at
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(MandateData)) }
    # Data used for generating a Mandate.
    attr_reader :mandate_data
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(String)) }
    # ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    attr_reader :payment_intent
    sig { returns(T.nilable(PaymentMethodOptions)) }
    # Payment-method-specific configuration for this ConfirmationToken.
    attr_reader :payment_method_options
    sig { returns(T.nilable(PaymentMethodPreview)) }
    # Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken.
    attr_reader :payment_method_preview
    sig { returns(T.nilable(String)) }
    # Return URL used to confirm the Intent.
    attr_reader :return_url
    sig { returns(T.nilable(String)) }
    # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
    #
    # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
    attr_reader :setup_future_usage
    sig { returns(T.nilable(String)) }
    # ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    attr_reader :setup_intent
    sig { returns(T.nilable(Shipping)) }
    # Shipping information collected on this ConfirmationToken.
    attr_reader :shipping
    sig { returns(T::Boolean) }
    # Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
    attr_reader :use_stripe_sdk
  end
end