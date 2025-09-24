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
            def account_number; end
            sig { params(_account_number: String).returns(String) }
            def account_number=(_account_number); end
            # Institution number of the customer's bank.
            sig { returns(String) }
            def institution_number; end
            sig { params(_institution_number: String).returns(String) }
            def institution_number=(_institution_number); end
            # Transit number of the customer's bank.
            sig { returns(String) }
            def transit_number; end
            sig { params(_transit_number: String).returns(String) }
            def transit_number=(_transit_number); end
            sig {
              params(account_number: String, institution_number: String, transit_number: String).void
             }
            def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
          end
          class Affirm < Stripe::RequestParams; end
          class AfterpayClearpay < Stripe::RequestParams; end
          class Alipay < Stripe::RequestParams; end
          class Alma < Stripe::RequestParams; end
          class AmazonPay < Stripe::RequestParams; end
          class AuBecsDebit < Stripe::RequestParams
            # The account number for the bank account.
            sig { returns(String) }
            def account_number; end
            sig { params(_account_number: String).returns(String) }
            def account_number=(_account_number); end
            # Bank-State-Branch number of the bank account.
            sig { returns(String) }
            def bsb_number; end
            sig { params(_bsb_number: String).returns(String) }
            def bsb_number=(_bsb_number); end
            sig { params(account_number: String, bsb_number: String).void }
            def initialize(account_number: nil, bsb_number: nil); end
          end
          class BacsDebit < Stripe::RequestParams
            # Account number of the bank account that the funds will be debited from.
            sig { returns(T.nilable(String)) }
            def account_number; end
            sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
            def account_number=(_account_number); end
            # Sort code of the bank account. (e.g., `10-20-30`)
            sig { returns(T.nilable(String)) }
            def sort_code; end
            sig { params(_sort_code: T.nilable(String)).returns(T.nilable(String)) }
            def sort_code=(_sort_code); end
            sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
            def initialize(account_number: nil, sort_code: nil); end
          end
          class Bancontact < Stripe::RequestParams; end
          class Billie < Stripe::RequestParams; end
          class BillingDetails < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
              def city=(_city); end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
              def country=(_country); end
              # Address line 1, such as the street, PO Box, or company name.
              sig { returns(T.nilable(String)) }
              def line1; end
              sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
              def line1=(_line1); end
              # Address line 2, such as the apartment, suite, unit, or building.
              sig { returns(T.nilable(String)) }
              def line2; end
              sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_line2); end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
              def postal_code=(_postal_code); end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
              sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
              def state=(_state); end
              sig {
                params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
              returns(T.nilable(T.any(String, ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails::Address)))
             }
            def address; end
            sig {
              params(_address: T.nilable(T.any(String, ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails::Address)))
             }
            def address=(_address); end
            # Email address.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # Full name.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # Billing phone number (including extension).
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
            sig { returns(T.nilable(String)) }
            def tax_id; end
            sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
            def tax_id=(_tax_id); end
            sig {
              params(address: T.nilable(T.any(String, ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
             }
            def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
          end
          class Blik < Stripe::RequestParams; end
          class Boleto < Stripe::RequestParams
            # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
            sig { returns(String) }
            def tax_id; end
            sig { params(_tax_id: String).returns(String) }
            def tax_id=(_tax_id); end
            sig { params(tax_id: String).void }
            def initialize(tax_id: nil); end
          end
          class Cashapp < Stripe::RequestParams; end
          class Crypto < Stripe::RequestParams; end
          class CustomerBalance < Stripe::RequestParams; end
          class Eps < Stripe::RequestParams
            # The customer's bank.
            sig { returns(T.nilable(String)) }
            def bank; end
            sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
            def bank=(_bank); end
            sig { params(bank: T.nilable(String)).void }
            def initialize(bank: nil); end
          end
          class Fpx < Stripe::RequestParams
            # Account holder type for FPX transaction
            sig { returns(T.nilable(String)) }
            def account_holder_type; end
            sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
            def account_holder_type=(_account_holder_type); end
            # The customer's bank.
            sig { returns(String) }
            def bank; end
            sig { params(_bank: String).returns(String) }
            def bank=(_bank); end
            sig { params(account_holder_type: T.nilable(String), bank: String).void }
            def initialize(account_holder_type: nil, bank: nil); end
          end
          class Giropay < Stripe::RequestParams; end
          class Gopay < Stripe::RequestParams; end
          class Grabpay < Stripe::RequestParams; end
          class IdBankTransfer < Stripe::RequestParams
            # Bank where the account is held.
            sig { returns(T.nilable(String)) }
            def bank; end
            sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
            def bank=(_bank); end
            sig { params(bank: T.nilable(String)).void }
            def initialize(bank: nil); end
          end
          class Ideal < Stripe::RequestParams
            # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
            sig { returns(T.nilable(String)) }
            def bank; end
            sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
            def bank=(_bank); end
            sig { params(bank: T.nilable(String)).void }
            def initialize(bank: nil); end
          end
          class InteracPresent < Stripe::RequestParams; end
          class KakaoPay < Stripe::RequestParams; end
          class Klarna < Stripe::RequestParams
            class Dob < Stripe::RequestParams
              # The day of birth, between 1 and 31.
              sig { returns(Integer) }
              def day; end
              sig { params(_day: Integer).returns(Integer) }
              def day=(_day); end
              # The month of birth, between 1 and 12.
              sig { returns(Integer) }
              def month; end
              sig { params(_month: Integer).returns(Integer) }
              def month=(_month); end
              # The four-digit year of birth.
              sig { returns(Integer) }
              def year; end
              sig { params(_year: Integer).returns(Integer) }
              def year=(_year); end
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            # Customer's date of birth
            sig {
              returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna::Dob))
             }
            def dob; end
            sig {
              params(_dob: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna::Dob))
             }
            def dob=(_dob); end
            sig {
              params(dob: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna::Dob)).void
             }
            def initialize(dob: nil); end
          end
          class Konbini < Stripe::RequestParams; end
          class KrCard < Stripe::RequestParams; end
          class Link < Stripe::RequestParams; end
          class MbWay < Stripe::RequestParams; end
          class Mobilepay < Stripe::RequestParams; end
          class Multibanco < Stripe::RequestParams; end
          class NaverPay < Stripe::RequestParams
            # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
            sig { returns(T.nilable(String)) }
            def funding; end
            sig { params(_funding: T.nilable(String)).returns(T.nilable(String)) }
            def funding=(_funding); end
            sig { params(funding: T.nilable(String)).void }
            def initialize(funding: nil); end
          end
          class NzBankAccount < Stripe::RequestParams
            # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
            sig { returns(T.nilable(String)) }
            def account_holder_name; end
            sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
            def account_holder_name=(_account_holder_name); end
            # The account number for the bank account.
            sig { returns(String) }
            def account_number; end
            sig { params(_account_number: String).returns(String) }
            def account_number=(_account_number); end
            # The numeric code for the bank account's bank.
            sig { returns(String) }
            def bank_code; end
            sig { params(_bank_code: String).returns(String) }
            def bank_code=(_bank_code); end
            # The numeric code for the bank account's bank branch.
            sig { returns(String) }
            def branch_code; end
            sig { params(_branch_code: String).returns(String) }
            def branch_code=(_branch_code); end
            # Attribute for param field reference
            sig { returns(T.nilable(String)) }
            def reference; end
            sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
            def reference=(_reference); end
            # The suffix of the bank account number.
            sig { returns(String) }
            def suffix; end
            sig { params(_suffix: String).returns(String) }
            def suffix=(_suffix); end
            sig {
              params(account_holder_name: T.nilable(String), account_number: String, bank_code: String, branch_code: String, reference: T.nilable(String), suffix: String).void
             }
            def initialize(
              account_holder_name: nil,
              account_number: nil,
              bank_code: nil,
              branch_code: nil,
              reference: nil,
              suffix: nil
            ); end
          end
          class Oxxo < Stripe::RequestParams; end
          class P24 < Stripe::RequestParams
            # The customer's bank.
            sig { returns(T.nilable(String)) }
            def bank; end
            sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
            def bank=(_bank); end
            sig { params(bank: T.nilable(String)).void }
            def initialize(bank: nil); end
          end
          class PayByBank < Stripe::RequestParams; end
          class Payco < Stripe::RequestParams; end
          class Paynow < Stripe::RequestParams; end
          class Paypal < Stripe::RequestParams; end
          class Paypay < Stripe::RequestParams; end
          class Payto < Stripe::RequestParams
            # The account number for the bank account.
            sig { returns(T.nilable(String)) }
            def account_number; end
            sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
            def account_number=(_account_number); end
            # Bank-State-Branch number of the bank account.
            sig { returns(T.nilable(String)) }
            def bsb_number; end
            sig { params(_bsb_number: T.nilable(String)).returns(T.nilable(String)) }
            def bsb_number=(_bsb_number); end
            # The PayID alias for the bank account.
            sig { returns(T.nilable(String)) }
            def pay_id; end
            sig { params(_pay_id: T.nilable(String)).returns(T.nilable(String)) }
            def pay_id=(_pay_id); end
            sig {
              params(account_number: T.nilable(String), bsb_number: T.nilable(String), pay_id: T.nilable(String)).void
             }
            def initialize(account_number: nil, bsb_number: nil, pay_id: nil); end
          end
          class Pix < Stripe::RequestParams; end
          class Promptpay < Stripe::RequestParams; end
          class Qris < Stripe::RequestParams; end
          class RadarOptions < Stripe::RequestParams
            # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
            sig { returns(T.nilable(String)) }
            def session; end
            sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
            def session=(_session); end
            sig { params(session: T.nilable(String)).void }
            def initialize(session: nil); end
          end
          class Rechnung < Stripe::RequestParams
            class Dob < Stripe::RequestParams
              # The day of birth, between 1 and 31.
              sig { returns(Integer) }
              def day; end
              sig { params(_day: Integer).returns(Integer) }
              def day=(_day); end
              # The month of birth, between 1 and 12.
              sig { returns(Integer) }
              def month; end
              sig { params(_month: Integer).returns(Integer) }
              def month=(_month); end
              # The four-digit year of birth.
              sig { returns(Integer) }
              def year; end
              sig { params(_year: Integer).returns(Integer) }
              def year=(_year); end
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            # Customer's date of birth
            sig {
              returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung::Dob)
             }
            def dob; end
            sig {
              params(_dob: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung::Dob).returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung::Dob)
             }
            def dob=(_dob); end
            sig {
              params(dob: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung::Dob).void
             }
            def initialize(dob: nil); end
          end
          class RevolutPay < Stripe::RequestParams; end
          class SamsungPay < Stripe::RequestParams; end
          class Satispay < Stripe::RequestParams; end
          class SepaDebit < Stripe::RequestParams
            # IBAN of the bank account.
            sig { returns(String) }
            def iban; end
            sig { params(_iban: String).returns(String) }
            def iban=(_iban); end
            sig { params(iban: String).void }
            def initialize(iban: nil); end
          end
          class Shopeepay < Stripe::RequestParams; end
          class Sofort < Stripe::RequestParams
            # Two-letter ISO code representing the country the bank account is located in.
            sig { returns(String) }
            def country; end
            sig { params(_country: String).returns(String) }
            def country=(_country); end
            sig { params(country: String).void }
            def initialize(country: nil); end
          end
          class StripeBalance < Stripe::RequestParams
            # The connected account ID whose Stripe balance to use as the source of payment
            sig { returns(T.nilable(String)) }
            def account; end
            sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
            def account=(_account); end
            # The [source_type](https://docs.stripe.com/api/balance/balance_object#balance_object-available-source_types) of the balance
            sig { returns(T.nilable(String)) }
            def source_type; end
            sig { params(_source_type: T.nilable(String)).returns(T.nilable(String)) }
            def source_type=(_source_type); end
            sig { params(account: T.nilable(String), source_type: T.nilable(String)).void }
            def initialize(account: nil, source_type: nil); end
          end
          class Swish < Stripe::RequestParams; end
          class Twint < Stripe::RequestParams; end
          class UsBankAccount < Stripe::RequestParams
            # Account holder type: individual or company.
            sig { returns(T.nilable(String)) }
            def account_holder_type; end
            sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
            def account_holder_type=(_account_holder_type); end
            # Account number of the bank account.
            sig { returns(T.nilable(String)) }
            def account_number; end
            sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
            def account_number=(_account_number); end
            # Account type: checkings or savings. Defaults to checking if omitted.
            sig { returns(T.nilable(String)) }
            def account_type; end
            sig { params(_account_type: T.nilable(String)).returns(T.nilable(String)) }
            def account_type=(_account_type); end
            # The ID of a Financial Connections Account to use as a payment method.
            sig { returns(T.nilable(String)) }
            def financial_connections_account; end
            sig {
              params(_financial_connections_account: T.nilable(String)).returns(T.nilable(String))
             }
            def financial_connections_account=(_financial_connections_account); end
            # Routing number of the bank account.
            sig { returns(T.nilable(String)) }
            def routing_number; end
            sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
            def routing_number=(_routing_number); end
            sig {
              params(account_holder_type: T.nilable(String), account_number: T.nilable(String), account_type: T.nilable(String), financial_connections_account: T.nilable(String), routing_number: T.nilable(String)).void
             }
            def initialize(
              account_holder_type: nil,
              account_number: nil,
              account_type: nil,
              financial_connections_account: nil,
              routing_number: nil
            ); end
          end
          class WechatPay < Stripe::RequestParams; end
          class Zip < Stripe::RequestParams; end
          # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AcssDebit))
           }
          def acss_debit; end
          sig {
            params(_acss_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AcssDebit))
           }
          def acss_debit=(_acss_debit); end
          # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Affirm))
           }
          def affirm; end
          sig {
            params(_affirm: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Affirm))
           }
          def affirm=(_affirm); end
          # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AfterpayClearpay))
           }
          def afterpay_clearpay; end
          sig {
            params(_afterpay_clearpay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AfterpayClearpay))
           }
          def afterpay_clearpay=(_afterpay_clearpay); end
          # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alipay))
           }
          def alipay; end
          sig {
            params(_alipay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alipay))
           }
          def alipay=(_alipay); end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
          sig { returns(T.nilable(String)) }
          def allow_redisplay; end
          sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
          def allow_redisplay=(_allow_redisplay); end
          # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alma))
           }
          def alma; end
          sig {
            params(_alma: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alma))
           }
          def alma=(_alma); end
          # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AmazonPay))
           }
          def amazon_pay; end
          sig {
            params(_amazon_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AmazonPay))
           }
          def amazon_pay=(_amazon_pay); end
          # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AuBecsDebit))
           }
          def au_becs_debit; end
          sig {
            params(_au_becs_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AuBecsDebit))
           }
          def au_becs_debit=(_au_becs_debit); end
          # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BacsDebit))
           }
          def bacs_debit; end
          sig {
            params(_bacs_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BacsDebit))
           }
          def bacs_debit=(_bacs_debit); end
          # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Bancontact))
           }
          def bancontact; end
          sig {
            params(_bancontact: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Bancontact))
           }
          def bancontact=(_bancontact); end
          # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Billie))
           }
          def billie; end
          sig {
            params(_billie: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Billie))
           }
          def billie=(_billie); end
          # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails))
           }
          def billing_details; end
          sig {
            params(_billing_details: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails))
           }
          def billing_details=(_billing_details); end
          # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Blik))
           }
          def blik; end
          sig {
            params(_blik: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Blik))
           }
          def blik=(_blik); end
          # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Boleto))
           }
          def boleto; end
          sig {
            params(_boleto: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Boleto))
           }
          def boleto=(_boleto); end
          # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Cashapp))
           }
          def cashapp; end
          sig {
            params(_cashapp: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Cashapp))
           }
          def cashapp=(_cashapp); end
          # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Crypto))
           }
          def crypto; end
          sig {
            params(_crypto: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Crypto))
           }
          def crypto=(_crypto); end
          # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::CustomerBalance))
           }
          def customer_balance; end
          sig {
            params(_customer_balance: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::CustomerBalance))
           }
          def customer_balance=(_customer_balance); end
          # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Eps))
           }
          def eps; end
          sig {
            params(_eps: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Eps))
           }
          def eps=(_eps); end
          # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Fpx))
           }
          def fpx; end
          sig {
            params(_fpx: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Fpx))
           }
          def fpx=(_fpx); end
          # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Giropay))
           }
          def giropay; end
          sig {
            params(_giropay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Giropay))
           }
          def giropay=(_giropay); end
          # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Gopay))
           }
          def gopay; end
          sig {
            params(_gopay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Gopay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Gopay))
           }
          def gopay=(_gopay); end
          # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Grabpay))
           }
          def grabpay; end
          sig {
            params(_grabpay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Grabpay))
           }
          def grabpay=(_grabpay); end
          # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::IdBankTransfer))
           }
          def id_bank_transfer; end
          sig {
            params(_id_bank_transfer: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::IdBankTransfer)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::IdBankTransfer))
           }
          def id_bank_transfer=(_id_bank_transfer); end
          # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Ideal))
           }
          def ideal; end
          sig {
            params(_ideal: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Ideal))
           }
          def ideal=(_ideal); end
          # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::InteracPresent))
           }
          def interac_present; end
          sig {
            params(_interac_present: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::InteracPresent))
           }
          def interac_present=(_interac_present); end
          # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KakaoPay))
           }
          def kakao_pay; end
          sig {
            params(_kakao_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KakaoPay))
           }
          def kakao_pay=(_kakao_pay); end
          # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna))
           }
          def klarna; end
          sig {
            params(_klarna: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna))
           }
          def klarna=(_klarna); end
          # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Konbini))
           }
          def konbini; end
          sig {
            params(_konbini: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Konbini))
           }
          def konbini=(_konbini); end
          # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KrCard))
           }
          def kr_card; end
          sig {
            params(_kr_card: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KrCard))
           }
          def kr_card=(_kr_card); end
          # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Link))
           }
          def link; end
          sig {
            params(_link: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Link))
           }
          def link=(_link); end
          # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::MbWay))
           }
          def mb_way; end
          sig {
            params(_mb_way: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::MbWay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::MbWay))
           }
          def mb_way=(_mb_way); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Mobilepay))
           }
          def mobilepay; end
          sig {
            params(_mobilepay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Mobilepay))
           }
          def mobilepay=(_mobilepay); end
          # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Multibanco))
           }
          def multibanco; end
          sig {
            params(_multibanco: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Multibanco))
           }
          def multibanco=(_multibanco); end
          # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NaverPay))
           }
          def naver_pay; end
          sig {
            params(_naver_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NaverPay))
           }
          def naver_pay=(_naver_pay); end
          # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NzBankAccount))
           }
          def nz_bank_account; end
          sig {
            params(_nz_bank_account: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NzBankAccount))
           }
          def nz_bank_account=(_nz_bank_account); end
          # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Oxxo))
           }
          def oxxo; end
          sig {
            params(_oxxo: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Oxxo))
           }
          def oxxo=(_oxxo); end
          # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::P24))
           }
          def p24; end
          sig {
            params(_p24: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::P24))
           }
          def p24=(_p24); end
          # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::PayByBank))
           }
          def pay_by_bank; end
          sig {
            params(_pay_by_bank: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::PayByBank))
           }
          def pay_by_bank=(_pay_by_bank); end
          # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payco))
           }
          def payco; end
          sig {
            params(_payco: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payco))
           }
          def payco=(_payco); end
          # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paynow))
           }
          def paynow; end
          sig {
            params(_paynow: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paynow))
           }
          def paynow=(_paynow); end
          # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypal))
           }
          def paypal; end
          sig {
            params(_paypal: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypal))
           }
          def paypal=(_paypal); end
          # If this is a `paypay` PaymentMethod, this hash contains details about the PayPay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypay))
           }
          def paypay; end
          sig {
            params(_paypay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypay))
           }
          def paypay=(_paypay); end
          # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payto))
           }
          def payto; end
          sig {
            params(_payto: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payto)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payto))
           }
          def payto=(_payto); end
          # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Pix))
           }
          def pix; end
          sig {
            params(_pix: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Pix))
           }
          def pix=(_pix); end
          # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Promptpay))
           }
          def promptpay; end
          sig {
            params(_promptpay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Promptpay))
           }
          def promptpay=(_promptpay); end
          # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Qris))
           }
          def qris; end
          sig {
            params(_qris: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Qris)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Qris))
           }
          def qris=(_qris); end
          # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RadarOptions))
           }
          def radar_options; end
          sig {
            params(_radar_options: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RadarOptions))
           }
          def radar_options=(_radar_options); end
          # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung))
           }
          def rechnung; end
          sig {
            params(_rechnung: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung))
           }
          def rechnung=(_rechnung); end
          # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RevolutPay))
           }
          def revolut_pay; end
          sig {
            params(_revolut_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RevolutPay))
           }
          def revolut_pay=(_revolut_pay); end
          # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SamsungPay))
           }
          def samsung_pay; end
          sig {
            params(_samsung_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SamsungPay))
           }
          def samsung_pay=(_samsung_pay); end
          # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Satispay))
           }
          def satispay; end
          sig {
            params(_satispay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Satispay))
           }
          def satispay=(_satispay); end
          # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SepaDebit))
           }
          def sepa_debit; end
          sig {
            params(_sepa_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SepaDebit))
           }
          def sepa_debit=(_sepa_debit); end
          # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Shopeepay))
           }
          def shopeepay; end
          sig {
            params(_shopeepay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Shopeepay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Shopeepay))
           }
          def shopeepay=(_shopeepay); end
          # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Sofort))
           }
          def sofort; end
          sig {
            params(_sofort: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Sofort))
           }
          def sofort=(_sofort); end
          # This hash contains details about the Stripe balance payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::StripeBalance))
           }
          def stripe_balance; end
          sig {
            params(_stripe_balance: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::StripeBalance)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::StripeBalance))
           }
          def stripe_balance=(_stripe_balance); end
          # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Swish))
           }
          def swish; end
          sig {
            params(_swish: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Swish))
           }
          def swish=(_swish); end
          # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Twint))
           }
          def twint; end
          sig {
            params(_twint: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Twint))
           }
          def twint=(_twint); end
          # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::UsBankAccount))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::UsBankAccount))
           }
          def us_bank_account=(_us_bank_account); end
          # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::WechatPay))
           }
          def wechat_pay; end
          sig {
            params(_wechat_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::WechatPay))
           }
          def wechat_pay=(_wechat_pay); end
          # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Zip))
           }
          def zip; end
          sig {
            params(_zip: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Zip))
           }
          def zip=(_zip); end
          sig {
            params(acss_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Giropay), gopay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Gopay), grabpay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Grabpay), id_bank_transfer: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::IdBankTransfer), ideal: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Link), mb_way: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::MbWay), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypal), paypay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Paypay), payto: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Payto), pix: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Promptpay), qris: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Qris), radar_options: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RadarOptions), rechnung: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Rechnung), revolut_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::SepaDebit), shopeepay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Shopeepay), sofort: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Sofort), stripe_balance: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::StripeBalance), swish: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData::Zip)).void
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
            billie: nil,
            billing_details: nil,
            blik: nil,
            boleto: nil,
            cashapp: nil,
            crypto: nil,
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
            nz_bank_account: nil,
            oxxo: nil,
            p24: nil,
            pay_by_bank: nil,
            payco: nil,
            paynow: nil,
            paypal: nil,
            paypay: nil,
            payto: nil,
            pix: nil,
            promptpay: nil,
            qris: nil,
            radar_options: nil,
            rechnung: nil,
            revolut_pay: nil,
            samsung_pay: nil,
            satispay: nil,
            sepa_debit: nil,
            shopeepay: nil,
            sofort: nil,
            stripe_balance: nil,
            swish: nil,
            twint: nil,
            type: nil,
            us_bank_account: nil,
            wechat_pay: nil,
            zip: nil
          ); end
        end
        class PaymentMethodOptions < Stripe::RequestParams
          class Card < Stripe::RequestParams
            class Installments < Stripe::RequestParams
              class Plan < Stripe::RequestParams
                # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
                sig { returns(T.nilable(Integer)) }
                def count; end
                sig { params(_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def count=(_count); end
                # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
                # One of `month`.
                sig { returns(T.nilable(String)) }
                def interval; end
                sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
                def interval=(_interval); end
                # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
                 }
                def initialize(count: nil, interval: nil, type: nil); end
              end
              # The selected installment plan to use for this payment attempt.
              # This parameter can only be provided during confirmation.
              sig {
                returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments::Plan)
               }
              def plan; end
              sig {
                params(_plan: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments::Plan).returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments::Plan)
               }
              def plan=(_plan); end
              sig {
                params(plan: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments::Plan).void
               }
              def initialize(plan: nil); end
            end
            # Installment configuration for payments confirmed using this ConfirmationToken.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments))
             }
            def installments; end
            sig {
              params(_installments: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments))
             }
            def installments=(_installments); end
            sig {
              params(installments: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card::Installments)).void
             }
            def initialize(installments: nil); end
          end
          # Configuration for any card payments confirmed using this ConfirmationToken.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card))
           }
          def card=(_card); end
          sig {
            params(card: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions::Card)).void
           }
          def initialize(card: nil); end
        end
        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          def address; end
          sig {
            params(_address: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping::Address).returns(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping::Address)
           }
          def address=(_address); end
          # Recipient name.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # Recipient phone (including extension)
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          sig {
            params(address: ::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping::Address, name: String, phone: T.nilable(String)).void
           }
          def initialize(address: nil, name: nil, phone: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # ID of an existing PaymentMethod.
        sig { returns(T.nilable(String)) }
        def payment_method; end
        sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def payment_method=(_payment_method); end
        # If provided, this hash will be used to create a PaymentMethod.
        sig {
          returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData))
         }
        def payment_method_data; end
        sig {
          params(_payment_method_data: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData))
         }
        def payment_method_data=(_payment_method_data); end
        # Payment-method-specific configuration for this ConfirmationToken.
        sig {
          returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions))
         }
        def payment_method_options; end
        sig {
          params(_payment_method_options: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions))
         }
        def payment_method_options=(_payment_method_options); end
        # Return URL used to confirm the Intent.
        sig { returns(T.nilable(String)) }
        def return_url; end
        sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
        def return_url=(_return_url); end
        # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
        #
        # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
        sig { returns(T.nilable(String)) }
        def setup_future_usage; end
        sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
        def setup_future_usage=(_setup_future_usage); end
        # Shipping information for this ConfirmationToken.
        sig {
          returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping))
         }
        def shipping; end
        sig {
          params(_shipping: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping)).returns(T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping))
         }
        def shipping=(_shipping); end
        sig {
          params(expand: T.nilable(T::Array[String]), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::PaymentMethodOptions), return_url: T.nilable(String), setup_future_usage: T.nilable(String), shipping: T.nilable(::Stripe::TestHelpers::ConfirmationTokenService::CreateParams::Shipping)).void
         }
        def initialize(
          expand: nil,
          payment_method: nil,
          payment_method_data: nil,
          payment_method_options: nil,
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