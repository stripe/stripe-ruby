# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # The `Charge` object represents a single attempt to move money into your Stripe account.
  # PaymentIntent confirmation is the most common way to create Charges, but transferring
  # money to a different Stripe account through Connect also creates Charges.
  # Some legacy payment flows create Charges directly, which is not recommended for new integrations.
  class Charge < APIResource
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
    class FraudDetails < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :stripe_report
      sig { returns(String) }
      attr_reader :user_report
    end
    class Level3 < Stripe::StripeObject
      class LineItem < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :discount_amount
        sig { returns(String) }
        attr_reader :product_code
        sig { returns(String) }
        attr_reader :product_description
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity
        sig { returns(T.nilable(Integer)) }
        attr_reader :tax_amount
        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_cost
      end
      sig { returns(String) }
      attr_reader :customer_reference
      sig { returns(T::Array[LineItem]) }
      attr_reader :line_items
      sig { returns(String) }
      attr_reader :merchant_reference
      sig { returns(String) }
      attr_reader :shipping_address_zip
      sig { returns(Integer) }
      attr_reader :shipping_amount
      sig { returns(String) }
      attr_reader :shipping_from_zip
    end
    class Outcome < Stripe::StripeObject
      class Rule < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :action
        sig { returns(String) }
        attr_reader :id
        sig { returns(String) }
        attr_reader :predicate
      end
      sig { returns(T.nilable(String)) }
      attr_reader :network_advice_code
      sig { returns(T.nilable(String)) }
      attr_reader :network_decline_code
      sig { returns(T.nilable(String)) }
      attr_reader :network_status
      sig { returns(T.nilable(String)) }
      attr_reader :reason
      sig { returns(String) }
      attr_reader :risk_level
      sig { returns(Integer) }
      attr_reader :risk_score
      sig { returns(T.any(String, Rule)) }
      attr_reader :rule
      sig { returns(T.nilable(String)) }
      attr_reader :seller_message
      sig { returns(String) }
      attr_reader :type
    end
    class PaymentMethodDetails < Stripe::StripeObject
      class AchCreditTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_number
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
        sig { returns(T.nilable(String)) }
        attr_reader :swift_code
      end
      class AchDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
      end
      class AcssDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :institution_number
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(String) }
        attr_reader :mandate
        sig { returns(T.nilable(String)) }
        attr_reader :transit_number
      end
      class Affirm < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class AfterpayClearpay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :order_id
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Alipay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :buyer_id
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject
        class Funding < Stripe::StripeObject
          class Card < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :brand
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_month
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_year
            sig { returns(T.nilable(String)) }
            attr_reader :funding
            sig { returns(T.nilable(String)) }
            attr_reader :last4
          end
          sig { returns(Card) }
          attr_reader :card
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        sig { returns(Funding) }
        attr_reader :funding
      end
      class AuBecsDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bsb_number
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(String) }
        attr_reader :mandate
      end
      class BacsDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(T.nilable(String)) }
        attr_reader :mandate
        sig { returns(T.nilable(String)) }
        attr_reader :sort_code
      end
      class Bancontact < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Blik < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
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
        class DecrementalAuthorization < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :status
        end
        class ExtendedAuthorization < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :status
        end
        class IncrementalAuthorization < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :status
        end
        class Installments < Stripe::StripeObject
          class Plan < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :count
            sig { returns(T.nilable(String)) }
            attr_reader :interval
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T.nilable(Plan)) }
          attr_reader :plan
        end
        class Multicapture < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :status
        end
        class NetworkToken < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :used
        end
        class Overcapture < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :maximum_amount_capturable
          sig { returns(String) }
          attr_reader :status
        end
        class ThreeDSecure < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :authentication_flow
          sig { returns(T.nilable(String)) }
          attr_reader :electronic_commerce_indicator
          sig { returns(T.nilable(String)) }
          attr_reader :exemption_indicator
          sig { returns(T::Boolean) }
          attr_reader :exemption_indicator_applied
          sig { returns(T.nilable(String)) }
          attr_reader :result
          sig { returns(T.nilable(String)) }
          attr_reader :result_reason
          sig { returns(T.nilable(String)) }
          attr_reader :transaction_id
          sig { returns(T.nilable(String)) }
          attr_reader :version
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
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_authorized
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        sig { returns(Integer) }
        attr_reader :capture_before
        sig { returns(T.nilable(Checks)) }
        attr_reader :checks
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(DecrementalAuthorization) }
        attr_reader :decremental_authorization
        sig { returns(T.nilable(String)) }
        attr_reader :description
        sig { returns(Integer) }
        attr_reader :exp_month
        sig { returns(Integer) }
        attr_reader :exp_year
        sig { returns(ExtendedAuthorization) }
        attr_reader :extended_authorization
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :funding
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        sig { returns(IncrementalAuthorization) }
        attr_reader :incremental_authorization
        sig { returns(T.nilable(Installments)) }
        attr_reader :installments
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(T.nilable(String)) }
        attr_reader :mandate
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :moto
        sig { returns(Multicapture) }
        attr_reader :multicapture
        sig { returns(T.nilable(String)) }
        attr_reader :network
        sig { returns(T.nilable(NetworkToken)) }
        attr_reader :network_token
        sig { returns(Overcapture) }
        attr_reader :overcapture
        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
        sig { returns(T.nilable(Wallet)) }
        attr_reader :wallet
      end
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
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Fpx < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        sig { returns(String) }
        attr_reader :bank
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Giropay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Gopay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class IdBankTransfer < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :account_number
        sig { returns(String) }
        attr_reader :bank
        sig { returns(String) }
        attr_reader :bank_code
        sig { returns(String) }
        attr_reader :bank_name
        sig { returns(String) }
        attr_reader :display_name
      end
      class Ideal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class InteracPresent < Stripe::StripeObject
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
        sig { returns(T.nilable(String)) }
        attr_reader :brand
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
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(T.nilable(String)) }
        attr_reader :network
        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales
        sig { returns(T.nilable(String)) }
        attr_reader :read_method
        sig { returns(T.nilable(Receipt)) }
        attr_reader :receipt
      end
      class KakaoPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class Klarna < Stripe::StripeObject
        class PayerDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :country
          end
          sig { returns(T.nilable(Address)) }
          attr_reader :address
        end
        sig { returns(T.nilable(PayerDetails)) }
        attr_reader :payer_details
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_category
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale
      end
      class Konbini < Stripe::StripeObject
        class Store < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :chain
        end
        sig { returns(T.nilable(Store)) }
        attr_reader :store
      end
      class KrCard < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end
      class Link < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :country
      end
      class MbWay < Stripe::StripeObject; end
      class Mobilepay < Stripe::StripeObject
        class Card < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :brand
          sig { returns(T.nilable(String)) }
          attr_reader :country
          sig { returns(T.nilable(Integer)) }
          attr_reader :exp_month
          sig { returns(T.nilable(Integer)) }
          attr_reader :exp_year
          sig { returns(T.nilable(String)) }
          attr_reader :last4
        end
        sig { returns(T.nilable(Card)) }
        attr_reader :card
      end
      class Multibanco < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :entity
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class NaverPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class Oxxo < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :number
      end
      class P24 < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Payco < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class Paynow < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Paypal < Stripe::StripeObject
        class SellerProtection < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :dispute_categories
          sig { returns(String) }
          attr_reader :status
        end
        class Shipping < Stripe::StripeObject
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
        class VerifiedAddress < Stripe::StripeObject
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
        sig { returns(T.nilable(String)) }
        attr_reader :payer_email
        sig { returns(T.nilable(String)) }
        attr_reader :payer_id
        sig { returns(T.nilable(String)) }
        attr_reader :payer_name
        sig { returns(T.nilable(SellerProtection)) }
        attr_reader :seller_protection
        sig { returns(T.nilable(Shipping)) }
        attr_reader :shipping
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
        sig { returns(T.nilable(VerifiedAddress)) }
        attr_reader :verified_address
        sig { returns(T.nilable(String)) }
        attr_reader :verified_email
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Payto < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bsb_number
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(String) }
        attr_reader :mandate
        sig { returns(T.nilable(String)) }
        attr_reader :pay_id
      end
      class Pix < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_transaction_id
      end
      class Promptpay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Qris < Stripe::StripeObject; end
      class Rechnung < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject
        class Funding < Stripe::StripeObject
          class Card < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :brand
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_month
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_year
            sig { returns(T.nilable(String)) }
            attr_reader :funding
            sig { returns(T.nilable(String)) }
            attr_reader :last4
          end
          sig { returns(Card) }
          attr_reader :card
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        sig { returns(Funding) }
        attr_reader :funding
      end
      class SamsungPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class SepaCreditTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(String)) }
        attr_reader :iban
      end
      class SepaDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        sig { returns(T.nilable(String)) }
        attr_reader :branch_code
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(T.nilable(String)) }
        attr_reader :mandate
      end
      class Shopeepay < Stripe::StripeObject; end
      class Sofort < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class StripeAccount < Stripe::StripeObject; end
      class Swish < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :payment_reference
        sig { returns(T.nilable(String)) }
        attr_reader :verified_phone_last4
      end
      class Twint < Stripe::StripeObject; end
      class UsBankAccount < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        sig { returns(T.nilable(String)) }
        attr_reader :account_type
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(T.any(String, Stripe::Mandate)) }
        attr_reader :mandate
        sig { returns(T.nilable(String)) }
        attr_reader :payment_reference
        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
      end
      class Wechat < Stripe::StripeObject; end
      class WechatPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Zip < Stripe::StripeObject; end
      sig { returns(AchCreditTransfer) }
      attr_reader :ach_credit_transfer
      sig { returns(AchDebit) }
      attr_reader :ach_debit
      sig { returns(AcssDebit) }
      attr_reader :acss_debit
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
      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      sig { returns(Bancontact) }
      attr_reader :bancontact
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
      sig { returns(SepaCreditTransfer) }
      attr_reader :sepa_credit_transfer
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      sig { returns(Shopeepay) }
      attr_reader :shopeepay
      sig { returns(Sofort) }
      attr_reader :sofort
      sig { returns(StripeAccount) }
      attr_reader :stripe_account
      sig { returns(Swish) }
      attr_reader :swish
      sig { returns(Twint) }
      attr_reader :twint
      sig { returns(String) }
      attr_reader :type
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
      sig { returns(Wechat) }
      attr_reader :wechat
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      sig { returns(Zip) }
      attr_reader :zip
    end
    class RadarOptions < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :session
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
      sig { returns(T.nilable(String)) }
      attr_reader :carrier
      sig { returns(String) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end
    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    sig { returns(Integer) }
    # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    attr_reader :amount
    sig { returns(Integer) }
    # Amount in cents (or local equivalent) captured (can be less than the amount attribute on the charge if a partial capture was made).
    attr_reader :amount_captured
    sig { returns(Integer) }
    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the charge if a partial refund was issued).
    attr_reader :amount_refunded
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect application that created the charge.
    attr_reader :application
    sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
    # The application fee (if any) for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collect-fees) for details.
    attr_reader :application_fee
    sig { returns(T.nilable(Integer)) }
    # The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collect-fees) for details.
    attr_reader :application_fee_amount
    sig { returns(String) }
    # Authorization code on the charge.
    attr_reader :authorization_code
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
    attr_reader :balance_transaction
    sig { returns(BillingDetails) }
    # Attribute for field billing_details
    attr_reader :billing_details
    sig { returns(T.nilable(String)) }
    # The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. This value only exists for card payments.
    attr_reader :calculated_statement_descriptor
    sig { returns(T::Boolean) }
    # If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
    attr_reader :captured
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # ID of the customer this charge is for if one exists.
    attr_reader :customer
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T::Boolean) }
    # Whether the charge has been disputed.
    attr_reader :disputed
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # ID of the balance transaction that describes the reversal of the balance on your account due to payment failure.
    attr_reader :failure_balance_transaction
    sig { returns(T.nilable(String)) }
    # Error code explaining reason for charge failure if available (see [the errors section](https://stripe.com/docs/error-codes) for a list of codes).
    attr_reader :failure_code
    sig { returns(T.nilable(String)) }
    # Message to user further explaining reason for charge failure if available.
    attr_reader :failure_message
    sig { returns(T.nilable(FraudDetails)) }
    # Information on fraud assessments for the charge.
    attr_reader :fraud_details
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    # ID of the invoice this charge is for if one exists.
    attr_reader :invoice
    sig { returns(Level3) }
    # Attribute for field level3
    attr_reader :level3
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
    attr_reader :on_behalf_of
    sig { returns(T.nilable(Outcome)) }
    # Details about whether the payment was accepted, and why. See [understanding declines](https://stripe.com/docs/declines) for details.
    attr_reader :outcome
    sig { returns(T::Boolean) }
    # `true` if the charge succeeded, or was successfully authorized for later capture.
    attr_reader :paid
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    # ID of the PaymentIntent associated with this charge, if one exists.
    attr_reader :payment_intent
    sig { returns(T.nilable(String)) }
    # ID of the payment method used in this charge.
    attr_reader :payment_method
    sig { returns(T.nilable(PaymentMethodDetails)) }
    # Details about the payment method at the time of the transaction.
    attr_reader :payment_method_details
    sig { returns(RadarOptions) }
    # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
    attr_reader :radar_options
    sig { returns(T.nilable(String)) }
    # This is the email address that the receipt for this charge was sent to.
    attr_reader :receipt_email
    sig { returns(T.nilable(String)) }
    # This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent.
    attr_reader :receipt_number
    sig { returns(T.nilable(String)) }
    # This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt.
    attr_reader :receipt_url
    sig { returns(T::Boolean) }
    # Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
    attr_reader :refunded
    sig { returns(T.nilable(Stripe::ListObject)) }
    # A list of refunds that have been applied to the charge.
    attr_reader :refunds
    sig { returns(T.nilable(T.any(String, Stripe::Review))) }
    # ID of the review associated with this charge if one exists.
    attr_reader :review
    sig { returns(T.nilable(Shipping)) }
    # Shipping information for the charge.
    attr_reader :shipping
    sig {
      returns(T.nilable(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)))
     }
    # This is a legacy field that will be removed in the future. It contains the Source, Card, or BankAccount object used for the charge. For details about the payment method used for this charge, refer to `payment_method` or `payment_method_details` instead.
    attr_reader :source
    sig { returns(T.nilable(T.any(String, Stripe::Transfer))) }
    # The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
    attr_reader :source_transfer
    sig { returns(T.nilable(String)) }
    # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
    attr_reader :statement_descriptor
    sig { returns(T.nilable(String)) }
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
    attr_reader :statement_descriptor_suffix
    sig { returns(String) }
    # The status of the payment is either `succeeded`, `pending`, or `failed`.
    attr_reader :status
    sig { returns(T.any(String, Stripe::Transfer)) }
    # ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
    attr_reader :transfer
    sig { returns(T.nilable(TransferData)) }
    # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
    attr_reader :transfer_data
    sig { returns(T.nilable(String)) }
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    attr_reader :transfer_group
  end
end