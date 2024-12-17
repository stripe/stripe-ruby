# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SetupIntentService < StripeService
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T::Boolean) }
      attr_accessor :attach_to_self
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.any(::Stripe::SetupIntentService::ListParams::Created, Integer)) }
      attr_accessor :created
      # Only return SetupIntents for the customer specified by this customer ID.
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
      # Only return SetupIntents that associate with the specified payment method.
      sig { returns(String) }
      attr_accessor :payment_method
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(attach_to_self: T::Boolean, created: T.any(::Stripe::SetupIntentService::ListParams::Created, Integer), customer: String, ending_before: String, expand: T::Array[String], limit: Integer, payment_method: String, starting_after: String).void
       }
      def initialize(
        attach_to_self: nil,
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_method: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticPaymentMethods < Stripe::RequestParams
        # Controls whether this SetupIntent will accept redirect-based payment methods.
        #
        # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/setup_intents/confirm) this SetupIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the setup.
        sig { returns(String) }
        attr_accessor :allow_redirects
        # Whether this feature is enabled.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(allow_redirects: String, enabled: T::Boolean).void }
        def initialize(allow_redirects: nil, enabled: nil); end
      end
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams

          end
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :user_agent
            sig { params(ip_address: String, user_agent: String).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(Integer) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::MandateData::CustomerAcceptance::Offline)
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::MandateData::CustomerAcceptance::Online)
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: Integer, offline: ::Stripe::SetupIntentService::CreateParams::MandateData::CustomerAcceptance::Offline, online: ::Stripe::SetupIntentService::CreateParams::MandateData::CustomerAcceptance::Online, type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig { returns(::Stripe::SetupIntentService::CreateParams::MandateData::CustomerAcceptance) }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: ::Stripe::SetupIntentService::CreateParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
      end
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
            returns(T.nilable(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::BillingDetails::Address))
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
            params(address: T.nilable(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Klarna::Dob)
           }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Klarna::Dob).void
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
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Rechnung::Dob)
           }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Rechnung::Dob).void
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
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AcssDebit) }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Affirm) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AfterpayClearpay)
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Alipay) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(String) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Alma) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AuBecsDebit) }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::BacsDebit) }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Bancontact) }
        attr_accessor :bancontact
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::BillingDetails)
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Blik) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Boleto) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Cashapp) }
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::CustomerBalance)
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Eps) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Fpx) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Giropay) }
        attr_accessor :giropay
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Gopay) }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Grabpay) }
        attr_accessor :grabpay
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::IdBankTransfer)
         }
        attr_accessor :id_bank_transfer
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Ideal) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::InteracPresent)
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::KakaoPay) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Klarna) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Konbini) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::KrCard) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Link) }
        attr_accessor :link
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::MbWay) }
        attr_accessor :mb_way
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Mobilepay) }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Multibanco) }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::NaverPay) }
        attr_accessor :naver_pay
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Oxxo) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::P24) }
        attr_accessor :p24
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Payco) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Paynow) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Payto) }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Pix) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Promptpay) }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Qris) }
        attr_accessor :qris
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::RadarOptions) }
        attr_accessor :radar_options
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Rechnung) }
        attr_accessor :rechnung
        # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::RevolutPay) }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::SamsungPay) }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Shopeepay) }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Sofort) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Swish) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Twint) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::UsBankAccount)
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::WechatPay) }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Zip) }
        attr_accessor :zip
        sig {
          params(acss_debit: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AcssDebit, affirm: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Affirm, afterpay_clearpay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AfterpayClearpay, alipay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Alipay, allow_redisplay: String, alma: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Alma, amazon_pay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AmazonPay, au_becs_debit: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::AuBecsDebit, bacs_debit: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::BacsDebit, bancontact: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Bancontact, billing_details: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::BillingDetails, blik: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Blik, boleto: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Boleto, cashapp: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Cashapp, customer_balance: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::CustomerBalance, eps: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Eps, fpx: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Fpx, giropay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Giropay, gopay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Gopay, grabpay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Grabpay, id_bank_transfer: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::IdBankTransfer, ideal: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Ideal, interac_present: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::InteracPresent, kakao_pay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::KakaoPay, klarna: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Klarna, konbini: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Konbini, kr_card: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::KrCard, link: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Link, mb_way: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Mobilepay, multibanco: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Multibanco, naver_pay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::NaverPay, oxxo: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Oxxo, p24: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::P24, payco: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Payco, paynow: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Paynow, paypal: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Paypal, payto: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Payto, pix: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Pix, promptpay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Promptpay, qris: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Qris, radar_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::RadarOptions, rechnung: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Rechnung, revolut_pay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::RevolutPay, samsung_pay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::SamsungPay, sepa_debit: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::SepaDebit, shopeepay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Shopeepay, sofort: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Sofort, swish: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Swish, twint: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Twint, type: String, us_bank_account: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::UsBankAccount, wechat_pay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::WechatPay, zip: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData::Zip).void
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
      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
            sig { returns(T::Array[String]) }
            attr_accessor :default_for
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(String) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(String) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), default_for: T::Array[String], interval_description: String, payment_schedule: String, transaction_type: String).void
             }
            def initialize(
              custom_mandate_url: nil,
              default_for: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(currency: String, mandate_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions, verification_method: String).void
           }
          def initialize(currency: nil, mandate_options: nil, verification_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams

        end
        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(String) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(Integer) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(Integer) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T::Array[String]) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, currency: String, description: String, end_date: Integer, interval: String, interval_count: Integer, reference: String, start_date: Integer, supported_types: T::Array[String]).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            ); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(String) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(Integer) }
                attr_accessor :cb_score
                sig { params(cb_avalgo: String, cb_exemption: String, cb_score: Integer).void }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(String) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(String) }
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(String) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: String, cryptogram: String, electronic_commerce_indicator: String, network_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions, requestor_challenge_indicator: String, transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::MandateOptions)
           }
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T::Boolean) }
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(String) }
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(String) }
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure)
           }
          attr_accessor :three_d_secure
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::MandateOptions, moto: T::Boolean, network: String, request_three_d_secure: String, three_d_secure: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure).void
           }
          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams

        end
        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(String) }
          attr_accessor :persistent_token
          sig { params(persistent_token: String).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(String) }
          attr_accessor :billing_agreement_id
          # Attribute for param field currency
          sig { returns(String) }
          attr_accessor :currency
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T::Array[String]) }
          attr_accessor :subsellers
          sig {
            params(billing_agreement_id: String, currency: String, subsellers: T::Array[String]).void
           }
          def initialize(billing_agreement_id: nil, currency: nil, subsellers: nil); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(Integer) }
            attr_accessor :amount
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(String) }
            attr_accessor :amount_type
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(String) }
            attr_accessor :end_date
            # The periodicity at which payments will be collected.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(Integer) }
            attr_accessor :payments_per_period
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(String) }
            attr_accessor :purpose
            # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
            sig { returns(String) }
            attr_accessor :start_date
            sig {
              params(amount: Integer, amount_type: String, end_date: String, payment_schedule: String, payments_per_period: Integer, purpose: String, start_date: String).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil,
              start_date: nil
            ); end
          end
          # Additional fields for Mandate creation.
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Payto::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Payto::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T::Array[String]) }
              attr_accessor :account_subcategories
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(String) }
              attr_accessor :institution
              sig { params(account_subcategories: T::Array[String], institution: String).void }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              attr_accessor :mode
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method
            sig {
              returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
             }
            attr_accessor :filters
            # Customize manual entry behavior
            sig {
              returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)
             }
            attr_accessor :manual_entry
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T::Array[String]) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T::Array[String]) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(String) }
            attr_accessor :return_url
            sig {
              params(filters: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, manual_entry: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry, permissions: T::Array[String], prefetch: T::Array[String], return_url: String).void
             }
            def initialize(
              filters: nil,
              manual_entry: nil,
              permissions: nil,
              prefetch: nil,
              return_url: nil
            ); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            attr_accessor :collection_method
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T::Array[String]) }
            attr_accessor :requested
            sig { params(requested: T::Array[String]).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::Networks)
           }
          attr_accessor :networks
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, mandate_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions, networks: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::Networks, verification_method: String).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          ); end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::AcssDebit) }
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::BacsDebit) }
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card) }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::CardPresent)
         }
        attr_accessor :card_present
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Link) }
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` SetupIntent, this sub-hash contains details about the PayTo payment method options.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Payto) }
        attr_accessor :payto
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount)
         }
        attr_accessor :us_bank_account
        sig {
          params(acss_debit: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::AcssDebit, amazon_pay: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::AmazonPay, bacs_debit: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::BacsDebit, card: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Card, card_present: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::CardPresent, link: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Link, paypal: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Paypal, payto: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::Payto, sepa_debit: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::SepaDebit, us_bank_account: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions::UsBankAccount).void
         }
        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          link: nil,
          paypal: nil,
          payto: nil,
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      class SingleUse < Stripe::RequestParams
        # Amount the customer is granting permission to collect later. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        sig { returns(Integer) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        sig { params(amount: Integer, currency: String).void }
        def initialize(amount: nil, currency: nil); end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T::Boolean) }
      attr_accessor :attach_to_self
      # When you enable this parameter, this SetupIntent accepts payment methods that you enable in the Dashboard and that are compatible with its other parameters.
      sig { returns(::Stripe::SetupIntentService::CreateParams::AutomaticPaymentMethods) }
      attr_accessor :automatic_payment_methods
      # Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If a card is the attached payment method, you can provide a `return_url` in case further authentication is necessary.
      sig { returns(T::Boolean) }
      attr_accessor :confirm
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(String) }
      attr_accessor :confirmation_token
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      sig { returns(String) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      sig { returns(T::Array[String]) }
      attr_accessor :flow_directions
      # This hash contains details about the mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      sig { returns(T.nilable(::Stripe::SetupIntentService::CreateParams::MandateData)) }
      attr_accessor :mandate_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # The Stripe account ID created for this SetupIntent.
      sig { returns(String) }
      attr_accessor :on_behalf_of
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      sig { returns(String) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      sig { returns(String) }
      attr_accessor :payment_method_configuration
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodData) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this SetupIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
      sig { returns(T::Array[String]) }
      attr_accessor :payment_method_types
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. To redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      sig { returns(String) }
      attr_accessor :return_url
      # If you populate this hash, this SetupIntent generates a `single_use` mandate after successful completion.
      sig { returns(::Stripe::SetupIntentService::CreateParams::SingleUse) }
      attr_accessor :single_use
      # Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
      sig { returns(String) }
      attr_accessor :usage
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T::Boolean) }
      attr_accessor :use_stripe_sdk
      sig {
        params(attach_to_self: T::Boolean, automatic_payment_methods: ::Stripe::SetupIntentService::CreateParams::AutomaticPaymentMethods, confirm: T::Boolean, confirmation_token: String, customer: String, description: String, expand: T::Array[String], flow_directions: T::Array[String], mandate_data: T.nilable(::Stripe::SetupIntentService::CreateParams::MandateData), metadata: T::Hash[String, String], on_behalf_of: String, payment_method: String, payment_method_configuration: String, payment_method_data: ::Stripe::SetupIntentService::CreateParams::PaymentMethodData, payment_method_options: ::Stripe::SetupIntentService::CreateParams::PaymentMethodOptions, payment_method_types: T::Array[String], return_url: String, single_use: ::Stripe::SetupIntentService::CreateParams::SingleUse, usage: String, use_stripe_sdk: T::Boolean).void
       }
      def initialize(
        attach_to_self: nil,
        automatic_payment_methods: nil,
        confirm: nil,
        confirmation_token: nil,
        customer: nil,
        description: nil,
        expand: nil,
        flow_directions: nil,
        mandate_data: nil,
        metadata: nil,
        on_behalf_of: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        return_url: nil,
        single_use: nil,
        usage: nil,
        use_stripe_sdk: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # The client secret of the SetupIntent. We require this string if you use a publishable key to retrieve the SetupIntent.
      sig { returns(String) }
      attr_accessor :client_secret
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(client_secret: String, expand: T::Array[String]).void }
      def initialize(client_secret: nil, expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
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
            returns(T.nilable(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::BillingDetails::Address))
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
            params(address: T.nilable(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Klarna::Dob)
           }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Klarna::Dob).void
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
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Rechnung::Dob)
           }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Rechnung::Dob).void
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
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AcssDebit) }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Affirm) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AfterpayClearpay)
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Alipay) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(String) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Alma) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AuBecsDebit) }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::BacsDebit) }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Bancontact) }
        attr_accessor :bancontact
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::BillingDetails)
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Blik) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Boleto) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Cashapp) }
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::CustomerBalance)
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Eps) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Fpx) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Giropay) }
        attr_accessor :giropay
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Gopay) }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Grabpay) }
        attr_accessor :grabpay
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::IdBankTransfer)
         }
        attr_accessor :id_bank_transfer
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Ideal) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::InteracPresent)
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::KakaoPay) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Klarna) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Konbini) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::KrCard) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Link) }
        attr_accessor :link
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::MbWay) }
        attr_accessor :mb_way
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Mobilepay) }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Multibanco) }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::NaverPay) }
        attr_accessor :naver_pay
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Oxxo) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::P24) }
        attr_accessor :p24
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Payco) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Paynow) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Payto) }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Pix) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Promptpay) }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Qris) }
        attr_accessor :qris
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::RadarOptions) }
        attr_accessor :radar_options
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Rechnung) }
        attr_accessor :rechnung
        # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::RevolutPay) }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::SamsungPay) }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Shopeepay) }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Sofort) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Swish) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Twint) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::UsBankAccount)
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::WechatPay) }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Zip) }
        attr_accessor :zip
        sig {
          params(acss_debit: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AcssDebit, affirm: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Affirm, afterpay_clearpay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AfterpayClearpay, alipay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Alipay, allow_redisplay: String, alma: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Alma, amazon_pay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AmazonPay, au_becs_debit: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::AuBecsDebit, bacs_debit: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::BacsDebit, bancontact: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Bancontact, billing_details: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::BillingDetails, blik: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Blik, boleto: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Boleto, cashapp: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Cashapp, customer_balance: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::CustomerBalance, eps: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Eps, fpx: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Fpx, giropay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Giropay, gopay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Gopay, grabpay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Grabpay, id_bank_transfer: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::IdBankTransfer, ideal: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Ideal, interac_present: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::InteracPresent, kakao_pay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::KakaoPay, klarna: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Klarna, konbini: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Konbini, kr_card: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::KrCard, link: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Link, mb_way: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Mobilepay, multibanco: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Multibanco, naver_pay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::NaverPay, oxxo: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Oxxo, p24: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::P24, payco: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Payco, paynow: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Paynow, paypal: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Paypal, payto: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Payto, pix: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Pix, promptpay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Promptpay, qris: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Qris, radar_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::RadarOptions, rechnung: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Rechnung, revolut_pay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::RevolutPay, samsung_pay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::SamsungPay, sepa_debit: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::SepaDebit, shopeepay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Shopeepay, sofort: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Sofort, swish: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Swish, twint: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Twint, type: String, us_bank_account: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::UsBankAccount, wechat_pay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::WechatPay, zip: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData::Zip).void
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
      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
            sig { returns(T::Array[String]) }
            attr_accessor :default_for
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(String) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(String) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), default_for: T::Array[String], interval_description: String, payment_schedule: String, transaction_type: String).void
             }
            def initialize(
              custom_mandate_url: nil,
              default_for: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(currency: String, mandate_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions, verification_method: String).void
           }
          def initialize(currency: nil, mandate_options: nil, verification_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams

        end
        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(String) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(Integer) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(Integer) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T::Array[String]) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, currency: String, description: String, end_date: Integer, interval: String, interval_count: Integer, reference: String, start_date: Integer, supported_types: T::Array[String]).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            ); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(String) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(Integer) }
                attr_accessor :cb_score
                sig { params(cb_avalgo: String, cb_exemption: String, cb_score: Integer).void }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(String) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(String) }
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(String) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: String, cryptogram: String, electronic_commerce_indicator: String, network_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions, requestor_challenge_indicator: String, transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::MandateOptions)
           }
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T::Boolean) }
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(String) }
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(String) }
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure)
           }
          attr_accessor :three_d_secure
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::MandateOptions, moto: T::Boolean, network: String, request_three_d_secure: String, three_d_secure: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure).void
           }
          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams

        end
        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(String) }
          attr_accessor :persistent_token
          sig { params(persistent_token: String).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(String) }
          attr_accessor :billing_agreement_id
          # Attribute for param field currency
          sig { returns(String) }
          attr_accessor :currency
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T::Array[String]) }
          attr_accessor :subsellers
          sig {
            params(billing_agreement_id: String, currency: String, subsellers: T::Array[String]).void
           }
          def initialize(billing_agreement_id: nil, currency: nil, subsellers: nil); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(Integer) }
            attr_accessor :amount
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(String) }
            attr_accessor :amount_type
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(String) }
            attr_accessor :end_date
            # The periodicity at which payments will be collected.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(Integer) }
            attr_accessor :payments_per_period
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(String) }
            attr_accessor :purpose
            # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
            sig { returns(String) }
            attr_accessor :start_date
            sig {
              params(amount: Integer, amount_type: String, end_date: String, payment_schedule: String, payments_per_period: Integer, purpose: String, start_date: String).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil,
              start_date: nil
            ); end
          end
          # Additional fields for Mandate creation.
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Payto::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Payto::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T::Array[String]) }
              attr_accessor :account_subcategories
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(String) }
              attr_accessor :institution
              sig { params(account_subcategories: T::Array[String], institution: String).void }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              attr_accessor :mode
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method
            sig {
              returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
             }
            attr_accessor :filters
            # Customize manual entry behavior
            sig {
              returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)
             }
            attr_accessor :manual_entry
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T::Array[String]) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T::Array[String]) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(String) }
            attr_accessor :return_url
            sig {
              params(filters: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, manual_entry: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry, permissions: T::Array[String], prefetch: T::Array[String], return_url: String).void
             }
            def initialize(
              filters: nil,
              manual_entry: nil,
              permissions: nil,
              prefetch: nil,
              return_url: nil
            ); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            attr_accessor :collection_method
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T::Array[String]) }
            attr_accessor :requested
            sig { params(requested: T::Array[String]).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions)
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks)
           }
          attr_accessor :networks
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, mandate_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions, networks: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks, verification_method: String).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          ); end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::AcssDebit) }
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::BacsDebit) }
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card) }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::CardPresent)
         }
        attr_accessor :card_present
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Link) }
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` SetupIntent, this sub-hash contains details about the PayTo payment method options.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Payto) }
        attr_accessor :payto
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount)
         }
        attr_accessor :us_bank_account
        sig {
          params(acss_debit: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::AcssDebit, amazon_pay: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::AmazonPay, bacs_debit: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::BacsDebit, card: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Card, card_present: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::CardPresent, link: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Link, paypal: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Paypal, payto: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::Payto, sepa_debit: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::SepaDebit, us_bank_account: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount).void
         }
        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          link: nil,
          paypal: nil,
          payto: nil,
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      sig { returns(T::Boolean) }
      attr_accessor :attach_to_self
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      sig { returns(String) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      sig { returns(T::Array[String]) }
      attr_accessor :flow_directions
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent. To unset this field to null, pass in an empty string.
      sig { returns(String) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      sig { returns(String) }
      attr_accessor :payment_method_configuration
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodData) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this SetupIntent can set up. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
      sig { returns(T::Array[String]) }
      attr_accessor :payment_method_types
      sig {
        params(attach_to_self: T::Boolean, customer: String, description: String, expand: T::Array[String], flow_directions: T::Array[String], metadata: T.nilable(T::Hash[String, String]), payment_method: String, payment_method_configuration: String, payment_method_data: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodData, payment_method_options: ::Stripe::SetupIntentService::UpdateParams::PaymentMethodOptions, payment_method_types: T::Array[String]).void
       }
      def initialize(
        attach_to_self: nil,
        customer: nil,
        description: nil,
        expand: nil,
        flow_directions: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil
      ); end
    end
    class CancelParams < Stripe::RequestParams
      # Reason for canceling this SetupIntent. Possible values are: `abandoned`, `requested_by_customer`, or `duplicate`
      sig { returns(String) }
      attr_accessor :cancellation_reason
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(cancellation_reason: String, expand: T::Array[String]).void }
      def initialize(cancellation_reason: nil, expand: nil); end
    end
    class ConfirmParams < Stripe::RequestParams
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams

          end
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(String) }
            attr_accessor :user_agent
            sig { params(ip_address: String, user_agent: String).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(Integer) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::MandateData::CustomerAcceptance::Offline)
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::MandateData::CustomerAcceptance::Online)
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: Integer, offline: ::Stripe::SetupIntentService::ConfirmParams::MandateData::CustomerAcceptance::Offline, online: ::Stripe::SetupIntentService::ConfirmParams::MandateData::CustomerAcceptance::Online, type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::MandateData::CustomerAcceptance)
         }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: ::Stripe::SetupIntentService::ConfirmParams::MandateData::CustomerAcceptance).void
         }
        def initialize(customer_acceptance: nil); end
      end
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
            returns(T.nilable(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::BillingDetails::Address))
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
            params(address: T.nilable(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Klarna::Dob)
           }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Klarna::Dob).void
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
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Rechnung::Dob)
           }
          attr_accessor :dob
          sig {
            params(dob: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Rechnung::Dob).void
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
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AcssDebit) }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Affirm) }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AfterpayClearpay)
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Alipay) }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(String) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Alma) }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AmazonPay) }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AuBecsDebit) }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::BacsDebit) }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Bancontact) }
        attr_accessor :bancontact
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::BillingDetails)
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Blik) }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Boleto) }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Cashapp) }
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::CustomerBalance)
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Eps) }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Fpx) }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Giropay) }
        attr_accessor :giropay
        # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Gopay) }
        attr_accessor :gopay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Grabpay) }
        attr_accessor :grabpay
        # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::IdBankTransfer)
         }
        attr_accessor :id_bank_transfer
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Ideal) }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::InteracPresent)
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::KakaoPay) }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Klarna) }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Konbini) }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::KrCard) }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Link) }
        attr_accessor :link
        # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::MbWay) }
        attr_accessor :mb_way
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Mobilepay) }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Multibanco) }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::NaverPay) }
        attr_accessor :naver_pay
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Oxxo) }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::P24) }
        attr_accessor :p24
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Payco) }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Paynow) }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Payto) }
        attr_accessor :payto
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Pix) }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Promptpay) }
        attr_accessor :promptpay
        # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Qris) }
        attr_accessor :qris
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::RadarOptions)
         }
        attr_accessor :radar_options
        # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Rechnung) }
        attr_accessor :rechnung
        # If this is a `Revolut Pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::RevolutPay) }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::SamsungPay) }
        attr_accessor :samsung_pay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::SepaDebit) }
        attr_accessor :sepa_debit
        # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Shopeepay) }
        attr_accessor :shopeepay
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Sofort) }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Swish) }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Twint) }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::UsBankAccount)
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::WechatPay) }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Zip) }
        attr_accessor :zip
        sig {
          params(acss_debit: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AcssDebit, affirm: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Affirm, afterpay_clearpay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AfterpayClearpay, alipay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Alipay, allow_redisplay: String, alma: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Alma, amazon_pay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AmazonPay, au_becs_debit: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::AuBecsDebit, bacs_debit: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::BacsDebit, bancontact: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Bancontact, billing_details: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::BillingDetails, blik: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Blik, boleto: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Boleto, cashapp: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Cashapp, customer_balance: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::CustomerBalance, eps: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Eps, fpx: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Fpx, giropay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Giropay, gopay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Gopay, grabpay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Grabpay, id_bank_transfer: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::IdBankTransfer, ideal: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Ideal, interac_present: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::InteracPresent, kakao_pay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::KakaoPay, klarna: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Klarna, konbini: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Konbini, kr_card: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::KrCard, link: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Link, mb_way: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::MbWay, metadata: T::Hash[String, String], mobilepay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Mobilepay, multibanco: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Multibanco, naver_pay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::NaverPay, oxxo: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Oxxo, p24: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::P24, payco: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Payco, paynow: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Paynow, paypal: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Paypal, payto: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Payto, pix: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Pix, promptpay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Promptpay, qris: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Qris, radar_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::RadarOptions, rechnung: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Rechnung, revolut_pay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::RevolutPay, samsung_pay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::SamsungPay, sepa_debit: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::SepaDebit, shopeepay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Shopeepay, sofort: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Sofort, swish: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Swish, twint: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Twint, type: String, us_bank_account: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::UsBankAccount, wechat_pay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::WechatPay, zip: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData::Zip).void
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
      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
            sig { returns(T::Array[String]) }
            attr_accessor :default_for
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(String) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(String) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), default_for: T::Array[String], interval_description: String, payment_schedule: String, transaction_type: String).void
             }
            def initialize(
              custom_mandate_url: nil,
              default_for: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(currency: String, mandate_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions, verification_method: String).void
           }
          def initialize(currency: nil, mandate_options: nil, verification_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams

        end
        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(String) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(Integer) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(Integer) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T::Array[String]) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, currency: String, description: String, end_date: Integer, interval: String, interval_count: Integer, reference: String, start_date: Integer, supported_types: T::Array[String]).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            ); end
          end
          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                sig { returns(String) }
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                sig { returns(String) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(Integer) }
                attr_accessor :cb_score
                sig { params(cb_avalgo: String, cb_exemption: String, cb_score: Integer).void }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(String) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(String) }
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions)
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(String) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: String, cryptogram: String, electronic_commerce_indicator: String, network_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions, requestor_challenge_indicator: String, transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::MandateOptions)
           }
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T::Boolean) }
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          sig { returns(String) }
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(String) }
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure)
           }
          attr_accessor :three_d_secure
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::MandateOptions, moto: T::Boolean, network: String, request_three_d_secure: String, three_d_secure: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure).void
           }
          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams

        end
        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(String) }
          attr_accessor :persistent_token
          sig { params(persistent_token: String).void }
          def initialize(persistent_token: nil); end
        end
        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          sig { returns(String) }
          attr_accessor :billing_agreement_id
          # Attribute for param field currency
          sig { returns(String) }
          attr_accessor :currency
          # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
          sig { returns(T::Array[String]) }
          attr_accessor :subsellers
          sig {
            params(billing_agreement_id: String, currency: String, subsellers: T::Array[String]).void
           }
          def initialize(billing_agreement_id: nil, currency: nil, subsellers: nil); end
        end
        class Payto < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount that will be collected. It is required when `amount_type` is `fixed`.
            sig { returns(Integer) }
            attr_accessor :amount
            # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively.
            sig { returns(String) }
            attr_accessor :amount_type
            # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
            sig { returns(String) }
            attr_accessor :end_date
            # The periodicity at which payments will be collected.
            sig { returns(String) }
            attr_accessor :payment_schedule
            # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
            sig { returns(Integer) }
            attr_accessor :payments_per_period
            # The purpose for which payments are made. Defaults to retail.
            sig { returns(String) }
            attr_accessor :purpose
            # Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
            sig { returns(String) }
            attr_accessor :start_date
            sig {
              params(amount: Integer, amount_type: String, end_date: String, payment_schedule: String, payments_per_period: Integer, purpose: String, start_date: String).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
              end_date: nil,
              payment_schedule: nil,
              payments_per_period: nil,
              purpose: nil,
              start_date: nil
            ); end
          end
          # Additional fields for Mandate creation.
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Payto::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_prefix
            sig { params(reference_prefix: T.nilable(String)).void }
            def initialize(reference_prefix: nil); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions)
           }
          attr_accessor :mandate_options
          sig {
            params(mandate_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions).void
           }
          def initialize(mandate_options: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T::Array[String]) }
              attr_accessor :account_subcategories
              # ID of the institution to use to filter for selectable accounts.
              sig { returns(String) }
              attr_accessor :institution
              sig { params(account_subcategories: T::Array[String], institution: String).void }
              def initialize(account_subcategories: nil, institution: nil); end
            end
            class ManualEntry < Stripe::RequestParams
              # Settings for configuring manual entry of account details.
              sig { returns(String) }
              attr_accessor :mode
              sig { params(mode: String).void }
              def initialize(mode: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method
            sig {
              returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
             }
            attr_accessor :filters
            # Customize manual entry behavior
            sig {
              returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry)
             }
            attr_accessor :manual_entry
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T::Array[String]) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T::Array[String]) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(String) }
            attr_accessor :return_url
            sig {
              params(filters: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, manual_entry: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::ManualEntry, permissions: T::Array[String], prefetch: T::Array[String], return_url: String).void
             }
            def initialize(
              filters: nil,
              manual_entry: nil,
              permissions: nil,
              prefetch: nil,
              return_url: nil
            ); end
          end
          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            sig { returns(T.nilable(String)) }
            attr_accessor :collection_method
            sig { params(collection_method: T.nilable(String)).void }
            def initialize(collection_method: nil); end
          end
          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            sig { returns(T::Array[String]) }
            attr_accessor :requested
            sig { params(requested: T::Array[String]).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions)
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks)
           }
          attr_accessor :networks
          # Bank account verification method.
          sig { returns(String) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, mandate_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions, networks: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks, verification_method: String).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          ); end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit)
         }
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::AmazonPay)
         }
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit)
         }
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card) }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::CardPresent)
         }
        attr_accessor :card_present
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Link) }
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Paypal) }
        attr_accessor :paypal
        # If this is a `payto` SetupIntent, this sub-hash contains details about the PayTo payment method options.
        sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Payto) }
        attr_accessor :payto
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit)
         }
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount)
         }
        attr_accessor :us_bank_account
        sig {
          params(acss_debit: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit, amazon_pay: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::AmazonPay, bacs_debit: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit, card: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Card, card_present: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::CardPresent, link: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Link, paypal: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Paypal, payto: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::Payto, sepa_debit: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit, us_bank_account: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount).void
         }
        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          link: nil,
          paypal: nil,
          payto: nil,
          sepa_debit: nil,
          us_bank_account: nil
        ); end
      end
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(String) }
      attr_accessor :confirmation_token
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Attribute for param field mandate_data
      sig { returns(T.nilable(::Stripe::SetupIntentService::ConfirmParams::MandateData)) }
      attr_accessor :mandate_data
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      sig { returns(String) }
      attr_accessor :payment_method
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      sig { returns(::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions) }
      attr_accessor :payment_method_options
      # The URL to redirect your customer back to after they authenticate on the payment method's app or site.
      # If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
      # This parameter is only used for cards and other redirect-based payment methods.
      sig { returns(String) }
      attr_accessor :return_url
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T::Boolean) }
      attr_accessor :use_stripe_sdk
      sig {
        params(confirmation_token: String, expand: T::Array[String], mandate_data: T.nilable(::Stripe::SetupIntentService::ConfirmParams::MandateData), payment_method: String, payment_method_data: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodData, payment_method_options: ::Stripe::SetupIntentService::ConfirmParams::PaymentMethodOptions, return_url: String, use_stripe_sdk: T::Boolean).void
       }
      def initialize(
        confirmation_token: nil,
        expand: nil,
        mandate_data: nil,
        payment_method: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        return_url: nil,
        use_stripe_sdk: nil
      ); end
    end
    class VerifyMicrodepositsParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      sig { returns(T::Array[Integer]) }
      attr_accessor :amounts
      # A six-character code starting with SM present in the microdeposit sent to the bank account.
      sig { returns(String) }
      attr_accessor :descriptor_code
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig {
        params(amounts: T::Array[Integer], descriptor_code: String, expand: T::Array[String]).void
       }
      def initialize(amounts: nil, descriptor_code: nil, expand: nil); end
    end
    # You can cancel a SetupIntent object when it's in one of these statuses: requires_payment_method, requires_confirmation, or requires_action.
    #
    # After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can't cancel the SetupIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def cancel(intent, params = {}, opts = {}); end

    # Confirm that your customer intends to set up the current or
    # provided payment method. For example, you would confirm a SetupIntent
    # when a customer hits the “Save” button on a payment method management
    # page on your website.
    #
    # If the selected payment method does not require any additional
    # steps from the customer, the SetupIntent will transition to the
    # succeeded status.
    #
    # Otherwise, it will transition to the requires_action status and
    # suggest additional actions via next_action. If setup fails,
    # the SetupIntent will transition to the
    # requires_payment_method status or the canceled status if the
    # confirmation limit is reached.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntentService::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def confirm(intent, params = {}, opts = {}); end

    # Creates a SetupIntent object.
    #
    # After you create the SetupIntent, attach a payment method and [confirm](https://stripe.com/docs/api/setup_intents/confirm)
    # it to collect any required permissions to charge the payment method later.
    sig {
      params(params: T.any(::Stripe::SetupIntentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of SetupIntents.
    sig {
      params(params: T.any(::Stripe::SetupIntentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of a SetupIntent that has previously been created.
    #
    # Client-side retrieval using a publishable key is allowed when the client_secret is provided in the query string.
    #
    # When retrieved with a publishable key, only a subset of properties will be returned. Please refer to the [SetupIntent](https://stripe.com/docs/api#setup_intent_object) object reference for more details.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def retrieve(intent, params = {}, opts = {}); end

    # Updates a SetupIntent object.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntentService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def update(intent, params = {}, opts = {}); end

    # Verifies microdeposits on a SetupIntent object.
    sig {
      params(intent: String, params: T.any(::Stripe::SetupIntentService::VerifyMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SetupIntent)
     }
    def verify_microdeposits(intent, params = {}, opts = {}); end
  end
end