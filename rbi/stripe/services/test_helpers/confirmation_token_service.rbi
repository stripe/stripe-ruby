# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class ConfirmationTokenService < StripeService
      class CreateParams < Stripe::RequestParams
        class PaymentMethodData < Stripe::RequestParams
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
              returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails::Address))
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
              params(address: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
            sig {
              returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna::Dob)
             }
            attr_accessor :dob
            sig {
              params(dob: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna::Dob).void
             }
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
            sig {
              returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung::Dob)
             }
            attr_accessor :dob
            sig {
              params(dob: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung::Dob).void
             }
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
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AcssDebit)
           }
          attr_accessor :acss_debit
          # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Affirm)
           }
          attr_accessor :affirm
          # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AfterpayClearpay)
           }
          attr_accessor :afterpay_clearpay
          # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alipay)
           }
          attr_accessor :alipay
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
          sig { returns(String) }
          attr_accessor :allow_redisplay
          # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alma)
           }
          attr_accessor :alma
          # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AmazonPay)
           }
          attr_accessor :amazon_pay
          # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AuBecsDebit)
           }
          attr_accessor :au_becs_debit
          # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BacsDebit)
           }
          attr_accessor :bacs_debit
          # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Bancontact)
           }
          attr_accessor :bancontact
          # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails)
           }
          attr_accessor :billing_details
          # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Blik)
           }
          attr_accessor :blik
          # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Boleto)
           }
          attr_accessor :boleto
          # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Cashapp)
           }
          attr_accessor :cashapp
          # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::CustomerBalance)
           }
          attr_accessor :customer_balance
          # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Eps)
           }
          attr_accessor :eps
          # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Fpx)
           }
          attr_accessor :fpx
          # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Giropay)
           }
          attr_accessor :giropay
          # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Gopay)
           }
          attr_accessor :gopay
          # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Grabpay)
           }
          attr_accessor :grabpay
          # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::IdBankTransfer)
           }
          attr_accessor :id_bank_transfer
          # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Ideal)
           }
          attr_accessor :ideal
          # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::InteracPresent)
           }
          attr_accessor :interac_present
          # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KakaoPay)
           }
          attr_accessor :kakao_pay
          # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna)
           }
          attr_accessor :klarna
          # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Konbini)
           }
          attr_accessor :konbini
          # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KrCard)
           }
          attr_accessor :kr_card
          # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Link)
           }
          attr_accessor :link
          # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::MbWay)
           }
          attr_accessor :mb_way
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata
          # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Mobilepay)
           }
          attr_accessor :mobilepay
          # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Multibanco)
           }
          attr_accessor :multibanco
          # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NaverPay)
           }
          attr_accessor :naver_pay
          # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Oxxo)
           }
          attr_accessor :oxxo
          # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::P24)
           }
          attr_accessor :p24
          # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::PayByBank)
           }
          attr_accessor :pay_by_bank
          # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payco)
           }
          attr_accessor :payco
          # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paynow)
           }
          attr_accessor :paynow
          # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypal)
           }
          attr_accessor :paypal
          # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payto)
           }
          attr_accessor :payto
          # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Pix)
           }
          attr_accessor :pix
          # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Promptpay)
           }
          attr_accessor :promptpay
          # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Qris)
           }
          attr_accessor :qris
          # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RadarOptions)
           }
          attr_accessor :radar_options
          # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung)
           }
          attr_accessor :rechnung
          # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RevolutPay)
           }
          attr_accessor :revolut_pay
          # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SamsungPay)
           }
          attr_accessor :samsung_pay
          # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SepaDebit)
           }
          attr_accessor :sepa_debit
          # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Shopeepay)
           }
          attr_accessor :shopeepay
          # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Sofort)
           }
          attr_accessor :sofort
          # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Swish)
           }
          attr_accessor :swish
          # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Twint)
           }
          attr_accessor :twint
          # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
          sig { returns(String) }
          attr_accessor :type
          # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::UsBankAccount)
           }
          attr_accessor :us_bank_account
          # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::WechatPay)
           }
          attr_accessor :wechat_pay
          # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Zip)
           }
          attr_accessor :zip
          sig {
            params(acss_debit: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AcssDebit, affirm: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Affirm, afterpay_clearpay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AfterpayClearpay, alipay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alipay, allow_redisplay: String, alma: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alma, amazon_pay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AmazonPay, au_becs_debit: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AuBecsDebit, bacs_debit: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BacsDebit, bancontact: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Bancontact, billing_details: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails, blik: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Blik, boleto: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Boleto, cashapp: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Cashapp, customer_balance: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::CustomerBalance, eps: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Eps, fpx: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Fpx, giropay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Giropay, gopay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Gopay, grabpay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Grabpay, id_bank_transfer: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::IdBankTransfer, ideal: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Ideal, interac_present: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::InteracPresent, kakao_pay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KakaoPay, klarna: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna, konbini: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Konbini, kr_card: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KrCard, link: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Link, mb_way: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Mobilepay, multibanco: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Multibanco, naver_pay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NaverPay, oxxo: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Oxxo, p24: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::P24, pay_by_bank: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::PayByBank, payco: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payco, paynow: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paynow, paypal: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypal, payto: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payto, pix: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Pix, promptpay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Promptpay, qris: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Qris, radar_options: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RadarOptions, rechnung: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung, revolut_pay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RevolutPay, samsung_pay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SamsungPay, sepa_debit: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SepaDebit, shopeepay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Shopeepay, sofort: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Sofort, swish: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Swish, twint: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Twint, type: String, us_bank_account: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::UsBankAccount, wechat_pay: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::WechatPay, zip: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Zip).void
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
            cashapp: nil,
            customer_balance: nil,
            eps: nil,
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
        class Shipping < Stripe::RequestParams
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
          # Shipping address
          sig {
            returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping::Address)
           }
          attr_accessor :address
          # Recipient name.
          sig { returns(String) }
          attr_accessor :name
          # Recipient phone (including extension)
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          sig {
            params(address: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping::Address, name: String, phone: T.nilable(String)).void
           }
          def initialize(address: nil, name: nil, phone: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # ID of an existing PaymentMethod.
        sig { returns(String) }
        attr_accessor :payment_method
        # If provided, this hash will be used to create a PaymentMethod.
        sig {
          returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData)
         }
        attr_accessor :payment_method_data
        # Return URL used to confirm the Intent.
        sig { returns(String) }
        attr_accessor :return_url
        # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
        #
        # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
        sig { returns(String) }
        attr_accessor :setup_future_usage
        # Shipping information for this ConfirmationToken.
        sig { returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping) }
        attr_accessor :shipping
        sig {
          params(expand: T::Array[String], payment_method: String, payment_method_data: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData, return_url: String, setup_future_usage: String, shipping: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping).void
         }
        def initialize(
          expand: nil,
          payment_method: nil,
          payment_method_data: nil,
          return_url: nil,
          setup_future_usage: nil,
          shipping: nil
        ); end
      end
      # Creates a test mode Confirmation Token server side for your integration tests.
      sig {
        params(params: T.any(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ConfirmationToken)
       }
      def create(params = {}, opts = {}); end
    end
  end
end