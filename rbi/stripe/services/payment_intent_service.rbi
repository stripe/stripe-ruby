# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentService < StripeService
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp or a dictionary with a number of different query options.
      sig {
        returns(T.nilable(T.any(::Stripe::PaymentIntentService::ListParams::Created, Integer)))
       }
      attr_accessor :created
      # Only return PaymentIntents for the customer that this customer ID specifies.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(created: T.nilable(T.any(::Stripe::PaymentIntentService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticPaymentMethods < Stripe::RequestParams
        # Controls whether this PaymentIntent will accept redirect-based payment methods.
        #
        # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/payment_intents/confirm) this PaymentIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the payment.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redirects
        # Whether this feature is enabled.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(allow_redirects: T.nilable(String), enabled: T::Boolean).void }
        def initialize(allow_redirects: nil, enabled: nil); end
      end
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams; end
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
          sig { returns(T.nilable(Integer)) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::MandateData::CustomerAcceptance::Offline))
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::MandateData::CustomerAcceptance::Online))
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::PaymentIntentService::CreateParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::PaymentIntentService::CreateParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig {
          returns(::Stripe::PaymentIntentService::CreateParams::MandateData::CustomerAcceptance)
         }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: ::Stripe::PaymentIntentService::CreateParams::MandateData::CustomerAcceptance).void
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
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          attr_accessor :sort_code
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
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
            returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::BillingDetails::Address)))
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
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
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
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          attr_accessor :dob
          sig {
            params(dob: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class Mobilepay < Stripe::RequestParams; end
        class Multibanco < Stripe::RequestParams; end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(T.nilable(String)) }
          attr_accessor :funding
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_name
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          attr_accessor :branch_code
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The suffix of the bank account number.
          sig { returns(String) }
          attr_accessor :suffix
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
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams; end
        class Paynow < Stripe::RequestParams; end
        class Paypal < Stripe::RequestParams; end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          attr_accessor :session
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number
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
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AcssDebit))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Affirm))
         }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Alipay))
         }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Alma))
         }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Billie))
         }
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::BillingDetails))
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Blik))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Boleto))
         }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Cashapp))
         }
        attr_accessor :cashapp
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Crypto))
         }
        attr_accessor :crypto
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Eps))
         }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Fpx))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Giropay))
         }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Grabpay))
         }
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Ideal))
         }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Klarna))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Konbini))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::KrCard))
         }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Link))
         }
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::NzBankAccount))
         }
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Oxxo))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::P24))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Payco))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Paynow))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Paypal))
         }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Pix))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Promptpay))
         }
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::RadarOptions))
         }
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Satispay))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Sofort))
         }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Swish))
         }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Twint))
         }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Zip))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData::Zip)).void
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
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
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
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
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
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(T.nilable(String)) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
             }
            def initialize(
              custom_mandate_url: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class Affirm < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class AfterpayClearpay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
        end
        class Alipay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class AuBecsDebit < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
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
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::BacsDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_language
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Billie < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(T.nilable(String)) }
          attr_accessor :code
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(code: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :count
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              attr_accessor :interval
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
               }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :enabled
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            attr_accessor :plan
            sig {
              params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::Installments::Plan))).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
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
                sig { returns(T.nilable(String)) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                attr_accessor :cb_score
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :electronic_commerce_indicator
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(T.nilable(String)) }
            attr_accessor :exemption_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: String, electronic_commerce_indicator: T.nilable(String), exemption_indicator: T.nilable(String), network_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              exemption_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(T.nilable(String)) }
          attr_accessor :cvc_token
          # Installment configuration for payments attempted on this PaymentIntent.
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::Installments))
           }
          attr_accessor :installments
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          attr_accessor :mandate_options
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :moto
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          attr_accessor :network
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_incremental_authorization
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_multicapture
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_overcapture
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_three_d_secure
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :require_cvc_recollection
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kana
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kanji
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          attr_accessor :three_d_secure
          sig {
            params(capture_method: T.nilable(String), cvc_token: T.nilable(String), installments: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::Installments), mandate_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_extended_authorization: T.nilable(String), request_incremental_authorization: T.nilable(String), request_multicapture: T.nilable(String), request_overcapture: T.nilable(String), request_three_d_secure: T.nilable(String), require_cvc_recollection: T.nilable(T::Boolean), setup_future_usage: T.nilable(T.any(String, String)), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), three_d_secure: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(T.nilable(String)) }
            attr_accessor :requested_priority
            sig { params(requested_priority: T.nilable(String)).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :request_incremental_authorization_support
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CardPresent::Routing))
           }
          attr_accessor :routing
          sig {
            params(request_extended_authorization: T.nilable(T::Boolean), request_incremental_authorization_support: T.nilable(T::Boolean), routing: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CardPresent::Routing)).void
           }
          def initialize(
            request_extended_authorization: nil,
            request_incremental_authorization_support: nil,
            routing: nil
          ); end
        end
        class Cashapp < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Crypto < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class CustomerBalance < Stripe::RequestParams
          class BankTransfer < Stripe::RequestParams
            class EuBankTransfer < Stripe::RequestParams
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              sig { returns(String) }
              attr_accessor :country
              sig { params(country: String).void }
              def initialize(country: nil); end
            end
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            attr_accessor :eu_bank_transfer
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested_address_types
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(eu_bank_transfer: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          attr_accessor :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          attr_accessor :funding_type
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(bank_transfer: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
        end
        class Eps < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Giropay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Grabpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Ideal < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Klarna < Stripe::RequestParams
          class OnDemand < Stripe::RequestParams
            # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :average_amount
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_amount
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_amount
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_interval
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            attr_accessor :purchase_interval_count
            sig {
              params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
             }
            def initialize(
              average_amount: nil,
              maximum_amount: nil,
              minimum_amount: nil,
              purchase_interval: nil,
              purchase_interval_count: nil
            ); end
          end
          class Subscription < Stripe::RequestParams
            class NextBilling < Stripe::RequestParams
              # The amount of the next charge for the subscription.
              sig { returns(Integer) }
              attr_accessor :amount
              # The date of the next charge for the subscription in YYYY-MM-DD format.
              sig { returns(String) }
              attr_accessor :date
              sig { params(amount: Integer, date: String).void }
              def initialize(amount: nil, date: nil); end
            end
            # Unit of time between subscription charges.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Name for subscription.
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            # Describes the upcoming charge for this subscription.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            attr_accessor :next_billing
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            attr_accessor :reference
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # On-demand details if setting up or charging an on-demand payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          attr_accessor :on_demand
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Subscription details if setting up or charging a subscription.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          attr_accessor :subscriptions
          sig {
            params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            capture_method: nil,
            on_demand: nil,
            preferred_locale: nil,
            setup_future_usage: nil,
            subscriptions: nil
          ); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          attr_accessor :confirmation_number
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :expires_after_days
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :expires_at
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_description
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(T.any(String, Integer)), expires_at: T.nilable(T.any(String, Integer)), product_description: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            confirmation_number: nil,
            expires_after_days: nil,
            expires_at: nil,
            product_description: nil,
            setup_future_usage: nil
          ); end
        end
        class KrCard < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Link < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          attr_accessor :persistent_token
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Multibanco < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class P24 < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :tos_shown_and_accepted
          sig {
            params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
           }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Paynow < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :risk_correlation_id
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), reference: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(
            capture_method: nil,
            preferred_locale: nil,
            reference: nil,
            risk_correlation_id: nil,
            setup_future_usage: nil
          ); end
        end
        class Pix < Stripe::RequestParams
          # Determines if the amount includes the IOF tax. Defaults to `never`.
          sig { returns(T.nilable(String)) }
          attr_accessor :amount_includes_iof
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_seconds
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(amount_includes_iof: T.nilable(String), expires_after_seconds: T.nilable(Integer), expires_at: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            amount_includes_iof: nil,
            expires_after_seconds: nil,
            expires_at: nil,
            setup_future_usage: nil
          ); end
        end
        class Promptpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Satispay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
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
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :preferred_language
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(reference: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(reference: nil, setup_future_usage: nil); end
        end
        class Twint < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :account_subcategories
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_url
            sig {
              params(filters: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
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
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          attr_accessor :networks
          # Preferred transaction settlement speed
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :preferred_settlement_speed
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount::Networks), preferred_settlement_speed: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(T.nilable(String)) }
          attr_accessor :app_id
          # The client type that the end customer will pay from
          sig { returns(T.nilable(String)) }
          attr_accessor :client
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
        end
        class Zip < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AcssDebit)))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Affirm)))
         }
        attr_accessor :affirm
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        attr_accessor :afterpay_clearpay
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Alipay)))
         }
        attr_accessor :alipay
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Alma)))
         }
        attr_accessor :alma
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AmazonPay)))
         }
        attr_accessor :amazon_pay
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AuBecsDebit)))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::BacsDebit)))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Bancontact)))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Billie)))
         }
        attr_accessor :billie
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Blik)))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Boleto)))
         }
        attr_accessor :boleto
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card)))
         }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CardPresent)))
         }
        attr_accessor :card_present
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Cashapp)))
         }
        attr_accessor :cashapp
        # If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Crypto)))
         }
        attr_accessor :crypto
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CustomerBalance)))
         }
        attr_accessor :customer_balance
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Eps)))
         }
        attr_accessor :eps
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Fpx)))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Giropay)))
         }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Grabpay)))
         }
        attr_accessor :grabpay
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Ideal)))
         }
        attr_accessor :ideal
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::InteracPresent)))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::KakaoPay)))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna)))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Konbini)))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::KrCard)))
         }
        attr_accessor :kr_card
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Link)))
         }
        attr_accessor :link
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Mobilepay)))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Multibanco)))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::NaverPay)))
         }
        attr_accessor :naver_pay
        # If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::NzBankAccount)))
         }
        attr_accessor :nz_bank_account
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Oxxo)))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::P24)))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::PayByBank)))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Payco)))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Paynow)))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Paypal)))
         }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Pix)))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Promptpay)))
         }
        attr_accessor :promptpay
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::RevolutPay)))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::SamsungPay)))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Satispay)))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::SepaDebit)))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Sofort)))
         }
        attr_accessor :sofort
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Swish)))
         }
        attr_accessor :swish
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Twint)))
         }
        attr_accessor :twint
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount)))
         }
        attr_accessor :us_bank_account
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::WechatPay)))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Zip)))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AcssDebit)), affirm: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Affirm)), afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AfterpayClearpay)), alipay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Alipay)), alma: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Alma)), amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AmazonPay)), au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::AuBecsDebit)), bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::BacsDebit)), bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Bancontact)), billie: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Billie)), blik: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Blik)), boleto: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Boleto)), card: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Card)), card_present: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CardPresent)), cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Cashapp)), crypto: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Crypto)), customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::CustomerBalance)), eps: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Eps)), fpx: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Fpx)), giropay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Giropay)), grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Grabpay)), ideal: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Ideal)), interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::InteracPresent)), kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::KakaoPay)), klarna: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Klarna)), konbini: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Konbini)), kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::KrCard)), link: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Link)), mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Mobilepay)), multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Multibanco)), naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::NaverPay)), nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::NzBankAccount)), oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Oxxo)), p24: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::P24)), pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::PayByBank)), payco: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Payco)), paynow: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Paynow)), paypal: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Paypal)), pix: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Pix)), promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Promptpay)), revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::RevolutPay)), samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::SamsungPay)), satispay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Satispay)), sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::SepaDebit)), sofort: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Sofort)), swish: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Swish)), twint: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Twint)), us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::UsBankAccount)), wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::WechatPay)), zip: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions::Zip))).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
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
          pix: nil,
          promptpay: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(T.nilable(String)) }
        attr_accessor :session
        sig { params(session: T.nilable(String)).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
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
        # Shipping address.
        sig { returns(::Stripe::PaymentIntentService::CreateParams::Shipping::Address) }
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::PaymentIntentService::CreateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        # The amount is capped at the total transaction amount and if no amount is set,
        # the full amount is transferred.
        #
        # If you intend to collect a fee and you need a more robust reporting experience, using
        # [application_fee_amount](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-application_fee_amount)
        # might be a better fit for your integration.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # If specified, successful charges will be attributed to the destination
        # account for tax reporting, and the funds from charges will be transferred
        # to the destination account. The ID of the resulting transfer will be
        # returned on the successful charge's `transfer` field.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: T.nilable(Integer), destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(Integer) }
      attr_accessor :amount
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # When you enable this parameter, this PaymentIntent accepts payment methods that you enable in the Dashboard and that are compatible with this PaymentIntent's other parameters.
      sig {
        returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::AutomaticPaymentMethods))
       }
      attr_accessor :automatic_payment_methods
      # Controls when the funds will be captured from the customer's account.
      sig { returns(T.nilable(String)) }
      attr_accessor :capture_method
      # Set to `true` to attempt to [confirm this PaymentIntent](https://stripe.com/docs/api/payment_intents/confirm) immediately. This parameter defaults to `false`. When creating and confirming a PaymentIntent at the same time, you can also provide the parameters available in the [Confirm API](https://stripe.com/docs/api/payment_intents/confirm).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :confirm
      # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :confirmation_method
      # ID of the ConfirmationToken used to confirm this PaymentIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      attr_accessor :confirmation_token
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # ID of the Customer this PaymentIntent belongs to, if one exists.
      #
      # Payment methods attached to other Customers cannot be used with this PaymentIntent.
      #
      # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. Use this parameter for simpler integrations that don't handle customer actions, such as [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication). This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :error_on_requires_action
      # The list of payment method types to exclude from use with this payment.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :excluded_payment_method_types
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # ID of the mandate that's used for this payment. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(String)) }
      attr_accessor :mandate
      # This hash contains details about the Mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig {
        returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::MandateData)))
       }
      attr_accessor :mandate_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://stripe.com/docs/payments/cards/charging-saved-cards). This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(T.any(T::Boolean, String))) }
      attr_accessor :off_session
      # The Stripe account ID that these funds are intended for. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods#compatibility) object) to attach to this PaymentIntent.
      #
      # If you don't provide the `payment_method` parameter or the `source` parameter with `confirm=true`, `source` automatically populates with `customer.default_source` to improve migration for users of the Charges API. We recommend that you explicitly provide the `payment_method` moving forward.
      # If the payment method is attached to a Customer, you must also provide the ID of that Customer as the [customer](https://stripe.com/docs/api#create_payment_intent-customer) parameter of this PaymentIntent.
      # end
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this PaymentIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_configuration
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData)) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions)) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, a card) that this PaymentIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :payment_method_types
      # Options to configure Radar. Learn more about [Radar Sessions](https://stripe.com/docs/radar/radar-session).
      sig { returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::RadarOptions)) }
      attr_accessor :radar_options
      # Email address to send the receipt to. If you specify `receipt_email` for a payment in live mode, you send a receipt regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url
      # Indicates that you intend to make future payments with this PaymentIntent's payment method.
      #
      # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
      #
      # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
      #
      # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
      sig { returns(T.nilable(String)) }
      attr_accessor :setup_future_usage
      # Shipping information for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::Shipping)) }
      attr_accessor :shipping
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor_suffix
      # The parameters that you can use to automatically create a Transfer.
      # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(::Stripe::PaymentIntentService::CreateParams::TransferData)) }
      attr_accessor :transfer_data
      # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :use_stripe_sdk
      sig {
        params(amount: Integer, application_fee_amount: T.nilable(Integer), automatic_payment_methods: T.nilable(::Stripe::PaymentIntentService::CreateParams::AutomaticPaymentMethods), capture_method: T.nilable(String), confirm: T.nilable(T::Boolean), confirmation_method: T.nilable(String), confirmation_token: T.nilable(String), currency: String, customer: T.nilable(String), description: T.nilable(String), error_on_requires_action: T.nilable(T::Boolean), excluded_payment_method_types: T.nilable(T::Array[String]), expand: T.nilable(T::Array[String]), mandate: T.nilable(String), mandate_data: T.nilable(T.any(String, ::Stripe::PaymentIntentService::CreateParams::MandateData)), metadata: T.nilable(T::Hash[String, String]), off_session: T.nilable(T.any(T::Boolean, String)), on_behalf_of: T.nilable(String), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), radar_options: T.nilable(::Stripe::PaymentIntentService::CreateParams::RadarOptions), receipt_email: T.nilable(String), return_url: T.nilable(String), setup_future_usage: T.nilable(String), shipping: T.nilable(::Stripe::PaymentIntentService::CreateParams::Shipping), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntentService::CreateParams::TransferData), transfer_group: T.nilable(String), use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        automatic_payment_methods: nil,
        capture_method: nil,
        confirm: nil,
        confirmation_method: nil,
        confirmation_token: nil,
        currency: nil,
        customer: nil,
        description: nil,
        error_on_requires_action: nil,
        excluded_payment_method_types: nil,
        expand: nil,
        mandate: nil,
        mandate_data: nil,
        metadata: nil,
        off_session: nil,
        on_behalf_of: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        radar_options: nil,
        receipt_email: nil,
        return_url: nil,
        setup_future_usage: nil,
        shipping: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil,
        use_stripe_sdk: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # The client secret of the PaymentIntent. We require it if you use a publishable key to retrieve the source.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(client_secret: T.nilable(String), expand: T.nilable(T::Array[String])).void }
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
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          attr_accessor :sort_code
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
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
            returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::BillingDetails::Address)))
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
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
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
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Klarna::Dob))
           }
          attr_accessor :dob
          sig {
            params(dob: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class Mobilepay < Stripe::RequestParams; end
        class Multibanco < Stripe::RequestParams; end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(T.nilable(String)) }
          attr_accessor :funding
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_name
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          attr_accessor :branch_code
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The suffix of the bank account number.
          sig { returns(String) }
          attr_accessor :suffix
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
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams; end
        class Paynow < Stripe::RequestParams; end
        class Paypal < Stripe::RequestParams; end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          attr_accessor :session
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number
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
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AcssDebit))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Affirm))
         }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Alipay))
         }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Alma))
         }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Billie))
         }
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::BillingDetails))
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Blik))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Boleto))
         }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Cashapp))
         }
        attr_accessor :cashapp
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Crypto))
         }
        attr_accessor :crypto
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Eps))
         }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Fpx))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Giropay))
         }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Grabpay))
         }
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Ideal))
         }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Klarna))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Konbini))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::KrCard))
         }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Link))
         }
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::NzBankAccount))
         }
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Oxxo))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::P24))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Payco))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Paynow))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Paypal))
         }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Pix))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Promptpay))
         }
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::RadarOptions))
         }
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Satispay))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Sofort))
         }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Swish))
         }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Twint))
         }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Zip))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData::Zip)).void
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
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
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
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
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
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(T.nilable(String)) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
             }
            def initialize(
              custom_mandate_url: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class Affirm < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class AfterpayClearpay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
        end
        class Alipay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class AuBecsDebit < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
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
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::BacsDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_language
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Billie < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(T.nilable(String)) }
          attr_accessor :code
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(code: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :count
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              attr_accessor :interval
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
               }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :enabled
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            attr_accessor :plan
            sig {
              params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::Installments::Plan))).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
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
                sig { returns(T.nilable(String)) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                attr_accessor :cb_score
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :electronic_commerce_indicator
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(T.nilable(String)) }
            attr_accessor :exemption_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: String, electronic_commerce_indicator: T.nilable(String), exemption_indicator: T.nilable(String), network_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              exemption_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(T.nilable(String)) }
          attr_accessor :cvc_token
          # Installment configuration for payments attempted on this PaymentIntent.
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::Installments))
           }
          attr_accessor :installments
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::MandateOptions))
           }
          attr_accessor :mandate_options
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :moto
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          attr_accessor :network
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_incremental_authorization
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_multicapture
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_overcapture
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_three_d_secure
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :require_cvc_recollection
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kana
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kanji
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          attr_accessor :three_d_secure
          sig {
            params(capture_method: T.nilable(String), cvc_token: T.nilable(String), installments: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::Installments), mandate_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_extended_authorization: T.nilable(String), request_incremental_authorization: T.nilable(String), request_multicapture: T.nilable(String), request_overcapture: T.nilable(String), request_three_d_secure: T.nilable(String), require_cvc_recollection: T.nilable(T::Boolean), setup_future_usage: T.nilable(T.any(String, String)), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), three_d_secure: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(T.nilable(String)) }
            attr_accessor :requested_priority
            sig { params(requested_priority: T.nilable(String)).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :request_incremental_authorization_support
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CardPresent::Routing))
           }
          attr_accessor :routing
          sig {
            params(request_extended_authorization: T.nilable(T::Boolean), request_incremental_authorization_support: T.nilable(T::Boolean), routing: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CardPresent::Routing)).void
           }
          def initialize(
            request_extended_authorization: nil,
            request_incremental_authorization_support: nil,
            routing: nil
          ); end
        end
        class Cashapp < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Crypto < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class CustomerBalance < Stripe::RequestParams
          class BankTransfer < Stripe::RequestParams
            class EuBankTransfer < Stripe::RequestParams
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              sig { returns(String) }
              attr_accessor :country
              sig { params(country: String).void }
              def initialize(country: nil); end
            end
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            attr_accessor :eu_bank_transfer
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested_address_types
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(eu_bank_transfer: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          attr_accessor :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          attr_accessor :funding_type
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(bank_transfer: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
        end
        class Eps < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Giropay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Grabpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Ideal < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Klarna < Stripe::RequestParams
          class OnDemand < Stripe::RequestParams
            # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :average_amount
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_amount
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_amount
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_interval
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            attr_accessor :purchase_interval_count
            sig {
              params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
             }
            def initialize(
              average_amount: nil,
              maximum_amount: nil,
              minimum_amount: nil,
              purchase_interval: nil,
              purchase_interval_count: nil
            ); end
          end
          class Subscription < Stripe::RequestParams
            class NextBilling < Stripe::RequestParams
              # The amount of the next charge for the subscription.
              sig { returns(Integer) }
              attr_accessor :amount
              # The date of the next charge for the subscription in YYYY-MM-DD format.
              sig { returns(String) }
              attr_accessor :date
              sig { params(amount: Integer, date: String).void }
              def initialize(amount: nil, date: nil); end
            end
            # Unit of time between subscription charges.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Name for subscription.
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            # Describes the upcoming charge for this subscription.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            attr_accessor :next_billing
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            attr_accessor :reference
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # On-demand details if setting up or charging an on-demand payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          attr_accessor :on_demand
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Subscription details if setting up or charging a subscription.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          attr_accessor :subscriptions
          sig {
            params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            capture_method: nil,
            on_demand: nil,
            preferred_locale: nil,
            setup_future_usage: nil,
            subscriptions: nil
          ); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          attr_accessor :confirmation_number
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :expires_after_days
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :expires_at
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_description
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(T.any(String, Integer)), expires_at: T.nilable(T.any(String, Integer)), product_description: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            confirmation_number: nil,
            expires_after_days: nil,
            expires_at: nil,
            product_description: nil,
            setup_future_usage: nil
          ); end
        end
        class KrCard < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Link < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          attr_accessor :persistent_token
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Multibanco < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class P24 < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :tos_shown_and_accepted
          sig {
            params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
           }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Paynow < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :risk_correlation_id
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), reference: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(
            capture_method: nil,
            preferred_locale: nil,
            reference: nil,
            risk_correlation_id: nil,
            setup_future_usage: nil
          ); end
        end
        class Pix < Stripe::RequestParams
          # Determines if the amount includes the IOF tax. Defaults to `never`.
          sig { returns(T.nilable(String)) }
          attr_accessor :amount_includes_iof
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_seconds
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(amount_includes_iof: T.nilable(String), expires_after_seconds: T.nilable(Integer), expires_at: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            amount_includes_iof: nil,
            expires_after_seconds: nil,
            expires_at: nil,
            setup_future_usage: nil
          ); end
        end
        class Promptpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Satispay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
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
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :preferred_language
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(reference: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(reference: nil, setup_future_usage: nil); end
        end
        class Twint < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :account_subcategories
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_url
            sig {
              params(filters: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
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
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          attr_accessor :networks
          # Preferred transaction settlement speed
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :preferred_settlement_speed
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount::Networks), preferred_settlement_speed: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(T.nilable(String)) }
          attr_accessor :app_id
          # The client type that the end customer will pay from
          sig { returns(T.nilable(String)) }
          attr_accessor :client
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
        end
        class Zip < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AcssDebit)))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Affirm)))
         }
        attr_accessor :affirm
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        attr_accessor :afterpay_clearpay
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Alipay)))
         }
        attr_accessor :alipay
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Alma)))
         }
        attr_accessor :alma
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AmazonPay)))
         }
        attr_accessor :amazon_pay
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AuBecsDebit)))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::BacsDebit)))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Bancontact)))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Billie)))
         }
        attr_accessor :billie
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Blik)))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Boleto)))
         }
        attr_accessor :boleto
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card)))
         }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CardPresent)))
         }
        attr_accessor :card_present
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Cashapp)))
         }
        attr_accessor :cashapp
        # If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Crypto)))
         }
        attr_accessor :crypto
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CustomerBalance)))
         }
        attr_accessor :customer_balance
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Eps)))
         }
        attr_accessor :eps
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Fpx)))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Giropay)))
         }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Grabpay)))
         }
        attr_accessor :grabpay
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Ideal)))
         }
        attr_accessor :ideal
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::InteracPresent)))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::KakaoPay)))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna)))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Konbini)))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::KrCard)))
         }
        attr_accessor :kr_card
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Link)))
         }
        attr_accessor :link
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Mobilepay)))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Multibanco)))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::NaverPay)))
         }
        attr_accessor :naver_pay
        # If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::NzBankAccount)))
         }
        attr_accessor :nz_bank_account
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Oxxo)))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::P24)))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::PayByBank)))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Payco)))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Paynow)))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Paypal)))
         }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Pix)))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Promptpay)))
         }
        attr_accessor :promptpay
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::RevolutPay)))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::SamsungPay)))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Satispay)))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::SepaDebit)))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Sofort)))
         }
        attr_accessor :sofort
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Swish)))
         }
        attr_accessor :swish
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Twint)))
         }
        attr_accessor :twint
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount)))
         }
        attr_accessor :us_bank_account
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::WechatPay)))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Zip)))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AcssDebit)), affirm: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Affirm)), afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AfterpayClearpay)), alipay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Alipay)), alma: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Alma)), amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AmazonPay)), au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::AuBecsDebit)), bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::BacsDebit)), bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Bancontact)), billie: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Billie)), blik: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Blik)), boleto: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Boleto)), card: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Card)), card_present: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CardPresent)), cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Cashapp)), crypto: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Crypto)), customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::CustomerBalance)), eps: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Eps)), fpx: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Fpx)), giropay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Giropay)), grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Grabpay)), ideal: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Ideal)), interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::InteracPresent)), kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::KakaoPay)), klarna: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Klarna)), konbini: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Konbini)), kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::KrCard)), link: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Link)), mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Mobilepay)), multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Multibanco)), naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::NaverPay)), nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::NzBankAccount)), oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Oxxo)), p24: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::P24)), pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::PayByBank)), payco: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Payco)), paynow: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Paynow)), paypal: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Paypal)), pix: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Pix)), promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Promptpay)), revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::RevolutPay)), samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::SamsungPay)), satispay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Satispay)), sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::SepaDebit)), sofort: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Sofort)), swish: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Swish)), twint: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Twint)), us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::UsBankAccount)), wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::WechatPay)), zip: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions::Zip))).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
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
          pix: nil,
          promptpay: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
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
        # Shipping address.
        sig { returns(::Stripe::PaymentIntentService::UpdateParams::Shipping::Address) }
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::PaymentIntentService::UpdateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(T.any(String, Integer))) }
      attr_accessor :application_fee_amount
      # Controls when the funds will be captured from the customer's account.
      sig { returns(T.nilable(String)) }
      attr_accessor :capture_method
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # ID of the Customer this PaymentIntent belongs to, if one exists.
      #
      # Payment methods attached to other Customers cannot be used with this PaymentIntent.
      #
      # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent. To unset this field to null, pass in an empty string.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this PaymentIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_configuration
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData)) }
      attr_accessor :payment_method_data
      # Payment-method-specific configuration for this PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions)) }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :payment_method_types
      # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
      # Indicates that you intend to make future payments with this PaymentIntent's payment method.
      #
      # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
      #
      # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
      #
      # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
      #
      # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
      sig { returns(T.nilable(T.any(String, String))) }
      attr_accessor :setup_future_usage
      # Shipping information for this PaymentIntent.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::Shipping)))
       }
      attr_accessor :shipping
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor_suffix
      # Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(::Stripe::PaymentIntentService::UpdateParams::TransferData)) }
      attr_accessor :transfer_data
      # A string that identifies the resulting payment as part of a group. You can only provide `transfer_group` if it hasn't been set. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
      sig {
        params(amount: T.nilable(Integer), application_fee_amount: T.nilable(T.any(String, Integer)), capture_method: T.nilable(String), currency: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_data: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::PaymentIntentService::UpdateParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), receipt_email: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String)), shipping: T.nilable(T.any(String, ::Stripe::PaymentIntentService::UpdateParams::Shipping)), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntentService::UpdateParams::TransferData), transfer_group: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        capture_method: nil,
        currency: nil,
        customer: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        receipt_email: nil,
        setup_future_usage: nil,
        shipping: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for payment intents](https://stripe.com/docs/search#query-fields-for-payment-intents).
      sig { returns(String) }
      attr_accessor :query
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class ApplyCustomerBalanceParams < Stripe::RequestParams
      # Amount that you intend to apply to this PaymentIntent from the customer’s cash balance. If the PaymentIntent was created by an Invoice, the full amount of the PaymentIntent is applied regardless of this parameter.
      #
      # A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (for example, 100 cents to charge 1 USD or 100 to charge 100 JPY, a zero-decimal currency). The maximum amount is the amount of the PaymentIntent.
      #
      # When you omit the amount, it defaults to the remaining amount requested on the PaymentIntent.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig {
        params(amount: T.nilable(Integer), currency: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(amount: nil, currency: nil, expand: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Reason for canceling this PaymentIntent. Possible values are: `duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_reason
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig {
        params(cancellation_reason: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(cancellation_reason: nil, expand: nil); end
    end
    class CaptureParams < Stripe::RequestParams
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Defaults to the full `amount_capturable` if it's not provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_to_capture
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://stripe.com/docs/payments/multicapture) is available for PaymentIntents.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :final_capture
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor_suffix
      # The parameters that you can use to automatically create a transfer after the payment
      # is captured. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(::Stripe::PaymentIntentService::CaptureParams::TransferData)) }
      attr_accessor :transfer_data
      sig {
        params(amount_to_capture: T.nilable(Integer), application_fee_amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), final_capture: T.nilable(T::Boolean), metadata: T.nilable(T.any(String, T::Hash[String, String])), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntentService::CaptureParams::TransferData)).void
       }
      def initialize(
        amount_to_capture: nil,
        application_fee_amount: nil,
        expand: nil,
        final_capture: nil,
        metadata: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil
      ); end
    end
    class ConfirmParams < Stripe::RequestParams
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams; end
          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig { params(ip_address: T.nilable(String), user_agent: T.nilable(String)).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # The time at which the customer accepted the Mandate.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::MandateData::CustomerAcceptance::Offline))
           }
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::MandateData::CustomerAcceptance::Online))
           }
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(accepted_at: T.nilable(Integer), offline: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::MandateData::CustomerAcceptance::Offline), online: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::MandateData::CustomerAcceptance::Online), type: String).void
           }
          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil); end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::MandateData::CustomerAcceptance))
         }
        attr_accessor :customer_acceptance
        sig {
          params(customer_acceptance: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::MandateData::CustomerAcceptance)).void
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
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
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
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          attr_accessor :sort_code
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
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
            returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::BillingDetails::Address)))
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
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
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
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Klarna::Dob))
           }
          attr_accessor :dob
          sig {
            params(dob: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class Mobilepay < Stripe::RequestParams; end
        class Multibanco < Stripe::RequestParams; end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(T.nilable(String)) }
          attr_accessor :funding
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_name
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          attr_accessor :branch_code
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The suffix of the bank account number.
          sig { returns(String) }
          attr_accessor :suffix
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
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams; end
        class Paynow < Stripe::RequestParams; end
        class Paypal < Stripe::RequestParams; end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          attr_accessor :session
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number
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
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AcssDebit))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Affirm))
         }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Alipay))
         }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Alma))
         }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Billie))
         }
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::BillingDetails))
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Blik))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Boleto))
         }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Cashapp))
         }
        attr_accessor :cashapp
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Crypto))
         }
        attr_accessor :crypto
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Eps))
         }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Fpx))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Giropay))
         }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Grabpay))
         }
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Ideal))
         }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Klarna))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Konbini))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::KrCard))
         }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Link))
         }
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::NzBankAccount))
         }
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Oxxo))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::P24))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Payco))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Paynow))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Paypal))
         }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Pix))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Promptpay))
         }
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::RadarOptions))
         }
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Satispay))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Sofort))
         }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Swish))
         }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Twint))
         }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Zip))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData::Zip)).void
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
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
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
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
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
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            sig { returns(T.nilable(String)) }
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_type
            sig {
              params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
             }
            def initialize(
              custom_mandate_url: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            ); end
          end
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            mandate_options: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class Affirm < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Preferred language of the Affirm authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil); end
        end
        class AfterpayClearpay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
          # This field differs from the statement descriptor and item name.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
        end
        class Alipay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class Alma < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class AmazonPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class AuBecsDebit < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
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
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Bancontact < Stripe::RequestParams
          # Preferred language of the Bancontact authorization page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_language
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Billie < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Blik < Stripe::RequestParams
          # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
          sig { returns(T.nilable(String)) }
          attr_accessor :code
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(code: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(code: nil, setup_future_usage: nil); end
        end
        class Boleto < Stripe::RequestParams
          # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :count
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              attr_accessor :interval
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
               }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # Setting to true enables installments for this PaymentIntent.
            # This will cause the response to contain a list of available installment plans.
            # Setting to false will prevent any selected plan from applying to a charge.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :enabled
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan)))
             }
            attr_accessor :plan
            sig {
              params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::Installments::Plan))).void
             }
            def initialize(enabled: nil, plan: nil); end
          end
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            sig { returns(Integer) }
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            sig { returns(String) }
            attr_accessor :amount_type
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            sig { returns(String) }
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            sig { returns(Integer) }
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :supported_types
            sig {
              params(amount: Integer, amount_type: String, description: T.nilable(String), end_date: T.nilable(Integer), interval: String, interval_count: T.nilable(Integer), reference: String, start_date: Integer, supported_types: T.nilable(T::Array[String])).void
             }
            def initialize(
              amount: nil,
              amount_type: nil,
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
                sig { returns(T.nilable(String)) }
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                sig { returns(T.nilable(Integer)) }
                attr_accessor :cb_score
                sig {
                  params(cb_avalgo: String, cb_exemption: T.nilable(String), cb_score: T.nilable(Integer)).void
                 }
                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil); end
              end
              # Cartes Bancaires-specific 3DS fields.
              sig {
                returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires))
               }
              attr_accessor :cartes_bancaires
              sig {
                params(cartes_bancaires: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions::CartesBancaires)).void
               }
              def initialize(cartes_bancaires: nil); end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            sig { returns(T.nilable(String)) }
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            sig { returns(String) }
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            sig { returns(T.nilable(String)) }
            attr_accessor :electronic_commerce_indicator
            # The exemption requested via 3DS and accepted by the issuer at authentication time.
            sig { returns(T.nilable(String)) }
            attr_accessor :exemption_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions))
             }
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            sig { returns(T.nilable(String)) }
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            sig { returns(String) }
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            sig { returns(String) }
            attr_accessor :version
            sig {
              params(ares_trans_status: T.nilable(String), cryptogram: String, electronic_commerce_indicator: T.nilable(String), exemption_indicator: T.nilable(String), network_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure::NetworkOptions), requestor_challenge_indicator: T.nilable(String), transaction_id: String, version: String).void
             }
            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              exemption_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
          sig { returns(T.nilable(String)) }
          attr_accessor :cvc_token
          # Installment configuration for payments attempted on this PaymentIntent.
          #
          # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::Installments))
           }
          attr_accessor :installments
          # Configuration options for setting up an eMandate for cards issued in India.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::MandateOptions))
           }
          attr_accessor :mandate_options
          # When specified, this parameter indicates that a transaction will be marked
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :moto
          # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
          sig { returns(T.nilable(String)) }
          attr_accessor :network
          # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_incremental_authorization
          # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_multicapture
          # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_overcapture
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_three_d_secure
          # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :require_cvc_recollection
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kana
          # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix_kanji
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure))
           }
          attr_accessor :three_d_secure
          sig {
            params(capture_method: T.nilable(String), cvc_token: T.nilable(String), installments: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::Installments), mandate_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::MandateOptions), moto: T.nilable(T::Boolean), network: T.nilable(String), request_extended_authorization: T.nilable(String), request_incremental_authorization: T.nilable(String), request_multicapture: T.nilable(String), request_overcapture: T.nilable(String), request_three_d_secure: T.nilable(String), require_cvc_recollection: T.nilable(T::Boolean), setup_future_usage: T.nilable(T.any(String, String)), statement_descriptor_suffix_kana: T.nilable(String), statement_descriptor_suffix_kanji: T.nilable(String), three_d_secure: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card::ThreeDSecure)).void
           }
          def initialize(
            capture_method: nil,
            cvc_token: nil,
            installments: nil,
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_extended_authorization: nil,
            request_incremental_authorization: nil,
            request_multicapture: nil,
            request_overcapture: nil,
            request_three_d_secure: nil,
            require_cvc_recollection: nil,
            setup_future_usage: nil,
            statement_descriptor_suffix_kana: nil,
            statement_descriptor_suffix_kanji: nil,
            three_d_secure: nil
          ); end
        end
        class CardPresent < Stripe::RequestParams
          class Routing < Stripe::RequestParams
            # Routing requested priority
            sig { returns(T.nilable(String)) }
            attr_accessor :requested_priority
            sig { params(requested_priority: T.nilable(String)).void }
            def initialize(requested_priority: nil); end
          end
          # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :request_extended_authorization
          # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :request_incremental_authorization_support
          # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CardPresent::Routing))
           }
          attr_accessor :routing
          sig {
            params(request_extended_authorization: T.nilable(T::Boolean), request_incremental_authorization_support: T.nilable(T::Boolean), routing: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CardPresent::Routing)).void
           }
          def initialize(
            request_extended_authorization: nil,
            request_incremental_authorization_support: nil,
            routing: nil
          ); end
        end
        class Cashapp < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Crypto < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class CustomerBalance < Stripe::RequestParams
          class BankTransfer < Stripe::RequestParams
            class EuBankTransfer < Stripe::RequestParams
              # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
              sig { returns(String) }
              attr_accessor :country
              sig { params(country: String).void }
              def initialize(country: nil); end
            end
            # Configuration for the eu_bank_transfer funding type.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
             }
            attr_accessor :eu_bank_transfer
            # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
            #
            # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested_address_types
            # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(eu_bank_transfer: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
             }
            def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
          end
          # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
           }
          attr_accessor :bank_transfer
          # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
          sig { returns(T.nilable(String)) }
          attr_accessor :funding_type
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(bank_transfer: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
        end
        class Eps < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Giropay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Grabpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Ideal < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
          def initialize(setup_future_usage: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Klarna < Stripe::RequestParams
          class OnDemand < Stripe::RequestParams
            # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :average_amount
            # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :maximum_amount
            # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :minimum_amount
            # Interval at which the customer is making purchases
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_interval
            # The number of `purchase_interval` between charges
            sig { returns(T.nilable(Integer)) }
            attr_accessor :purchase_interval_count
            sig {
              params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
             }
            def initialize(
              average_amount: nil,
              maximum_amount: nil,
              minimum_amount: nil,
              purchase_interval: nil,
              purchase_interval_count: nil
            ); end
          end
          class Subscription < Stripe::RequestParams
            class NextBilling < Stripe::RequestParams
              # The amount of the next charge for the subscription.
              sig { returns(Integer) }
              attr_accessor :amount
              # The date of the next charge for the subscription in YYYY-MM-DD format.
              sig { returns(String) }
              attr_accessor :date
              sig { params(amount: Integer, date: String).void }
              def initialize(amount: nil, date: nil); end
            end
            # Unit of time between subscription charges.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # Name for subscription.
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            # Describes the upcoming charge for this subscription.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling))
             }
            attr_accessor :next_billing
            # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
            sig { returns(String) }
            attr_accessor :reference
            sig {
              params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
             }
            def initialize(
              interval: nil,
              interval_count: nil,
              name: nil,
              next_billing: nil,
              reference: nil
            ); end
          end
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # On-demand details if setting up or charging an on-demand payment.
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand))
           }
          attr_accessor :on_demand
          # Preferred language of the Klarna authorization page that the customer is redirected to
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Subscription details if setting up or charging a subscription.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna::Subscription])))
           }
          attr_accessor :subscriptions
          sig {
            params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna::Subscription]))).void
           }
          def initialize(
            capture_method: nil,
            on_demand: nil,
            preferred_locale: nil,
            setup_future_usage: nil,
            subscriptions: nil
          ); end
        end
        class Konbini < Stripe::RequestParams
          # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
          sig { returns(T.nilable(String)) }
          attr_accessor :confirmation_number
          # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :expires_after_days
          # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :expires_at
          # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_description
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(confirmation_number: T.nilable(String), expires_after_days: T.nilable(T.any(String, Integer)), expires_at: T.nilable(T.any(String, Integer)), product_description: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            confirmation_number: nil,
            expires_after_days: nil,
            expires_at: nil,
            product_description: nil,
            setup_future_usage: nil
          ); end
        end
        class KrCard < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Link < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          attr_accessor :persistent_token
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
        end
        class Mobilepay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class Multibanco < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class NaverPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(setup_future_usage: nil, target_date: nil); end
        end
        class Oxxo < Stripe::RequestParams
          # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_days
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(expires_after_days: nil, setup_future_usage: nil); end
        end
        class P24 < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          # Confirm that the payer has accepted the P24 terms and conditions.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :tos_shown_and_accepted
          sig {
            params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
           }
          def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Paynow < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class Paypal < Stripe::RequestParams
          # Controls when the funds will be captured from the customer's account.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_locale
          # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The risk correlation ID for an on-session payment using a saved PayPal payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :risk_correlation_id
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), preferred_locale: T.nilable(String), reference: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(
            capture_method: nil,
            preferred_locale: nil,
            reference: nil,
            risk_correlation_id: nil,
            setup_future_usage: nil
          ); end
        end
        class Pix < Stripe::RequestParams
          # Determines if the amount includes the IOF tax. Defaults to `never`.
          sig { returns(T.nilable(String)) }
          attr_accessor :amount_includes_iof
          # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after_seconds
          # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(amount_includes_iof: T.nilable(String), expires_after_seconds: T.nilable(Integer), expires_at: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
           }
          def initialize(
            amount_includes_iof: nil,
            expires_after_seconds: nil,
            expires_at: nil,
            setup_future_usage: nil
          ); end
        end
        class Promptpay < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class RevolutPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(capture_method: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(capture_method: nil, setup_future_usage: nil); end
        end
        class SamsungPay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
        end
        class Satispay < Stripe::RequestParams
          # Controls when the funds are captured from the customer's account.
          #
          # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
          #
          # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
          sig { returns(T.nilable(String)) }
          attr_accessor :capture_method
          sig { params(capture_method: T.nilable(String)).void }
          def initialize(capture_method: nil); end
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
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions))
           }
          attr_accessor :mandate_options
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          sig {
            params(mandate_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
           }
          def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Language shown to the payer on redirect.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :preferred_language
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          sig {
            params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
           }
          def initialize(preferred_language: nil, setup_future_usage: nil); end
        end
        class Swish < Stripe::RequestParams
          # A reference for this payment to be displayed in the Swish app.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(reference: T.nilable(String), setup_future_usage: T.nilable(String)).void }
          def initialize(reference: nil, setup_future_usage: nil); end
        end
        class Twint < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :account_subcategories
              sig { params(account_subcategories: T.nilable(T::Array[String])).void }
              def initialize(account_subcategories: nil); end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            sig {
              returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
             }
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_url
            sig {
              params(filters: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
             }
            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil); end
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
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :requested
            sig { params(requested: T.nilable(T::Array[String])).void }
            def initialize(requested: nil); end
          end
          # Additional fields for Financial Connections Session creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections))
           }
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions))
           }
          attr_accessor :mandate_options
          # Additional fields for network related functions
          sig {
            returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks))
           }
          attr_accessor :networks
          # Preferred transaction settlement speed
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :preferred_settlement_speed
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :setup_future_usage
          # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
          sig { returns(T.nilable(String)) }
          attr_accessor :target_date
          # Bank account verification method.
          sig { returns(T.nilable(String)) }
          attr_accessor :verification_method
          sig {
            params(financial_connections: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::FinancialConnections), mandate_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::MandateOptions), networks: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount::Networks), preferred_settlement_speed: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
           }
          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            preferred_settlement_speed: nil,
            setup_future_usage: nil,
            target_date: nil,
            verification_method: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams
          # The app ID registered with WeChat Pay. Only required when client is ios or android.
          sig { returns(T.nilable(String)) }
          attr_accessor :app_id
          # The client type that the end customer will pay from
          sig { returns(T.nilable(String)) }
          attr_accessor :client
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig {
            params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
           }
          def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
        end
        class Zip < Stripe::RequestParams
          # Indicates that you intend to make future payments with this PaymentIntent's payment method.
          #
          # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
          #
          # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
          #
          # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
          #
          # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
          sig { returns(T.nilable(String)) }
          attr_accessor :setup_future_usage
          sig { params(setup_future_usage: T.nilable(String)).void }
          def initialize(setup_future_usage: nil); end
        end
        # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit)))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Affirm)))
         }
        attr_accessor :affirm
        # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AfterpayClearpay)))
         }
        attr_accessor :afterpay_clearpay
        # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Alipay)))
         }
        attr_accessor :alipay
        # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Alma)))
         }
        attr_accessor :alma
        # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AmazonPay)))
         }
        attr_accessor :amazon_pay
        # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AuBecsDebit)))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit)))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Bancontact)))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Billie)))
         }
        attr_accessor :billie
        # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Blik)))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Boleto)))
         }
        attr_accessor :boleto
        # Configuration for any card payments attempted on this PaymentIntent.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card)))
         }
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CardPresent)))
         }
        attr_accessor :card_present
        # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Cashapp)))
         }
        attr_accessor :cashapp
        # If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Crypto)))
         }
        attr_accessor :crypto
        # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CustomerBalance)))
         }
        attr_accessor :customer_balance
        # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Eps)))
         }
        attr_accessor :eps
        # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Fpx)))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Giropay)))
         }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Grabpay)))
         }
        attr_accessor :grabpay
        # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Ideal)))
         }
        attr_accessor :ideal
        # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::InteracPresent)))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::KakaoPay)))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna)))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Konbini)))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::KrCard)))
         }
        attr_accessor :kr_card
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Link)))
         }
        attr_accessor :link
        # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Mobilepay)))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Multibanco)))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::NaverPay)))
         }
        attr_accessor :naver_pay
        # If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::NzBankAccount)))
         }
        attr_accessor :nz_bank_account
        # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Oxxo)))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::P24)))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::PayByBank)))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Payco)))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Paynow)))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Paypal)))
         }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Pix)))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Promptpay)))
         }
        attr_accessor :promptpay
        # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::RevolutPay)))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::SamsungPay)))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Satispay)))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit)))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Sofort)))
         }
        attr_accessor :sofort
        # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Swish)))
         }
        attr_accessor :swish
        # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Twint)))
         }
        attr_accessor :twint
        # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount)))
         }
        attr_accessor :us_bank_account
        # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::WechatPay)))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Zip)))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AcssDebit)), affirm: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Affirm)), afterpay_clearpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AfterpayClearpay)), alipay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Alipay)), alma: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Alma)), amazon_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AmazonPay)), au_becs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::AuBecsDebit)), bacs_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::BacsDebit)), bancontact: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Bancontact)), billie: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Billie)), blik: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Blik)), boleto: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Boleto)), card: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Card)), card_present: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CardPresent)), cashapp: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Cashapp)), crypto: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Crypto)), customer_balance: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::CustomerBalance)), eps: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Eps)), fpx: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Fpx)), giropay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Giropay)), grabpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Grabpay)), ideal: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Ideal)), interac_present: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::InteracPresent)), kakao_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::KakaoPay)), klarna: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Klarna)), konbini: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Konbini)), kr_card: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::KrCard)), link: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Link)), mobilepay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Mobilepay)), multibanco: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Multibanco)), naver_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::NaverPay)), nz_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::NzBankAccount)), oxxo: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Oxxo)), p24: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::P24)), pay_by_bank: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::PayByBank)), payco: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Payco)), paynow: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Paynow)), paypal: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Paypal)), pix: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Pix)), promptpay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Promptpay)), revolut_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::RevolutPay)), samsung_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::SamsungPay)), satispay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Satispay)), sepa_debit: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::SepaDebit)), sofort: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Sofort)), swish: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Swish)), twint: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Twint)), us_bank_account: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::UsBankAccount)), wechat_pay: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::WechatPay)), zip: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions::Zip))).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          blik: nil,
          boleto: nil,
          card: nil,
          card_present: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
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
          pix: nil,
          promptpay: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(T.nilable(String)) }
        attr_accessor :session
        sig { params(session: T.nilable(String)).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
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
        # Shipping address.
        sig { returns(::Stripe::PaymentIntentService::ConfirmParams::Shipping::Address) }
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::PaymentIntentService::ConfirmParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      # Controls when the funds will be captured from the customer's account.
      sig { returns(T.nilable(String)) }
      attr_accessor :capture_method
      # ID of the ConfirmationToken used to confirm this PaymentIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      sig { returns(T.nilable(String)) }
      attr_accessor :confirmation_token
      # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :error_on_requires_action
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # ID of the mandate that's used for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :mandate
      # Attribute for param field mandate_data
      sig {
        returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::MandateData)))
       }
      attr_accessor :mandate_data
      # Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://stripe.com/docs/payments/cards/charging-saved-cards).
      sig { returns(T.nilable(T.any(T::Boolean, String))) }
      attr_accessor :off_session
      # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.
      # If the payment method is attached to a Customer, it must match the [customer](https://stripe.com/docs/api#create_payment_intent-customer) that is set on this PaymentIntent.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
      # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
      # property on the PaymentIntent.
      sig { returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData)) }
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this PaymentIntent.
      sig {
        returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions))
       }
      attr_accessor :payment_method_options
      # The list of payment method types (for example, a card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :payment_method_types
      # Options to configure Radar. Learn more about [Radar Sessions](https://stripe.com/docs/radar/radar-session).
      sig { returns(T.nilable(::Stripe::PaymentIntentService::ConfirmParams::RadarOptions)) }
      attr_accessor :radar_options
      # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
      # If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
      # This parameter is only used for cards and other redirect-based payment methods.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url
      # Indicates that you intend to make future payments with this PaymentIntent's payment method.
      #
      # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
      #
      # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
      #
      # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
      #
      # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
      sig { returns(T.nilable(T.any(String, String))) }
      attr_accessor :setup_future_usage
      # Shipping information for this PaymentIntent.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::Shipping)))
       }
      attr_accessor :shipping
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :use_stripe_sdk
      sig {
        params(capture_method: T.nilable(String), confirmation_token: T.nilable(String), error_on_requires_action: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), mandate: T.nilable(String), mandate_data: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::MandateData)), off_session: T.nilable(T.any(T::Boolean, String)), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), radar_options: T.nilable(::Stripe::PaymentIntentService::ConfirmParams::RadarOptions), receipt_email: T.nilable(String), return_url: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String)), shipping: T.nilable(T.any(String, ::Stripe::PaymentIntentService::ConfirmParams::Shipping)), use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        capture_method: nil,
        confirmation_token: nil,
        error_on_requires_action: nil,
        expand: nil,
        mandate: nil,
        mandate_data: nil,
        off_session: nil,
        payment_method: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        radar_options: nil,
        receipt_email: nil,
        return_url: nil,
        setup_future_usage: nil,
        shipping: nil,
        use_stripe_sdk: nil
      ); end
    end
    class IncrementAuthorizationParams < Stripe::RequestParams
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # The updated total amount that you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
      sig { returns(Integer) }
      attr_accessor :amount
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Text that appears on the customer's statement as the statement descriptor for a non-card or card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # The parameters used to automatically create a transfer after the payment is captured.
      # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
      sig {
        returns(T.nilable(::Stripe::PaymentIntentService::IncrementAuthorizationParams::TransferData))
       }
      attr_accessor :transfer_data
      sig {
        params(amount: Integer, application_fee_amount: T.nilable(Integer), description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), statement_descriptor: T.nilable(String), transfer_data: T.nilable(::Stripe::PaymentIntentService::IncrementAuthorizationParams::TransferData)).void
       }
      def initialize(
        amount: nil,
        application_fee_amount: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        statement_descriptor: nil,
        transfer_data: nil
      ); end
    end
    class VerifyMicrodepositsParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      sig { returns(T.nilable(T::Array[Integer])) }
      attr_accessor :amounts
      # A six-character code starting with SM present in the microdeposit sent to the bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :descriptor_code
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig {
        params(amounts: T.nilable(T::Array[Integer]), descriptor_code: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(amounts: nil, descriptor_code: nil, expand: nil); end
    end
    # Manually reconcile the remaining amount for a customer_balance PaymentIntent.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::ApplyCustomerBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def apply_customer_balance(intent, params = {}, opts = {}); end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://docs.stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://docs.stripe.com/docs/api/checkout/sessions/expire) instead.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def cancel(intent, params = {}, opts = {}); end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://docs.stripe.com/docs/payments/capture-later).
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def capture(intent, params = {}, opts = {}); end

    # Confirm that your customer intends to pay with current or provided
    # payment method. Upon confirmation, the PaymentIntent will attempt to initiate
    # a payment.
    #
    # If the selected payment method requires additional authentication steps, the
    # PaymentIntent will transition to the requires_action status and
    # suggest additional actions via next_action. If payment fails,
    # the PaymentIntent transitions to the requires_payment_method status or the
    # canceled status if the confirmation limit is reached. If
    # payment succeeds, the PaymentIntent will transition to the succeeded
    # status (or requires_capture, if capture_method is set to manual).
    #
    # If the confirmation_method is automatic, payment may be attempted
    # using our [client SDKs](https://docs.stripe.com/docs/stripe-js/reference#stripe-handle-card-payment)
    # and the PaymentIntent's [client_secret](https://docs.stripe.com/api#payment_intent_object-client_secret).
    # After next_actions are handled by the client, no additional
    # confirmation is required to complete the payment.
    #
    # If the confirmation_method is manual, all payment attempts must be
    # initiated using a secret key.
    #
    # If any actions are required for the payment, the PaymentIntent will
    # return to the requires_confirmation state
    # after those actions are completed. Your server needs to then
    # explicitly re-confirm the PaymentIntent to initiate the next payment
    # attempt.
    #
    # There is a variable upper limit on how many times a PaymentIntent can be confirmed.
    # After this limit is reached, any further calls to this endpoint will
    # transition the PaymentIntent to the canceled state.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def confirm(intent, params = {}, opts = {}); end

    # Creates a PaymentIntent object.
    #
    # After the PaymentIntent is created, attach a payment method and [confirm](https://docs.stripe.com/docs/api/payment_intents/confirm)
    # to continue the payment. Learn more about <a href="/docs/payments/payment-intents">the available payment flows
    # with the Payment Intents API.
    #
    # When you use confirm=true during creation, it's equivalent to creating
    # and confirming the PaymentIntent in the same call. You can use any parameters
    # available in the [confirm API](https://docs.stripe.com/docs/api/payment_intents/confirm) when you supply
    # confirm=true.
    sig {
      params(params: T.any(::Stripe::PaymentIntentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def create(params = {}, opts = {}); end

    # Perform an incremental authorization on an eligible
    # [PaymentIntent](https://docs.stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [incremental_authorization_supported](https://docs.stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported)
    # must be true.
    #
    # Incremental authorizations attempt to increase the authorized amount on
    # your customer's card to the new, higher amount provided. Similar to the
    # initial authorization, incremental authorizations can be declined. A
    # single PaymentIntent can call this endpoint multiple times to further
    # increase the authorized amount.
    #
    # If the incremental authorization succeeds, the PaymentIntent object
    # returns with the updated
    # [amount](https://docs.stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # If the incremental authorization fails, a
    # [card_declined](https://docs.stripe.com/docs/error-codes#card-declined) error returns, and no other
    # fields on the PaymentIntent or Charge update. The PaymentIntent
    # object remains capturable for the previously authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
    # After it's captured, a PaymentIntent can no longer be incremented.
    #
    # Learn more about [incremental authorizations](https://docs.stripe.com/docs/terminal/features/incremental-authorizations).
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::IncrementAuthorizationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def increment_authorization(intent, params = {}, opts = {}); end

    # Returns a list of PaymentIntents.
    sig {
      params(params: T.any(::Stripe::PaymentIntentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of a PaymentIntent that has previously been created.
    #
    # You can retrieve a PaymentIntent client-side using a publishable key when the client_secret is in the query string.
    #
    # If you retrieve a PaymentIntent with a publishable key, it only returns a subset of properties. Refer to the [payment intent](https://docs.stripe.com/api#payment_intent_object) object reference for more details.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def retrieve(intent, params = {}, opts = {}); end

    # Search for PaymentIntents you've previously created using Stripe's [Search Query Language](https://docs.stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    sig {
      params(params: T.any(::Stripe::PaymentIntentService::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def search(params = {}, opts = {}); end

    # Updates properties on a PaymentIntent object without confirming.
    #
    # Depending on which properties you update, you might need to confirm the
    # PaymentIntent again. For example, updating the payment_method
    # always requires you to confirm the PaymentIntent again. If you prefer to
    # update and confirm at the same time, we recommend updating properties through
    # the [confirm API](https://docs.stripe.com/docs/api/payment_intents/confirm) instead.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def update(intent, params = {}, opts = {}); end

    # Verifies microdeposits on a PaymentIntent object.
    sig {
      params(intent: String, params: T.any(::Stripe::PaymentIntentService::VerifyMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentIntent)
     }
    def verify_microdeposits(intent, params = {}, opts = {}); end
  end
end