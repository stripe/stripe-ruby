# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentMethodService < StripeService
    class ListParams < Stripe::RequestParams
      # The ID of the customer whose PaymentMethods will be retrieved.
      sig { returns(String) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      # An optional filter on the list, based on the object `type` field. Without the filter, the list includes all current and future payment method types. If your integration expects only one type of payment method in the response, make sure to provide a type value in the request.
      sig { returns(String) }
      attr_accessor :type
      sig {
        params(customer: String, ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String, type: String).void
       }
      def initialize(
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        type: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        # Customer's bank account number.
        sig { returns(String) }
        attr_accessor :account_number
        # Institution number of the customer's bank.
        sig { returns(String) }
        attr_accessor :institution_number
        # Transit number of the customer's bank.
        sig { returns(String) }
        attr_accessor :transit_number
        sig {
          params(account_number: String, institution_number: String, transit_number: String).void
         }
        def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
      end
      class Affirm < Stripe::RequestParams

      end
      class AfterpayClearpay < Stripe::RequestParams

      end
      class Alipay < Stripe::RequestParams

      end
      class Alma < Stripe::RequestParams

      end
      class AmazonPay < Stripe::RequestParams

      end
      class AuBecsDebit < Stripe::RequestParams
        # The account number for the bank account.
        sig { returns(String) }
        attr_accessor :account_number
        # Bank-State-Branch number of the bank account.
        sig { returns(String) }
        attr_accessor :bsb_number
        sig { params(account_number: String, bsb_number: String).void }
        def initialize(account_number: nil, bsb_number: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        # Account number of the bank account that the funds will be debited from.
        sig { returns(String) }
        attr_accessor :account_number
        # Sort code of the bank account. (e.g., `10-20-30`)
        sig { returns(String) }
        attr_accessor :sort_code
        sig { params(account_number: String, sort_code: String).void }
        def initialize(account_number: nil, sort_code: nil); end
      end
      class Bancontact < Stripe::RequestParams

      end
      class BillingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # Billing address.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodService::CreateParams::BillingDetails::Address))
         }
        attr_accessor :address
        # Email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Full name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Billing phone number (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: T.nilable(::Stripe::PaymentMethodService::CreateParams::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Blik < Stripe::RequestParams

      end
      class Boleto < Stripe::RequestParams
        # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
        sig { returns(String) }
        attr_accessor :tax_id
        sig { params(tax_id: String).void }
        def initialize(tax_id: nil); end
      end
      class Card < Stripe::RequestParams
        class Networks < Stripe::RequestParams
          # The customer's preferred card network for co-branded cards. Supports `cartes_bancaires`, `mastercard`, or `visa`. Selection of a network that does not apply to the card will be stored as `invalid_preference` on the card.
          sig { returns(String) }
          attr_accessor :preferred
          sig { params(preferred: String).void }
          def initialize(preferred: nil); end
        end
        # The card's CVC. It is highly recommended to always include this value.
        sig { returns(String) }
        attr_accessor :cvc
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        attr_accessor :exp_month
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        attr_accessor :exp_year
        # Contains information about card networks used to process the payment.
        sig { returns(::Stripe::PaymentMethodService::CreateParams::Card::Networks) }
        attr_accessor :networks
        # The card number, as a string without any separators.
        sig { returns(String) }
        attr_accessor :number
        # For backwards compatibility, you can alternatively provide a Stripe token (e.g., for Apple Pay, Amex Express Checkout, or legacy Checkout) into the card hash with format card: {token: "tok_visa"}.
        sig { returns(String) }
        attr_accessor :token
        sig {
          params(cvc: String, exp_month: Integer, exp_year: Integer, networks: ::Stripe::PaymentMethodService::CreateParams::Card::Networks, number: String, token: String).void
         }
        def initialize(
          cvc: nil,
          exp_month: nil,
          exp_year: nil,
          networks: nil,
          number: nil,
          token: nil
        ); end
      end
      class Cashapp < Stripe::RequestParams

      end
      class CustomerBalance < Stripe::RequestParams

      end
      class Eps < Stripe::RequestParams
        # The customer's bank.
        sig { returns(String) }
        attr_accessor :bank
        sig { params(bank: String).void }
        def initialize(bank: nil); end
      end
      class Fpx < Stripe::RequestParams
        # Account holder type for FPX transaction
        sig { returns(String) }
        attr_accessor :account_holder_type
        # The customer's bank.
        sig { returns(String) }
        attr_accessor :bank
        sig { params(account_holder_type: String, bank: String).void }
        def initialize(account_holder_type: nil, bank: nil); end
      end
      class Giropay < Stripe::RequestParams

      end
      class Gopay < Stripe::RequestParams

      end
      class Grabpay < Stripe::RequestParams

      end
      class IdBankTransfer < Stripe::RequestParams
        # Bank where the account is held.
        sig { returns(String) }
        attr_accessor :bank
        sig { params(bank: String).void }
        def initialize(bank: nil); end
      end
      class Ideal < Stripe::RequestParams
        # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
        sig { returns(String) }
        attr_accessor :bank
        sig { params(bank: String).void }
        def initialize(bank: nil); end
      end
      class InteracPresent < Stripe::RequestParams

      end
      class KakaoPay < Stripe::RequestParams

      end
      class Klarna < Stripe::RequestParams
        class Dob < Stripe::RequestParams
          # The day of birth, between 1 and 31.
          sig { returns(Integer) }
          attr_accessor :day
          # The month of birth, between 1 and 12.
          sig { returns(Integer) }
          attr_accessor :month
          # The four-digit year of birth.
          sig { returns(Integer) }
          attr_accessor :year
          sig { params(day: Integer, month: Integer, year: Integer).void }
          def initialize(day: nil, month: nil, year: nil); end
        end
        # Customer's date of birth
        sig { returns(::Stripe::PaymentMethodService::CreateParams::Klarna::Dob) }
        attr_accessor :dob
        sig { params(dob: ::Stripe::PaymentMethodService::CreateParams::Klarna::Dob).void }
        def initialize(dob: nil); end
      end
      class Konbini < Stripe::RequestParams

      end
      class KrCard < Stripe::RequestParams

      end
      class Link < Stripe::RequestParams

      end
      class MbWay < Stripe::RequestParams

      end
      class Mobilepay < Stripe::RequestParams

      end
      class Multibanco < Stripe::RequestParams

      end
      class NaverPay < Stripe::RequestParams
        # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
        sig { returns(String) }
        attr_accessor :funding
        sig { params(funding: String).void }
        def initialize(funding: nil); end
      end
      class Oxxo < Stripe::RequestParams

      end
      class P24 < Stripe::RequestParams
        # The customer's bank.
        sig { returns(String) }
        attr_accessor :bank
        sig { params(bank: String).void }
        def initialize(bank: nil); end
      end
      class PayByBank < Stripe::RequestParams

      end
      class Payco < Stripe::RequestParams

      end
      class Paynow < Stripe::RequestParams

      end
      class Paypal < Stripe::RequestParams

      end
      class Payto < Stripe::RequestParams
        # The account number for the bank account.
        sig { returns(String) }
        attr_accessor :account_number
        # Bank-State-Branch number of the bank account.
        sig { returns(String) }
        attr_accessor :bsb_number
        # The PayID alias for the bank account.
        sig { returns(String) }
        attr_accessor :pay_id
        sig { params(account_number: String, bsb_number: String, pay_id: String).void }
        def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
      end
      class Pix < Stripe::RequestParams

      end
      class Promptpay < Stripe::RequestParams

      end
      class Qris < Stripe::RequestParams

      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(String) }
        attr_accessor :session
        sig { params(session: String).void }
        def initialize(session: nil); end
      end
      class Rechnung < Stripe::RequestParams
        class Dob < Stripe::RequestParams
          # The day of birth, between 1 and 31.
          sig { returns(Integer) }
          attr_accessor :day
          # The month of birth, between 1 and 12.
          sig { returns(Integer) }
          attr_accessor :month
          # The four-digit year of birth.
          sig { returns(Integer) }
          attr_accessor :year
          sig { params(day: Integer, month: Integer, year: Integer).void }
          def initialize(day: nil, month: nil, year: nil); end
        end
        # Customer's date of birth
        sig { returns(::Stripe::PaymentMethodService::CreateParams::Rechnung::Dob) }
        attr_accessor :dob
        sig { params(dob: ::Stripe::PaymentMethodService::CreateParams::Rechnung::Dob).void }
        def initialize(dob: nil); end
      end
      class RevolutPay < Stripe::RequestParams

      end
      class SamsungPay < Stripe::RequestParams

      end
      class SepaDebit < Stripe::RequestParams
        # IBAN of the bank account.
        sig { returns(String) }
        attr_accessor :iban
        sig { params(iban: String).void }
        def initialize(iban: nil); end
      end
      class Shopeepay < Stripe::RequestParams

      end
      class Sofort < Stripe::RequestParams
        # Two-letter ISO code representing the country the bank account is located in.
        sig { returns(String) }
        attr_accessor :country
        sig { params(country: String).void }
        def initialize(country: nil); end
      end
      class Swish < Stripe::RequestParams

      end
      class Twint < Stripe::RequestParams

      end
      class UsBankAccount < Stripe::RequestParams
        # Account holder type: individual or company.
        sig { returns(String) }
        attr_accessor :account_holder_type
        # Account number of the bank account.
        sig { returns(String) }
        attr_accessor :account_number
        # Account type: checkings or savings. Defaults to checking if omitted.
        sig { returns(String) }
        attr_accessor :account_type
        # The ID of a Financial Connections Account to use as a payment method.
        sig { returns(String) }
        attr_accessor :financial_connections_account
        # Routing number of the bank account.
        sig { returns(String) }
        attr_accessor :routing_number
        sig {
          params(account_holder_type: String, account_number: String, account_type: String, financial_connections_account: String, routing_number: String).void
         }
        def initialize(
          account_holder_type: nil,
          account_number: nil,
          account_type: nil,
          financial_connections_account: nil,
          routing_number: nil
        ); end
      end
      class WechatPay < Stripe::RequestParams

      end
      class Zip < Stripe::RequestParams

      end
      # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::AcssDebit) }
      attr_accessor :acss_debit
      # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Affirm) }
      attr_accessor :affirm
      # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::AfterpayClearpay) }
      attr_accessor :afterpay_clearpay
      # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Alipay) }
      attr_accessor :alipay
      # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
      sig { returns(String) }
      attr_accessor :allow_redisplay
      # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Alma) }
      attr_accessor :alma
      # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::AmazonPay) }
      attr_accessor :amazon_pay
      # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::AuBecsDebit) }
      attr_accessor :au_becs_debit
      # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::BacsDebit) }
      attr_accessor :bacs_debit
      # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Bancontact) }
      attr_accessor :bancontact
      # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::BillingDetails) }
      attr_accessor :billing_details
      # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Blik) }
      attr_accessor :blik
      # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Boleto) }
      attr_accessor :boleto
      # If this is a `card` PaymentMethod, this hash contains the user's card details. For backwards compatibility, you can alternatively provide a Stripe token (e.g., for Apple Pay, Amex Express Checkout, or legacy Checkout) into the card hash with format `card: {token: "tok_visa"}`. When providing a card number, you must meet the requirements for [PCI compliance](https://stripe.com/docs/security#validating-pci-compliance). We strongly recommend using Stripe.js instead of interacting with this API directly.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Card) }
      attr_accessor :card
      # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Cashapp) }
      attr_accessor :cashapp
      # The `Customer` to whom the original PaymentMethod is attached.
      sig { returns(String) }
      attr_accessor :customer
      # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::CustomerBalance) }
      attr_accessor :customer_balance
      # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Eps) }
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Fpx) }
      attr_accessor :fpx
      # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Giropay) }
      attr_accessor :giropay
      # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Gopay) }
      attr_accessor :gopay
      # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Grabpay) }
      attr_accessor :grabpay
      # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::IdBankTransfer) }
      attr_accessor :id_bank_transfer
      # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Ideal) }
      attr_accessor :ideal
      # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::InteracPresent) }
      attr_accessor :interac_present
      # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::KakaoPay) }
      attr_accessor :kakao_pay
      # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Klarna) }
      attr_accessor :klarna
      # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Konbini) }
      attr_accessor :konbini
      # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::KrCard) }
      attr_accessor :kr_card
      # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Link) }
      attr_accessor :link
      # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::MbWay) }
      attr_accessor :mb_way
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Mobilepay) }
      attr_accessor :mobilepay
      # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Multibanco) }
      attr_accessor :multibanco
      # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::NaverPay) }
      attr_accessor :naver_pay
      # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Oxxo) }
      attr_accessor :oxxo
      # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::P24) }
      attr_accessor :p24
      # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::PayByBank) }
      attr_accessor :pay_by_bank
      # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Payco) }
      attr_accessor :payco
      # The PaymentMethod to share.
      sig { returns(String) }
      attr_accessor :payment_method
      # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Paynow) }
      attr_accessor :paynow
      # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Paypal) }
      attr_accessor :paypal
      # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Payto) }
      attr_accessor :payto
      # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Pix) }
      attr_accessor :pix
      # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Promptpay) }
      attr_accessor :promptpay
      # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Qris) }
      attr_accessor :qris
      # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::RadarOptions) }
      attr_accessor :radar_options
      # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Rechnung) }
      attr_accessor :rechnung
      # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::RevolutPay) }
      attr_accessor :revolut_pay
      # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::SamsungPay) }
      attr_accessor :samsung_pay
      # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::SepaDebit) }
      attr_accessor :sepa_debit
      # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Shopeepay) }
      attr_accessor :shopeepay
      # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Sofort) }
      attr_accessor :sofort
      # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Swish) }
      attr_accessor :swish
      # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Twint) }
      attr_accessor :twint
      # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
      sig { returns(String) }
      attr_accessor :type
      # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::UsBankAccount) }
      attr_accessor :us_bank_account
      # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::WechatPay) }
      attr_accessor :wechat_pay
      # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
      sig { returns(::Stripe::PaymentMethodService::CreateParams::Zip) }
      attr_accessor :zip
      sig {
        params(acss_debit: ::Stripe::PaymentMethodService::CreateParams::AcssDebit, affirm: ::Stripe::PaymentMethodService::CreateParams::Affirm, afterpay_clearpay: ::Stripe::PaymentMethodService::CreateParams::AfterpayClearpay, alipay: ::Stripe::PaymentMethodService::CreateParams::Alipay, allow_redisplay: String, alma: ::Stripe::PaymentMethodService::CreateParams::Alma, amazon_pay: ::Stripe::PaymentMethodService::CreateParams::AmazonPay, au_becs_debit: ::Stripe::PaymentMethodService::CreateParams::AuBecsDebit, bacs_debit: ::Stripe::PaymentMethodService::CreateParams::BacsDebit, bancontact: ::Stripe::PaymentMethodService::CreateParams::Bancontact, billing_details: ::Stripe::PaymentMethodService::CreateParams::BillingDetails, blik: ::Stripe::PaymentMethodService::CreateParams::Blik, boleto: ::Stripe::PaymentMethodService::CreateParams::Boleto, card: ::Stripe::PaymentMethodService::CreateParams::Card, cashapp: ::Stripe::PaymentMethodService::CreateParams::Cashapp, customer: String, customer_balance: ::Stripe::PaymentMethodService::CreateParams::CustomerBalance, eps: ::Stripe::PaymentMethodService::CreateParams::Eps, expand: T::Array[String], fpx: ::Stripe::PaymentMethodService::CreateParams::Fpx, giropay: ::Stripe::PaymentMethodService::CreateParams::Giropay, gopay: ::Stripe::PaymentMethodService::CreateParams::Gopay, grabpay: ::Stripe::PaymentMethodService::CreateParams::Grabpay, id_bank_transfer: ::Stripe::PaymentMethodService::CreateParams::IdBankTransfer, ideal: ::Stripe::PaymentMethodService::CreateParams::Ideal, interac_present: ::Stripe::PaymentMethodService::CreateParams::InteracPresent, kakao_pay: ::Stripe::PaymentMethodService::CreateParams::KakaoPay, klarna: ::Stripe::PaymentMethodService::CreateParams::Klarna, konbini: ::Stripe::PaymentMethodService::CreateParams::Konbini, kr_card: ::Stripe::PaymentMethodService::CreateParams::KrCard, link: ::Stripe::PaymentMethodService::CreateParams::Link, mb_way: ::Stripe::PaymentMethodService::CreateParams::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::PaymentMethodService::CreateParams::Mobilepay, multibanco: ::Stripe::PaymentMethodService::CreateParams::Multibanco, naver_pay: ::Stripe::PaymentMethodService::CreateParams::NaverPay, oxxo: ::Stripe::PaymentMethodService::CreateParams::Oxxo, p24: ::Stripe::PaymentMethodService::CreateParams::P24, pay_by_bank: ::Stripe::PaymentMethodService::CreateParams::PayByBank, payco: ::Stripe::PaymentMethodService::CreateParams::Payco, payment_method: String, paynow: ::Stripe::PaymentMethodService::CreateParams::Paynow, paypal: ::Stripe::PaymentMethodService::CreateParams::Paypal, payto: ::Stripe::PaymentMethodService::CreateParams::Payto, pix: ::Stripe::PaymentMethodService::CreateParams::Pix, promptpay: ::Stripe::PaymentMethodService::CreateParams::Promptpay, qris: ::Stripe::PaymentMethodService::CreateParams::Qris, radar_options: ::Stripe::PaymentMethodService::CreateParams::RadarOptions, rechnung: ::Stripe::PaymentMethodService::CreateParams::Rechnung, revolut_pay: ::Stripe::PaymentMethodService::CreateParams::RevolutPay, samsung_pay: ::Stripe::PaymentMethodService::CreateParams::SamsungPay, sepa_debit: ::Stripe::PaymentMethodService::CreateParams::SepaDebit, shopeepay: ::Stripe::PaymentMethodService::CreateParams::Shopeepay, sofort: ::Stripe::PaymentMethodService::CreateParams::Sofort, swish: ::Stripe::PaymentMethodService::CreateParams::Swish, twint: ::Stripe::PaymentMethodService::CreateParams::Twint, type: String, us_bank_account: ::Stripe::PaymentMethodService::CreateParams::UsBankAccount, wechat_pay: ::Stripe::PaymentMethodService::CreateParams::WechatPay, zip: ::Stripe::PaymentMethodService::CreateParams::Zip).void
       }
      def initialize(
        acss_debit: nil,
        affirm: nil,
        afterpay_clearpay: nil,
        alipay: nil,
        allow_redisplay: nil,
        alma: nil,
        amazon_pay: nil,
        au_becs_debit: nil,
        bacs_debit: nil,
        bancontact: nil,
        billing_details: nil,
        blik: nil,
        boleto: nil,
        card: nil,
        cashapp: nil,
        customer: nil,
        customer_balance: nil,
        eps: nil,
        expand: nil,
        fpx: nil,
        giropay: nil,
        gopay: nil,
        grabpay: nil,
        id_bank_transfer: nil,
        ideal: nil,
        interac_present: nil,
        kakao_pay: nil,
        klarna: nil,
        konbini: nil,
        kr_card: nil,
        link: nil,
        mb_way: nil,
        metadata: nil,
        mobilepay: nil,
        multibanco: nil,
        naver_pay: nil,
        oxxo: nil,
        p24: nil,
        pay_by_bank: nil,
        payco: nil,
        payment_method: nil,
        paynow: nil,
        paypal: nil,
        payto: nil,
        pix: nil,
        promptpay: nil,
        qris: nil,
        radar_options: nil,
        rechnung: nil,
        revolut_pay: nil,
        samsung_pay: nil,
        sepa_debit: nil,
        shopeepay: nil,
        sofort: nil,
        swish: nil,
        twint: nil,
        type: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class BillingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # Billing address.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodService::UpdateParams::BillingDetails::Address))
         }
        attr_accessor :address
        # Email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Full name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Billing phone number (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: T.nilable(::Stripe::PaymentMethodService::UpdateParams::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Card < Stripe::RequestParams
        class Networks < Stripe::RequestParams
          # The customer's preferred card network for co-branded cards. Supports `cartes_bancaires`, `mastercard`, or `visa`. Selection of a network that does not apply to the card will be stored as `invalid_preference` on the card.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred
          sig { params(preferred: T.nilable(String)).void }
          def initialize(preferred: nil); end
        end
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        attr_accessor :exp_month
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        attr_accessor :exp_year
        # Contains information about card networks used to process the payment.
        sig { returns(::Stripe::PaymentMethodService::UpdateParams::Card::Networks) }
        attr_accessor :networks
        sig {
          params(exp_month: Integer, exp_year: Integer, networks: ::Stripe::PaymentMethodService::UpdateParams::Card::Networks).void
         }
        def initialize(exp_month: nil, exp_year: nil, networks: nil); end
      end
      class Link < Stripe::RequestParams

      end
      class NaverPay < Stripe::RequestParams
        # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
        sig { returns(String) }
        attr_accessor :funding
        sig { params(funding: String).void }
        def initialize(funding: nil); end
      end
      class PayByBank < Stripe::RequestParams

      end
      class Payto < Stripe::RequestParams
        # The account number for the bank account.
        sig { returns(String) }
        attr_accessor :account_number
        # Bank-State-Branch number of the bank account.
        sig { returns(String) }
        attr_accessor :bsb_number
        # The PayID alias for the bank account.
        sig { returns(String) }
        attr_accessor :pay_id
        sig { params(account_number: String, bsb_number: String, pay_id: String).void }
        def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        # Bank account holder type.
        sig { returns(String) }
        attr_accessor :account_holder_type
        # Bank account type.
        sig { returns(String) }
        attr_accessor :account_type
        sig { params(account_holder_type: String, account_type: String).void }
        def initialize(account_holder_type: nil, account_type: nil); end
      end
      # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
      sig { returns(String) }
      attr_accessor :allow_redisplay
      # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
      sig { returns(::Stripe::PaymentMethodService::UpdateParams::BillingDetails) }
      attr_accessor :billing_details
      # If this is a `card` PaymentMethod, this hash contains the user's card details.
      sig { returns(::Stripe::PaymentMethodService::UpdateParams::Card) }
      attr_accessor :card
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
      sig { returns(::Stripe::PaymentMethodService::UpdateParams::Link) }
      attr_accessor :link
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
      sig { returns(::Stripe::PaymentMethodService::UpdateParams::NaverPay) }
      attr_accessor :naver_pay
      # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
      sig { returns(::Stripe::PaymentMethodService::UpdateParams::PayByBank) }
      attr_accessor :pay_by_bank
      # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
      sig { returns(::Stripe::PaymentMethodService::UpdateParams::Payto) }
      attr_accessor :payto
      # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
      sig { returns(::Stripe::PaymentMethodService::UpdateParams::UsBankAccount) }
      attr_accessor :us_bank_account
      sig {
        params(allow_redisplay: String, billing_details: ::Stripe::PaymentMethodService::UpdateParams::BillingDetails, card: ::Stripe::PaymentMethodService::UpdateParams::Card, expand: T::Array[String], link: ::Stripe::PaymentMethodService::UpdateParams::Link, metadata: T.nilable(T::Hash[String, String]), naver_pay: ::Stripe::PaymentMethodService::UpdateParams::NaverPay, pay_by_bank: ::Stripe::PaymentMethodService::UpdateParams::PayByBank, payto: ::Stripe::PaymentMethodService::UpdateParams::Payto, us_bank_account: ::Stripe::PaymentMethodService::UpdateParams::UsBankAccount).void
       }
      def initialize(
        allow_redisplay: nil,
        billing_details: nil,
        card: nil,
        expand: nil,
        link: nil,
        metadata: nil,
        naver_pay: nil,
        pay_by_bank: nil,
        payto: nil,
        us_bank_account: nil
      ); end
    end
    class AttachParams < Stripe::RequestParams
      # The ID of the customer to which to attach the PaymentMethod.
      sig { returns(String) }
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(customer: String, expand: T::Array[String]).void }
      def initialize(customer: nil, expand: nil); end
    end
    class DetachParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    # Attaches a PaymentMethod object to a Customer.
    #
    # To attach a new PaymentMethod to a customer for future payments, we recommend you use a [SetupIntent](https://stripe.com/docs/api/setup_intents)
    # or a PaymentIntent with [setup_future_usage](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-setup_future_usage).
    # These approaches will perform any necessary steps to set up the PaymentMethod for future payments. Using the /v1/payment_methods/:id/attach
    # endpoint without first using a SetupIntent or PaymentIntent with setup_future_usage does not optimize the PaymentMethod for
    # future use, which makes later declines and payment friction more likely.
    # See [Optimizing cards for future payments](https://stripe.com/docs/payments/payment-intents#future-usage) for more information about setting up
    # future payments.
    #
    # To use this PaymentMethod as the default for invoice or subscription payments,
    # set [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method),
    # on the Customer to the PaymentMethod's ID.
    sig {
      params(payment_method: String, params: T.any(::Stripe::PaymentMethodService::AttachParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethod)
     }
    def attach(payment_method, params = {}, opts = {}); end

    # Creates a PaymentMethod object. Read the [Stripe.js reference](https://stripe.com/docs/stripe-js/reference#stripe-create-payment-method) to learn how to create PaymentMethods via Stripe.js.
    #
    # Instead of creating a PaymentMethod directly, we recommend using the [PaymentIntents API to accept a payment immediately or the <a href="/docs/payments/save-and-reuse">SetupIntent](https://stripe.com/docs/payments/accept-a-payment) API to collect payment method details ahead of a future payment.
    sig {
      params(params: T.any(::Stripe::PaymentMethodService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethod)
     }
    def create(params = {}, opts = {}); end

    # Detaches a PaymentMethod object from a Customer. After a PaymentMethod is detached, it can no longer be used for a payment or re-attached to a Customer.
    sig {
      params(payment_method: String, params: T.any(::Stripe::PaymentMethodService::DetachParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethod)
     }
    def detach(payment_method, params = {}, opts = {}); end

    # Returns a list of PaymentMethods for Treasury flows. If you want to list the PaymentMethods attached to a Customer for payments, you should use the [List a Customer's PaymentMethods](https://stripe.com/docs/api/payment_methods/customer_list) API instead.
    sig {
      params(params: T.any(::Stripe::PaymentMethodService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves a PaymentMethod object attached to the StripeAccount. To retrieve a payment method attached to a Customer, you should use [Retrieve a Customer's PaymentMethods](https://stripe.com/docs/api/payment_methods/customer)
    sig {
      params(payment_method: String, params: T.any(::Stripe::PaymentMethodService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethod)
     }
    def retrieve(payment_method, params = {}, opts = {}); end

    # Updates a PaymentMethod object. A PaymentMethod must be attached a customer to be updated.
    sig {
      params(payment_method: String, params: T.any(::Stripe::PaymentMethodService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethod)
     }
    def update(payment_method, params = {}, opts = {}); end
  end
end