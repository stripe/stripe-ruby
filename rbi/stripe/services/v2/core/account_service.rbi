# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountService < StripeService
        attr_reader :persons
        class CloseParams < Stripe::RequestParams
          # Configurations on the Account to be closed. All configurations on the Account must be passed in for this request to succeed.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :applied_configurations
          sig { params(applied_configurations: T.nilable(T::Array[String])).void }
          def initialize(applied_configurations: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class Configuration < Stripe::RequestParams
            class Customer < Stripe::RequestParams
              class AutomaticIndirectTax < Stripe::RequestParams
                # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to reverse, invoice and receipt PDFs include the following text: “Reverse charge”.
                sig { returns(T.nilable(String)) }
                attr_accessor :exempt
                # A recent IP address of the customer used for tax reporting and tax location inference.
                sig { returns(T.nilable(String)) }
                attr_accessor :ip_address
                # The data source used by Stripe Tax to identify the customer's location - defaults to 'identity_address'. Will only be used for automatic tax calculation on the customer's Invoices and Subscriptions.
                sig { returns(T.nilable(String)) }
                attr_accessor :location_source
                sig {
                  params(exempt: T.nilable(String), ip_address: T.nilable(String), location_source: T.nilable(String)).void
                 }
                def initialize(exempt: nil, ip_address: nil, location_source: nil); end
              end
              class Billing < Stripe::RequestParams
                class Invoice < Stripe::RequestParams
                  class CustomField < Stripe::RequestParams
                    # The name of the custom field. This may be up to 40 characters.
                    sig { returns(String) }
                    attr_accessor :name
                    # The value of the custom field. This may be up to 140 characters. When updating, pass an empty string to remove previously-defined values.
                    sig { returns(String) }
                    attr_accessor :value
                    sig { params(name: String, value: String).void }
                    def initialize(name: nil, value: nil); end
                  end
                  class Rendering < Stripe::RequestParams
                    # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of exclude_tax or include_inclusive_tax. include_inclusive_tax will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. exclude_tax will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :amount_tax_display
                    # ID of the invoice rendering template to use for future invoices.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :template
                    sig {
                      params(amount_tax_display: T.nilable(String), template: T.nilable(String)).void
                     }
                    def initialize(amount_tax_display: nil, template: nil); end
                  end
                  # The list of up to 4 default custom fields to be displayed on invoices for this customer.
                  sig {
                    returns(T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing::Invoice::CustomField]))
                   }
                  attr_accessor :custom_fields
                  # Default footer to be displayed on invoices for this customer.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :footer
                  # The sequence to be used on the customer's next invoice. Defaults to 1.
                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :next_sequence
                  # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :prefix
                  # Default options for invoice PDF rendering for this customer.
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing::Invoice::Rendering))
                   }
                  attr_accessor :rendering
                  sig {
                    params(custom_fields: T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing::Invoice::CustomField]), footer: T.nilable(String), next_sequence: T.nilable(Integer), prefix: T.nilable(String), rendering: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing::Invoice::Rendering)).void
                   }
                  def initialize(
                    custom_fields: nil,
                    footer: nil,
                    next_sequence: nil,
                    prefix: nil,
                    rendering: nil
                  ); end
                end
                # Default settings used on invoices for this customer.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing::Invoice))
                 }
                attr_accessor :invoice
                sig {
                  params(invoice: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing::Invoice)).void
                 }
                def initialize(invoice: nil); end
              end
              class Capabilities < Stripe::RequestParams
                class AutomaticIndirectTax < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                # Generates requirements for enabling automatic indirect tax calculation on this customer's invoices or subscriptions. Recommended to request this capability if planning to enable automatic tax calculation on this customer's invoices or subscriptions. Uses the `location_source` field.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Capabilities::AutomaticIndirectTax))
                 }
                attr_accessor :automatic_indirect_tax
                sig {
                  params(automatic_indirect_tax: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Capabilities::AutomaticIndirectTax)).void
                 }
                def initialize(automatic_indirect_tax: nil); end
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
                # Customer shipping address.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Shipping::Address))
                 }
                attr_accessor :address
                # Customer name.
                sig { returns(T.nilable(String)) }
                attr_accessor :name
                # Customer phone (including extension).
                sig { returns(T.nilable(String)) }
                attr_accessor :phone
                sig {
                  params(address: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Shipping::Address), name: T.nilable(String), phone: T.nilable(String)).void
                 }
                def initialize(address: nil, name: nil, phone: nil); end
              end
              # Automatic indirect tax settings to be used when automatic tax calculation is enabled on the customer's invoices, subscriptions, checkout sessions, or payment links. Surfaces if automatic tax calculation is possible given the current customer location information.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::AutomaticIndirectTax))
               }
              attr_accessor :automatic_indirect_tax
              # Billing settings - default settings used for this customer in Billing flows such as Invoices and Subscriptions.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing))
               }
              attr_accessor :billing
              # Capabilities that have been requested on the Customer Configuration.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Capabilities))
               }
              attr_accessor :capabilities
              # The customer's shipping information. Appears on invoices emailed to this customer.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Shipping))
               }
              attr_accessor :shipping
              # ID of the test clock to attach to the customer. Can only be set on testmode Accounts, and when the Customer Configuration is first set on an Account.
              sig { returns(T.nilable(String)) }
              attr_accessor :test_clock
              sig {
                params(automatic_indirect_tax: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::AutomaticIndirectTax), billing: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Billing), capabilities: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Capabilities), shipping: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer::Shipping), test_clock: T.nilable(String)).void
               }
              def initialize(
                automatic_indirect_tax: nil,
                billing: nil,
                capabilities: nil,
                shipping: nil,
                test_clock: nil
              ); end
            end
            class Merchant < Stripe::RequestParams
              class BacsDebitPayments < Stripe::RequestParams
                # Display name for Bacs debit payments.
                sig { returns(T.nilable(String)) }
                attr_accessor :display_name
                sig { params(display_name: T.nilable(String)).void }
                def initialize(display_name: nil); end
              end
              class Branding < Stripe::RequestParams
                # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): An icon for the merchant. Must be square and at least 128px x 128px.
                sig { returns(T.nilable(String)) }
                attr_accessor :icon
                # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): A logo for the merchant that will be used in Checkout instead of the icon and without the merchant's name next to it if provided. Must be at least 128px x 128px.
                sig { returns(T.nilable(String)) }
                attr_accessor :logo
                # A CSS hex color value representing the primary branding color for the merchant.
                sig { returns(T.nilable(String)) }
                attr_accessor :primary_color
                # A CSS hex color value representing the secondary branding color for the merchant.
                sig { returns(T.nilable(String)) }
                attr_accessor :secondary_color
                sig {
                  params(icon: T.nilable(String), logo: T.nilable(String), primary_color: T.nilable(String), secondary_color: T.nilable(String)).void
                 }
                def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil); end
              end
              class Capabilities < Stripe::RequestParams
                class AchDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class AcssDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class AffirmPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class AfterpayClearpayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class AlmaPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class AmazonPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class AuBecsDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class BacsDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class BancontactPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class BlikPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class BoletoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class CardPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class CartesBancairesPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class CashappPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class EpsPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class FpxPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class GbBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class GrabpayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class IdealPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class JcbPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class JpBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class KakaoPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class KlarnaPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class KonbiniPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class KrCardPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class LinkPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class MobilepayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class MultibancoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class MxBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class NaverPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class OxxoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class P24Payments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class PayByBankPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class PaycoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class PaynowPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class PromptpayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class RevolutPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class SamsungPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class SepaBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class SepaDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class SwishPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class TwintPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class UsBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class ZipPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                # Allow the merchant to process ACH debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AchDebitPayments))
                 }
                attr_accessor :ach_debit_payments
                # Allow the merchant to process ACSS debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AcssDebitPayments))
                 }
                attr_accessor :acss_debit_payments
                # Allow the merchant to process Affirm payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AffirmPayments))
                 }
                attr_accessor :affirm_payments
                # Allow the merchant to process Afterpay/Clearpay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AfterpayClearpayPayments))
                 }
                attr_accessor :afterpay_clearpay_payments
                # Allow the merchant to process Alma payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AlmaPayments))
                 }
                attr_accessor :alma_payments
                # Allow the merchant to process Amazon Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AmazonPayPayments))
                 }
                attr_accessor :amazon_pay_payments
                # Allow the merchant to process Australian BECS Direct Debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AuBecsDebitPayments))
                 }
                attr_accessor :au_becs_debit_payments
                # Allow the merchant to process BACS Direct Debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BacsDebitPayments))
                 }
                attr_accessor :bacs_debit_payments
                # Allow the merchant to process Bancontact payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BancontactPayments))
                 }
                attr_accessor :bancontact_payments
                # Allow the merchant to process BLIK payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BlikPayments))
                 }
                attr_accessor :blik_payments
                # Allow the merchant to process Boleto payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BoletoPayments))
                 }
                attr_accessor :boleto_payments
                # Allow the merchant to collect card payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::CardPayments))
                 }
                attr_accessor :card_payments
                # Allow the merchant to process Cartes Bancaires payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::CartesBancairesPayments))
                 }
                attr_accessor :cartes_bancaires_payments
                # Allow the merchant to process Cash App payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::CashappPayments))
                 }
                attr_accessor :cashapp_payments
                # Allow the merchant to process EPS payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::EpsPayments))
                 }
                attr_accessor :eps_payments
                # Allow the merchant to process FPX payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::FpxPayments))
                 }
                attr_accessor :fpx_payments
                # Allow the merchant to process UK bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::GbBankTransferPayments))
                 }
                attr_accessor :gb_bank_transfer_payments
                # Allow the merchant to process GrabPay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::GrabpayPayments))
                 }
                attr_accessor :grabpay_payments
                # Allow the merchant to process iDEAL payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::IdealPayments))
                 }
                attr_accessor :ideal_payments
                # Allow the merchant to process JCB card payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::JcbPayments))
                 }
                attr_accessor :jcb_payments
                # Allow the merchant to process Japanese bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::JpBankTransferPayments))
                 }
                attr_accessor :jp_bank_transfer_payments
                # Allow the merchant to process Kakao Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KakaoPayPayments))
                 }
                attr_accessor :kakao_pay_payments
                # Allow the merchant to process Klarna payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KlarnaPayments))
                 }
                attr_accessor :klarna_payments
                # Allow the merchant to process Konbini convenience store payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KonbiniPayments))
                 }
                attr_accessor :konbini_payments
                # Allow the merchant to process Korean card payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KrCardPayments))
                 }
                attr_accessor :kr_card_payments
                # Allow the merchant to process Link payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::LinkPayments))
                 }
                attr_accessor :link_payments
                # Allow the merchant to process MobilePay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::MobilepayPayments))
                 }
                attr_accessor :mobilepay_payments
                # Allow the merchant to process Multibanco payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::MultibancoPayments))
                 }
                attr_accessor :multibanco_payments
                # Allow the merchant to process Mexican bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::MxBankTransferPayments))
                 }
                attr_accessor :mx_bank_transfer_payments
                # Allow the merchant to process Naver Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::NaverPayPayments))
                 }
                attr_accessor :naver_pay_payments
                # Allow the merchant to process OXXO payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::OxxoPayments))
                 }
                attr_accessor :oxxo_payments
                # Allow the merchant to process Przelewy24 (P24) payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::P24Payments))
                 }
                attr_accessor :p24_payments
                # Allow the merchant to process Pay by Bank payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PayByBankPayments))
                 }
                attr_accessor :pay_by_bank_payments
                # Allow the merchant to process PAYCO payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PaycoPayments))
                 }
                attr_accessor :payco_payments
                # Allow the merchant to process PayNow payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PaynowPayments))
                 }
                attr_accessor :paynow_payments
                # Allow the merchant to process PromptPay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PromptpayPayments))
                 }
                attr_accessor :promptpay_payments
                # Allow the merchant to process Revolut Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::RevolutPayPayments))
                 }
                attr_accessor :revolut_pay_payments
                # Allow the merchant to process Samsung Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SamsungPayPayments))
                 }
                attr_accessor :samsung_pay_payments
                # Allow the merchant to process SEPA bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SepaBankTransferPayments))
                 }
                attr_accessor :sepa_bank_transfer_payments
                # Allow the merchant to process SEPA Direct Debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SepaDebitPayments))
                 }
                attr_accessor :sepa_debit_payments
                # Allow the merchant to process Swish payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SwishPayments))
                 }
                attr_accessor :swish_payments
                # Allow the merchant to process TWINT payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::TwintPayments))
                 }
                attr_accessor :twint_payments
                # Allow the merchant to process US bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::UsBankTransferPayments))
                 }
                attr_accessor :us_bank_transfer_payments
                # Allow the merchant to process Zip payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::ZipPayments))
                 }
                attr_accessor :zip_payments
                sig {
                  params(ach_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AchDebitPayments), acss_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AcssDebitPayments), affirm_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AffirmPayments), afterpay_clearpay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AfterpayClearpayPayments), alma_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AlmaPayments), amazon_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AmazonPayPayments), au_becs_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::AuBecsDebitPayments), bacs_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BacsDebitPayments), bancontact_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BancontactPayments), blik_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BlikPayments), boleto_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::BoletoPayments), card_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::CardPayments), cartes_bancaires_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::CartesBancairesPayments), cashapp_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::CashappPayments), eps_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::EpsPayments), fpx_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::FpxPayments), gb_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::GbBankTransferPayments), grabpay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::GrabpayPayments), ideal_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::IdealPayments), jcb_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::JcbPayments), jp_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::JpBankTransferPayments), kakao_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KakaoPayPayments), klarna_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KlarnaPayments), konbini_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KonbiniPayments), kr_card_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::KrCardPayments), link_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::LinkPayments), mobilepay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::MobilepayPayments), multibanco_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::MultibancoPayments), mx_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::MxBankTransferPayments), naver_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::NaverPayPayments), oxxo_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::OxxoPayments), p24_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::P24Payments), pay_by_bank_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PayByBankPayments), payco_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PaycoPayments), paynow_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PaynowPayments), promptpay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::PromptpayPayments), revolut_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::RevolutPayPayments), samsung_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SamsungPayPayments), sepa_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SepaBankTransferPayments), sepa_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SepaDebitPayments), swish_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::SwishPayments), twint_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::TwintPayments), us_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::UsBankTransferPayments), zip_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities::ZipPayments)).void
                 }
                def initialize(
                  ach_debit_payments: nil,
                  acss_debit_payments: nil,
                  affirm_payments: nil,
                  afterpay_clearpay_payments: nil,
                  alma_payments: nil,
                  amazon_pay_payments: nil,
                  au_becs_debit_payments: nil,
                  bacs_debit_payments: nil,
                  bancontact_payments: nil,
                  blik_payments: nil,
                  boleto_payments: nil,
                  card_payments: nil,
                  cartes_bancaires_payments: nil,
                  cashapp_payments: nil,
                  eps_payments: nil,
                  fpx_payments: nil,
                  gb_bank_transfer_payments: nil,
                  grabpay_payments: nil,
                  ideal_payments: nil,
                  jcb_payments: nil,
                  jp_bank_transfer_payments: nil,
                  kakao_pay_payments: nil,
                  klarna_payments: nil,
                  konbini_payments: nil,
                  kr_card_payments: nil,
                  link_payments: nil,
                  mobilepay_payments: nil,
                  multibanco_payments: nil,
                  mx_bank_transfer_payments: nil,
                  naver_pay_payments: nil,
                  oxxo_payments: nil,
                  p24_payments: nil,
                  pay_by_bank_payments: nil,
                  payco_payments: nil,
                  paynow_payments: nil,
                  promptpay_payments: nil,
                  revolut_pay_payments: nil,
                  samsung_pay_payments: nil,
                  sepa_bank_transfer_payments: nil,
                  sepa_debit_payments: nil,
                  swish_payments: nil,
                  twint_payments: nil,
                  us_bank_transfer_payments: nil,
                  zip_payments: nil
                ); end
              end
              class CardPayments < Stripe::RequestParams
                class DeclineOn < Stripe::RequestParams
                  # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :avs_failure
                  # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :cvc_failure
                  sig {
                    params(avs_failure: T.nilable(T::Boolean), cvc_failure: T.nilable(T::Boolean)).void
                   }
                  def initialize(avs_failure: nil, cvc_failure: nil); end
                end
                # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::CardPayments::DeclineOn))
                 }
                attr_accessor :decline_on
                sig {
                  params(decline_on: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::CardPayments::DeclineOn)).void
                 }
                def initialize(decline_on: nil); end
              end
              class StatementDescriptor < Stripe::RequestParams
                # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don’t set a statement_descriptor_prefix, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the statement_descriptor text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                sig { returns(T.nilable(String)) }
                attr_accessor :descriptor
                # Default text that appears on statements for card charges outside of Japan, prefixing any dynamic statement_descriptor_suffix specified on the charge. To maximize space for the dynamic part of the descriptor, keep this text short. If you don’t specify this value, statement_descriptor is used as the prefix. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                sig { returns(T.nilable(String)) }
                attr_accessor :prefix
                sig { params(descriptor: T.nilable(String), prefix: T.nilable(String)).void }
                def initialize(descriptor: nil, prefix: nil); end
              end
              class Support < Stripe::RequestParams
                class Address < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(String) }
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
                  # Town or cho-me.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                # A publicly available mailing address for sending support issues to.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Support::Address))
                 }
                attr_accessor :address
                # A publicly available email address for sending support issues to.
                sig { returns(T.nilable(String)) }
                attr_accessor :email
                # A publicly available phone number to call with support issues.
                sig { returns(T.nilable(String)) }
                attr_accessor :phone
                # A publicly available website for handling support issues.
                sig { returns(T.nilable(String)) }
                attr_accessor :url
                sig {
                  params(address: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Support::Address), email: T.nilable(String), phone: T.nilable(String), url: T.nilable(String)).void
                 }
                def initialize(address: nil, email: nil, phone: nil, url: nil); end
              end
              # Settings used for Bacs debit payments.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::BacsDebitPayments))
               }
              attr_accessor :bacs_debit_payments
              # Settings used to apply the merchant's branding to email receipts, invoices, Checkout, and other products.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Branding))
               }
              attr_accessor :branding
              # Capabilities to request on the Merchant Configuration.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities))
               }
              attr_accessor :capabilities
              # Card payments settings.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::CardPayments))
               }
              attr_accessor :card_payments
              # The merchant category code for the Merchant Configuration. MCCs are used to classify businesses based on the goods or services they provide.
              sig { returns(T.nilable(String)) }
              attr_accessor :mcc
              # Statement descriptor.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::StatementDescriptor))
               }
              attr_accessor :statement_descriptor
              # Publicly available contact information for sending support issues to.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Support))
               }
              attr_accessor :support
              sig {
                params(bacs_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::BacsDebitPayments), branding: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Branding), capabilities: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Capabilities), card_payments: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::CardPayments), mcc: T.nilable(String), statement_descriptor: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::StatementDescriptor), support: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant::Support)).void
               }
              def initialize(
                bacs_debit_payments: nil,
                branding: nil,
                capabilities: nil,
                card_payments: nil,
                mcc: nil,
                statement_descriptor: nil,
                support: nil
              ); end
            end
            class Recipient < Stripe::RequestParams
              class Capabilities < Stripe::RequestParams
                class BankAccounts < Stripe::RequestParams
                  class Local < Stripe::RequestParams
                    # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                    sig { returns(T::Boolean) }
                    attr_accessor :requested
                    sig { params(requested: T::Boolean).void }
                    def initialize(requested: nil); end
                  end
                  class Wire < Stripe::RequestParams
                    # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                    sig { returns(T::Boolean) }
                    attr_accessor :requested
                    sig { params(requested: T::Boolean).void }
                    def initialize(requested: nil); end
                  end
                  # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::BankAccounts::Local))
                   }
                  attr_accessor :local
                  # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::BankAccounts::Wire))
                   }
                  attr_accessor :wire
                  sig {
                    params(local: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::BankAccounts::Local), wire: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::BankAccounts::Wire)).void
                   }
                  def initialize(local: nil, wire: nil); end
                end
                class Cards < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T::Boolean) }
                  attr_accessor :requested
                  sig { params(requested: T::Boolean).void }
                  def initialize(requested: nil); end
                end
                class StripeBalance < Stripe::RequestParams
                  class StripeTransfers < Stripe::RequestParams
                    # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                    sig { returns(T::Boolean) }
                    attr_accessor :requested
                    sig { params(requested: T::Boolean).void }
                    def initialize(requested: nil); end
                  end
                  # Allows the recipient to receive /v1/transfers into their Stripe Balance (/v1/balance).
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::StripeBalance::StripeTransfers))
                   }
                  attr_accessor :stripe_transfers
                  sig {
                    params(stripe_transfers: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::StripeBalance::StripeTransfers)).void
                   }
                  def initialize(stripe_transfers: nil); end
                end
                # Capabilities that enable OutboundPayments to a bank account linked to this Account.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::BankAccounts))
                 }
                attr_accessor :bank_accounts
                # Capabilities that enable OutboundPayments to a card linked to this Account.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::Cards))
                 }
                attr_accessor :cards
                # Capabilities that enable the recipient to receive money into their Stripe Balance (/v1/balance).
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::StripeBalance))
                 }
                attr_accessor :stripe_balance
                sig {
                  params(bank_accounts: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::BankAccounts), cards: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::Cards), stripe_balance: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities::StripeBalance)).void
                 }
                def initialize(bank_accounts: nil, cards: nil, stripe_balance: nil); end
              end
              # Capabilities to be requested on the Recipient Configuration.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities))
               }
              attr_accessor :capabilities
              sig {
                params(capabilities: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient::Capabilities)).void
               }
              def initialize(capabilities: nil); end
            end
            # The Customer Configuration allows the Account to be used in inbound payment flows.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer))
             }
            attr_accessor :customer
            # The Merchant Configuration allows the Account to make charges.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant))
             }
            attr_accessor :merchant
            # The Recipient Configuration allows the Account to receive funds.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(customer: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Customer), merchant: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Merchant), recipient: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration::Recipient)).void
             }
            def initialize(customer: nil, merchant: nil, recipient: nil); end
          end
          class Defaults < Stripe::RequestParams
            class Responsibilities < Stripe::RequestParams
              # A value indicating the party responsible for collecting fees from this account.
              sig { returns(String) }
              attr_accessor :fees_collector
              # A value indicating who is responsible for losses when this Account can’t pay back negative balances from payments.
              sig { returns(String) }
              attr_accessor :losses_collector
              sig { params(fees_collector: String, losses_collector: String).void }
              def initialize(fees_collector: nil, losses_collector: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(T.nilable(String)) }
            attr_accessor :currency
            # The Account's preferred locales (languages), ordered by preference.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :locales
            # Default responsibilities held by either Stripe or the platform.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Defaults::Responsibilities))
             }
            attr_accessor :responsibilities
            sig {
              params(currency: T.nilable(String), locales: T.nilable(T::Array[String]), responsibilities: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Defaults::Responsibilities)).void
             }
            def initialize(currency: nil, locales: nil, responsibilities: nil); end
          end
          class Identity < Stripe::RequestParams
            class Attestations < Stripe::RequestParams
              class DirectorshipDeclaration < Stripe::RequestParams
                # The time marking when the director attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                attr_accessor :date
                # The IP address from which the director attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :ip
                # The user agent of the browser from which the director attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_agent
                sig {
                  params(date: T.nilable(String), ip: T.nilable(String), user_agent: T.nilable(String)).void
                 }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              class OwnershipDeclaration < Stripe::RequestParams
                # The time marking when the beneficial owner attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                attr_accessor :date
                # The IP address from which the beneficial owner attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :ip
                # The user agent of the browser from which the beneficial owner attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_agent
                sig {
                  params(date: T.nilable(String), ip: T.nilable(String), user_agent: T.nilable(String)).void
                 }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              class PersonsProvided < Stripe::RequestParams
                # Whether the company’s directors have been provided. Set this Boolean to true after creating all the company’s directors with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :directors
                # Whether the company’s executives have been provided. Set this Boolean to true after creating all the company’s executives with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :executives
                # Whether the company’s owners have been provided. Set this Boolean to true after creating all the company’s owners with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :owners
                # Reason for why the company is exempt from providing ownership information.
                sig { returns(T.nilable(String)) }
                attr_accessor :ownership_exemption_reason
                sig {
                  params(directors: T.nilable(T::Boolean), executives: T.nilable(T::Boolean), owners: T.nilable(T::Boolean), ownership_exemption_reason: T.nilable(String)).void
                 }
                def initialize(
                  directors: nil,
                  executives: nil,
                  owners: nil,
                  ownership_exemption_reason: nil
                ); end
              end
              class TermsOfService < Stripe::RequestParams
                class Account < Stripe::RequestParams
                  # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                  sig { returns(String) }
                  attr_accessor :date
                  # The IP address from which the Account's representative accepted the terms of service.
                  sig { returns(String) }
                  attr_accessor :ip
                  # The user agent of the browser from which the Account's representative accepted the terms of service.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :user_agent
                  sig { params(date: String, ip: String, user_agent: T.nilable(String)).void }
                  def initialize(date: nil, ip: nil, user_agent: nil); end
                end
                # Details on the Account's acceptance of the [Stripe Services Agreement](https://docs.stripe.com/connect/updating-accounts#tos-acceptance).
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::TermsOfService::Account))
                 }
                attr_accessor :account
                sig {
                  params(account: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::TermsOfService::Account)).void
                 }
                def initialize(account: nil); end
              end
              # This hash is used to attest that the directors information provided to Stripe is both current and correct.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::DirectorshipDeclaration))
               }
              attr_accessor :directorship_declaration
              # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::OwnershipDeclaration))
               }
              attr_accessor :ownership_declaration
              # Attestation that all Persons with a specific Relationship value have been provided.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::PersonsProvided))
               }
              attr_accessor :persons_provided
              # Attestations of accepted terms of service agreements.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::TermsOfService))
               }
              attr_accessor :terms_of_service
              sig {
                params(directorship_declaration: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::DirectorshipDeclaration), ownership_declaration: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::OwnershipDeclaration), persons_provided: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::PersonsProvided), terms_of_service: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations::TermsOfService)).void
               }
              def initialize(
                directorship_declaration: nil,
                ownership_declaration: nil,
                persons_provided: nil,
                terms_of_service: nil
              ); end
            end
            class BusinessDetails < Stripe::RequestParams
              class Address < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(String) }
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
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_accessor :town
                sig {
                  params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil,
                  town: nil
                ); end
              end
              class AnnualRevenue < Stripe::RequestParams
                # A non-negative integer representing the amount in the smallest currency unit.
                sig { returns(T.nilable(Stripe::V2::Amount)) }
                attr_accessor :amount
                # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
                sig { returns(T.nilable(String)) }
                attr_accessor :fiscal_year_end
                sig {
                  params(amount: T.nilable(Stripe::V2::Amount), fiscal_year_end: T.nilable(String)).void
                 }
                def initialize(amount: nil, fiscal_year_end: nil); end
              end
              class Documents < Stripe::RequestParams
                class BankAccountOwnershipVerification < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyLicense < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyMemorandumOfAssociation < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyMinisterialDecree < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyRegistrationVerification < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyTaxIdVerification < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class PrimaryVerification < Stripe::RequestParams
                  class FrontBack < Stripe::RequestParams
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :back
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(String) }
                    attr_accessor :front
                    sig { params(back: T.nilable(String), front: String).void }
                    def initialize(back: nil, front: nil); end
                  end
                  # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                  sig {
                    returns(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::PrimaryVerification::FrontBack)
                   }
                  attr_accessor :front_back
                  # The format of the verification document. Currently supports `front_back` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(front_back: ::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::PrimaryVerification::FrontBack, type: String).void
                   }
                  def initialize(front_back: nil, type: nil); end
                end
                class ProofOfRegistration < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                # One or more documents that support the bank account ownership verification requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::BankAccountOwnershipVerification))
                 }
                attr_accessor :bank_account_ownership_verification
                # One or more documents that demonstrate proof of a company’s license to operate.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyLicense))
                 }
                attr_accessor :company_license
                # One or more documents showing the company’s Memorandum of Association.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyMemorandumOfAssociation))
                 }
                attr_accessor :company_memorandum_of_association
                # Certain countries only: One or more documents showing the ministerial decree legalizing the company’s establishment.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyMinisterialDecree))
                 }
                attr_accessor :company_ministerial_decree
                # One or more documents that demonstrate proof of a company’s registration with the appropriate local authorities.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyRegistrationVerification))
                 }
                attr_accessor :company_registration_verification
                # One or more documents that demonstrate proof of a company’s tax ID.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyTaxIdVerification))
                 }
                attr_accessor :company_tax_id_verification
                # A document verifying the business.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::PrimaryVerification))
                 }
                attr_accessor :primary_verification
                # One or more documents showing the company’s proof of registration with the national business registry.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::ProofOfRegistration))
                 }
                attr_accessor :proof_of_registration
                # One or more documents that demonstrate proof of ultimate beneficial ownership.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::ProofOfUltimateBeneficialOwnership))
                 }
                attr_accessor :proof_of_ultimate_beneficial_ownership
                sig {
                  params(bank_account_ownership_verification: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::BankAccountOwnershipVerification), company_license: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyLicense), company_memorandum_of_association: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyMemorandumOfAssociation), company_ministerial_decree: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyMinisterialDecree), company_registration_verification: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyRegistrationVerification), company_tax_id_verification: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::CompanyTaxIdVerification), primary_verification: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::PrimaryVerification), proof_of_registration: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::ProofOfRegistration), proof_of_ultimate_beneficial_ownership: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents::ProofOfUltimateBeneficialOwnership)).void
                 }
                def initialize(
                  bank_account_ownership_verification: nil,
                  company_license: nil,
                  company_memorandum_of_association: nil,
                  company_ministerial_decree: nil,
                  company_registration_verification: nil,
                  company_tax_id_verification: nil,
                  primary_verification: nil,
                  proof_of_registration: nil,
                  proof_of_ultimate_beneficial_ownership: nil
                ); end
              end
              class IdNumber < Stripe::RequestParams
                # The registrar of the ID number (Only valid for DE ID number types).
                sig { returns(T.nilable(String)) }
                attr_accessor :registrar
                # Open Enum. The ID number type of a business entity.
                sig { returns(String) }
                attr_accessor :type
                # The value of the ID number.
                sig { returns(String) }
                attr_accessor :value
                sig { params(registrar: T.nilable(String), type: String, value: String).void }
                def initialize(registrar: nil, type: nil, value: nil); end
              end
              class MonthlyEstimatedRevenue < Stripe::RequestParams
                # A non-negative integer representing the amount in the smallest currency unit.
                sig { returns(T.nilable(Stripe::V2::Amount)) }
                attr_accessor :amount
                sig { params(amount: T.nilable(Stripe::V2::Amount)).void }
                def initialize(amount: nil); end
              end
              class ScriptAddresses < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(String) }
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
                  # Town or cho-me.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                class Kanji < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(String) }
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
                  # Town or cho-me.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                # Kana Address.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptAddresses::Kana))
                 }
                attr_accessor :kana
                # Kanji Address.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptAddresses::Kanji))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptAddresses::Kana), kanji: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptAddresses::Kanji)).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              class ScriptNames < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # Registered name of the business.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :registered_name
                  sig { params(registered_name: T.nilable(String)).void }
                  def initialize(registered_name: nil); end
                end
                class Kanji < Stripe::RequestParams
                  # Registered name of the business.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :registered_name
                  sig { params(registered_name: T.nilable(String)).void }
                  def initialize(registered_name: nil); end
                end
                # Kana name.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptNames::Kana))
                 }
                attr_accessor :kana
                # Kanji name.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptNames::Kanji))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptNames::Kana), kanji: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptNames::Kanji)).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              # The business registration address of the business entity.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Address))
               }
              attr_accessor :address
              # The business gross annual revenue for its preceding fiscal year.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::AnnualRevenue))
               }
              attr_accessor :annual_revenue
              # A document verifying the business.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents))
               }
              attr_accessor :documents
              # The name which is used by the business.
              sig { returns(T.nilable(String)) }
              attr_accessor :doing_business_as
              # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :estimated_worker_count
              # The ID numbers of a business entity.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::IdNumber]))
               }
              attr_accessor :id_numbers
              # An estimate of the monthly revenue of the business.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::MonthlyEstimatedRevenue))
               }
              attr_accessor :monthly_estimated_revenue
              # The phone number of the Business Entity.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              # Internal-only description of the product sold or service provided by the business. It's used by Stripe for risk and underwriting purposes.
              sig { returns(T.nilable(String)) }
              attr_accessor :product_description
              # The business legal name.
              sig { returns(T.nilable(String)) }
              attr_accessor :registered_name
              # The business registration address of the business entity in non latin script.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptAddresses))
               }
              attr_accessor :script_addresses
              # The business legal name in non latin script.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptNames))
               }
              attr_accessor :script_names
              # The category identifying the legal structure of the business.
              sig { returns(T.nilable(String)) }
              attr_accessor :structure
              # The business's publicly available website.
              sig { returns(T.nilable(String)) }
              attr_accessor :url
              sig {
                params(address: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Address), annual_revenue: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::AnnualRevenue), documents: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::Documents), doing_business_as: T.nilable(String), estimated_worker_count: T.nilable(Integer), id_numbers: T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::IdNumber]), monthly_estimated_revenue: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::MonthlyEstimatedRevenue), phone: T.nilable(String), product_description: T.nilable(String), registered_name: T.nilable(String), script_addresses: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptAddresses), script_names: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails::ScriptNames), structure: T.nilable(String), url: T.nilable(String)).void
               }
              def initialize(
                address: nil,
                annual_revenue: nil,
                documents: nil,
                doing_business_as: nil,
                estimated_worker_count: nil,
                id_numbers: nil,
                monthly_estimated_revenue: nil,
                phone: nil,
                product_description: nil,
                registered_name: nil,
                script_addresses: nil,
                script_names: nil,
                structure: nil,
                url: nil
              ); end
            end
            class Individual < Stripe::RequestParams
              class AdditionalAddress < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(String) }
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
                # Purpose of additional address.
                sig { returns(String) }
                attr_accessor :purpose
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_accessor :state
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_accessor :town
                sig {
                  params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), purpose: String, state: T.nilable(String), town: T.nilable(String)).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  purpose: nil,
                  state: nil,
                  town: nil
                ); end
              end
              class AdditionalName < Stripe::RequestParams
                # The person's full name.
                sig { returns(T.nilable(String)) }
                attr_accessor :full_name
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                attr_accessor :given_name
                # The purpose or type of the additional name.
                sig { returns(String) }
                attr_accessor :purpose
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                attr_accessor :surname
                sig {
                  params(full_name: T.nilable(String), given_name: T.nilable(String), purpose: String, surname: T.nilable(String)).void
                 }
                def initialize(full_name: nil, given_name: nil, purpose: nil, surname: nil); end
              end
              class Address < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(String) }
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
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_accessor :town
                sig {
                  params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil,
                  town: nil
                ); end
              end
              class DateOfBirth < Stripe::RequestParams
                # The day of birth.
                sig { returns(Integer) }
                attr_accessor :day
                # The month of birth.
                sig { returns(Integer) }
                attr_accessor :month
                # The year of birth.
                sig { returns(Integer) }
                attr_accessor :year
                sig { params(day: Integer, month: Integer, year: Integer).void }
                def initialize(day: nil, month: nil, year: nil); end
              end
              class Documents < Stripe::RequestParams
                class CompanyAuthorization < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class Passport < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class PrimaryVerification < Stripe::RequestParams
                  class FrontBack < Stripe::RequestParams
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :back
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(String) }
                    attr_accessor :front
                    sig { params(back: T.nilable(String), front: String).void }
                    def initialize(back: nil, front: nil); end
                  end
                  # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                  sig {
                    returns(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::PrimaryVerification::FrontBack)
                   }
                  attr_accessor :front_back
                  # The format of the verification document. Currently supports `front_back` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(front_back: ::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::PrimaryVerification::FrontBack, type: String).void
                   }
                  def initialize(front_back: nil, type: nil); end
                end
                class SecondaryVerification < Stripe::RequestParams
                  class FrontBack < Stripe::RequestParams
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :back
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(String) }
                    attr_accessor :front
                    sig { params(back: T.nilable(String), front: String).void }
                    def initialize(back: nil, front: nil); end
                  end
                  # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                  sig {
                    returns(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::SecondaryVerification::FrontBack)
                   }
                  attr_accessor :front_back
                  # The format of the verification document. Currently supports `front_back` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(front_back: ::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::SecondaryVerification::FrontBack, type: String).void
                   }
                  def initialize(front_back: nil, type: nil); end
                end
                class Visa < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                # One or more documents that demonstrate proof that this person is authorized to represent the company.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::CompanyAuthorization))
                 }
                attr_accessor :company_authorization
                # One or more documents showing the person’s passport page with photo and personal data.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::Passport))
                 }
                attr_accessor :passport
                # An identifying document showing the person's name, either a passport or local ID card.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::PrimaryVerification))
                 }
                attr_accessor :primary_verification
                # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::SecondaryVerification))
                 }
                attr_accessor :secondary_verification
                # One or more documents showing the person’s visa required for living in the country where they are residing.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::Visa))
                 }
                attr_accessor :visa
                sig {
                  params(company_authorization: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::Passport), primary_verification: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::PrimaryVerification), secondary_verification: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::SecondaryVerification), visa: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents::Visa)).void
                 }
                def initialize(
                  company_authorization: nil,
                  passport: nil,
                  primary_verification: nil,
                  secondary_verification: nil,
                  visa: nil
                ); end
              end
              class IdNumber < Stripe::RequestParams
                # The ID number type of an individual.
                sig { returns(String) }
                attr_accessor :type
                # The value of the ID number.
                sig { returns(String) }
                attr_accessor :value
                sig { params(type: String, value: String).void }
                def initialize(type: nil, value: nil); end
              end
              class Relationship < Stripe::RequestParams
                # Whether the person is a director of the account's identity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :director
                # Whether the person has significant responsibility to control, manage, or direct the organization.
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :executive
                # Whether the person is an owner of the account’s identity.
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :owner
                # The percent owned by the person of the account's legal entity.
                sig { returns(T.nilable(String)) }
                attr_accessor :percent_ownership
                # The person's title (e.g., CEO, Support Engineer).
                sig { returns(T.nilable(String)) }
                attr_accessor :title
                sig {
                  params(director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(String), title: T.nilable(String)).void
                 }
                def initialize(
                  director: nil,
                  executive: nil,
                  owner: nil,
                  percent_ownership: nil,
                  title: nil
                ); end
              end
              class ScriptAddresses < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(String) }
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
                  # Town or cho-me.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                class Kanji < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(String) }
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
                  # Town or cho-me.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                # Kana Address.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptAddresses::Kana))
                 }
                attr_accessor :kana
                # Kanji Address.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptAddresses::Kanji))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptAddresses::Kana), kanji: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptAddresses::Kanji)).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              class ScriptNames < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # The person's first or given name.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :given_name
                  # The person's last or family name.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :surname
                  sig { params(given_name: T.nilable(String), surname: T.nilable(String)).void }
                  def initialize(given_name: nil, surname: nil); end
                end
                class Kanji < Stripe::RequestParams
                  # The person's first or given name.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :given_name
                  # The person's last or family name.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :surname
                  sig { params(given_name: T.nilable(String), surname: T.nilable(String)).void }
                  def initialize(given_name: nil, surname: nil); end
                end
                # Persons name in kana script.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptNames::Kana))
                 }
                attr_accessor :kana
                # Persons name in kanji script.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptNames::Kanji))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptNames::Kana), kanji: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptNames::Kanji)).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              # Additional addresses associated with the individual.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::AdditionalAddress]))
               }
              attr_accessor :additional_addresses
              # Additional names (e.g. aliases) associated with the individual.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::AdditionalName]))
               }
              attr_accessor :additional_names
              # The individual's residential address.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Address))
               }
              attr_accessor :address
              # The individual's date of birth.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::DateOfBirth))
               }
              attr_accessor :date_of_birth
              # Documents that may be submitted to satisfy various informational requests.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents))
               }
              attr_accessor :documents
              # The individual's email address.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The individual's first name.
              sig { returns(T.nilable(String)) }
              attr_accessor :given_name
              # The identification numbers (e.g., SSN) associated with the individual.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::IdNumber]))
               }
              attr_accessor :id_numbers
              # The individual's gender (International regulations require either "male" or "female").
              sig { returns(T.nilable(String)) }
              attr_accessor :legal_gender
              # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T.nilable(T::Hash[String, String])) }
              attr_accessor :metadata
              # The countries where the individual is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :nationalities
              # The individual's phone number.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              # The individual's political exposure.
              sig { returns(T.nilable(String)) }
              attr_accessor :political_exposure
              # The relationship that this individual has with the account's identity.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Relationship))
               }
              attr_accessor :relationship
              # The script addresses (e.g., non-Latin characters) associated with the individual.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptAddresses))
               }
              attr_accessor :script_addresses
              # The individuals primary name in non latin script.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptNames))
               }
              attr_accessor :script_names
              # The individual's last name.
              sig { returns(T.nilable(String)) }
              attr_accessor :surname
              sig {
                params(additional_addresses: T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::AdditionalAddress]), additional_names: T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::AdditionalName]), address: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Address), date_of_birth: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::DateOfBirth), documents: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Documents), email: T.nilable(String), given_name: T.nilable(String), id_numbers: T.nilable(T::Array[::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::IdNumber]), legal_gender: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), nationalities: T.nilable(T::Array[String]), phone: T.nilable(String), political_exposure: T.nilable(String), relationship: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::Relationship), script_addresses: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptAddresses), script_names: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual::ScriptNames), surname: T.nilable(String)).void
               }
              def initialize(
                additional_addresses: nil,
                additional_names: nil,
                address: nil,
                date_of_birth: nil,
                documents: nil,
                email: nil,
                given_name: nil,
                id_numbers: nil,
                legal_gender: nil,
                metadata: nil,
                nationalities: nil,
                phone: nil,
                political_exposure: nil,
                relationship: nil,
                script_addresses: nil,
                script_names: nil,
                surname: nil
              ); end
            end
            # Attestations from the identity's key people, e.g. owners, executives, directors.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations))
             }
            attr_accessor :attestations
            # Information about the company or business.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails))
             }
            attr_accessor :business_details
            # The country in which the account holder resides, or in which the business is legally established. This should be an [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code.
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # The entity type.
            sig { returns(T.nilable(String)) }
            attr_accessor :entity_type
            # Information about the person represented by the account.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual))
             }
            attr_accessor :individual
            sig {
              params(attestations: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Attestations), business_details: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::BusinessDetails), country: T.nilable(String), entity_type: T.nilable(String), individual: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity::Individual)).void
             }
            def initialize(
              attestations: nil,
              business_details: nil,
              country: nil,
              entity_type: nil,
              individual: nil
            ); end
          end
          # An Account Configuration which allows the Account to take on a key persona across Stripe products.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration))
           }
          attr_accessor :configuration
          # The default contact email address for the Account.
          sig { returns(T.nilable(String)) }
          attr_accessor :contact_email
          # A value indicating the Stripe dashboard this Account has access to. This will depend on which configurations are enabled for this account.
          sig { returns(T.nilable(String)) }
          attr_accessor :dashboard
          # Default values to be used on Account Configurations.
          sig { returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Defaults)) }
          attr_accessor :defaults
          # A descriptive name for the Account. This name will be surfaced in the Stripe Dashboard and on any invoices sent to the Account.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # Information about the company, individual, and business represented by the Account.
          sig { returns(T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity)) }
          attr_accessor :identity
          # Additional fields to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          sig {
            params(configuration: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Configuration), contact_email: T.nilable(String), dashboard: T.nilable(String), defaults: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Defaults), display_name: T.nilable(String), identity: T.nilable(::Stripe::V2::Core::AccountService::CreateParams::Identity), include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String])).void
           }
          def initialize(
            configuration: nil,
            contact_email: nil,
            dashboard: nil,
            defaults: nil,
            display_name: nil,
            identity: nil,
            include: nil,
            metadata: nil
          ); end
        end
        class ListParams < Stripe::RequestParams
          # Filter only accounts that have all of the configurations specified. If omitted, returns all accounts regardless of which configurations they have.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :applied_configurations
          # The upper limit on the number of accounts returned by the List Account request.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          sig {
            params(applied_configurations: T.nilable(T::Array[String]), limit: T.nilable(Integer)).void
           }
          def initialize(applied_configurations: nil, limit: nil); end
        end
        class RetrieveParams < Stripe::RequestParams
          # Additional fields to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          sig { params(include: T.nilable(T::Array[String])).void }
          def initialize(include: nil); end
        end
        class UpdateParams < Stripe::RequestParams
          class Configuration < Stripe::RequestParams
            class Customer < Stripe::RequestParams
              class AutomaticIndirectTax < Stripe::RequestParams
                # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to reverse, invoice and receipt PDFs include the following text: “Reverse charge”.
                sig { returns(T.nilable(String)) }
                attr_accessor :exempt
                # A recent IP address of the customer used for tax reporting and tax location inference.
                sig { returns(T.nilable(String)) }
                attr_accessor :ip_address
                # The data source used by Stripe Tax to identify the customer's location - defaults to 'identity_address'. Will only be used for automatic tax calculation on the customer's Invoices and Subscriptions.
                sig { returns(T.nilable(String)) }
                attr_accessor :location_source
                sig {
                  params(exempt: T.nilable(String), ip_address: T.nilable(String), location_source: T.nilable(String)).void
                 }
                def initialize(exempt: nil, ip_address: nil, location_source: nil); end
              end
              class Billing < Stripe::RequestParams
                class Invoice < Stripe::RequestParams
                  class CustomField < Stripe::RequestParams
                    # The name of the custom field. This may be up to 40 characters.
                    sig { returns(String) }
                    attr_accessor :name
                    # The value of the custom field. This may be up to 140 characters. When updating, pass an empty string to remove previously-defined values.
                    sig { returns(String) }
                    attr_accessor :value
                    sig { params(name: String, value: String).void }
                    def initialize(name: nil, value: nil); end
                  end
                  class Rendering < Stripe::RequestParams
                    # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of exclude_tax or include_inclusive_tax. include_inclusive_tax will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. exclude_tax will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :amount_tax_display
                    # ID of the invoice rendering template to use for future invoices.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :template
                    sig {
                      params(amount_tax_display: T.nilable(String), template: T.nilable(String)).void
                     }
                    def initialize(amount_tax_display: nil, template: nil); end
                  end
                  # The list of up to 4 default custom fields to be displayed on invoices for this customer.
                  sig {
                    returns(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing::Invoice::CustomField]))
                   }
                  attr_accessor :custom_fields
                  # Default footer to be displayed on invoices for this customer.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :footer
                  # The sequence to be used on the customer's next invoice. Defaults to 1.
                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :next_sequence
                  # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :prefix
                  # Default options for invoice PDF rendering for this customer.
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing::Invoice::Rendering))
                   }
                  attr_accessor :rendering
                  sig {
                    params(custom_fields: T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing::Invoice::CustomField]), footer: T.nilable(String), next_sequence: T.nilable(Integer), prefix: T.nilable(String), rendering: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing::Invoice::Rendering)).void
                   }
                  def initialize(
                    custom_fields: nil,
                    footer: nil,
                    next_sequence: nil,
                    prefix: nil,
                    rendering: nil
                  ); end
                end
                # ID of a payment method that’s attached to the customer, to be used as the customer’s default payment method for invoices and subscriptions.
                sig { returns(T.nilable(String)) }
                attr_accessor :default_payment_method
                # Default settings used on invoices for this customer.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing::Invoice))
                 }
                attr_accessor :invoice
                sig {
                  params(default_payment_method: T.nilable(String), invoice: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing::Invoice)).void
                 }
                def initialize(default_payment_method: nil, invoice: nil); end
              end
              class Capabilities < Stripe::RequestParams
                class AutomaticIndirectTax < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                # Generates requirements for enabling automatic indirect tax calculation on this customer's invoices or subscriptions. Recommended to request this capability if planning to enable automatic tax calculation on this customer's invoices or subscriptions. Uses the `location_source` field.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Capabilities::AutomaticIndirectTax))
                 }
                attr_accessor :automatic_indirect_tax
                sig {
                  params(automatic_indirect_tax: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Capabilities::AutomaticIndirectTax)).void
                 }
                def initialize(automatic_indirect_tax: nil); end
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
                # Customer shipping address.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Shipping::Address))
                 }
                attr_accessor :address
                # Customer name.
                sig { returns(T.nilable(String)) }
                attr_accessor :name
                # Customer phone (including extension).
                sig { returns(T.nilable(String)) }
                attr_accessor :phone
                sig {
                  params(address: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Shipping::Address), name: T.nilable(String), phone: T.nilable(String)).void
                 }
                def initialize(address: nil, name: nil, phone: nil); end
              end
              # Automatic indirect tax settings to be used when automatic tax calculation is enabled on the customer's invoices, subscriptions, checkout sessions, or payment links. Surfaces if automatic tax calculation is possible given the current customer location information.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::AutomaticIndirectTax))
               }
              attr_accessor :automatic_indirect_tax
              # Billing settings - default settings used for this customer in Billing flows such as Invoices and Subscriptions.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing))
               }
              attr_accessor :billing
              # Capabilities that have been requested on the Customer Configuration.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Capabilities))
               }
              attr_accessor :capabilities
              # The customer's shipping information. Appears on invoices emailed to this customer.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Shipping))
               }
              attr_accessor :shipping
              # ID of the test clock to attach to the customer. Can only be set on testmode Accounts, and when the Customer Configuration is first set on an Account.
              sig { returns(T.nilable(String)) }
              attr_accessor :test_clock
              sig {
                params(automatic_indirect_tax: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::AutomaticIndirectTax), billing: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Billing), capabilities: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Capabilities), shipping: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer::Shipping), test_clock: T.nilable(String)).void
               }
              def initialize(
                automatic_indirect_tax: nil,
                billing: nil,
                capabilities: nil,
                shipping: nil,
                test_clock: nil
              ); end
            end
            class Merchant < Stripe::RequestParams
              class BacsDebitPayments < Stripe::RequestParams
                # Display name for Bacs debit payments.
                sig { returns(T.nilable(String)) }
                attr_accessor :display_name
                sig { params(display_name: T.nilable(String)).void }
                def initialize(display_name: nil); end
              end
              class Branding < Stripe::RequestParams
                # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): An icon for the merchant. Must be square and at least 128px x 128px.
                sig { returns(T.nilable(String)) }
                attr_accessor :icon
                # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): A logo for the merchant that will be used in Checkout instead of the icon and without the merchant's name next to it if provided. Must be at least 128px x 128px.
                sig { returns(T.nilable(String)) }
                attr_accessor :logo
                # A CSS hex color value representing the primary branding color for the merchant.
                sig { returns(T.nilable(String)) }
                attr_accessor :primary_color
                # A CSS hex color value representing the secondary branding color for the merchant.
                sig { returns(T.nilable(String)) }
                attr_accessor :secondary_color
                sig {
                  params(icon: T.nilable(String), logo: T.nilable(String), primary_color: T.nilable(String), secondary_color: T.nilable(String)).void
                 }
                def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil); end
              end
              class Capabilities < Stripe::RequestParams
                class AchDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class AcssDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class AffirmPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class AfterpayClearpayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class AlmaPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class AmazonPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class AuBecsDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class BacsDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class BancontactPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class BlikPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class BoletoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class CardPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class CartesBancairesPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class CashappPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class EpsPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class FpxPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class GbBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class GrabpayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class IdealPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class JcbPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class JpBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class KakaoPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class KlarnaPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class KonbiniPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class KrCardPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class LinkPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class MobilepayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class MultibancoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class MxBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class NaverPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class OxxoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class P24Payments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class PayByBankPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class PaycoPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class PaynowPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class PromptpayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class RevolutPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class SamsungPayPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class SepaBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class SepaDebitPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class SwishPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class TwintPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class UsBankTransferPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class ZipPayments < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                # Allow the merchant to process ACH debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AchDebitPayments))
                 }
                attr_accessor :ach_debit_payments
                # Allow the merchant to process ACSS debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AcssDebitPayments))
                 }
                attr_accessor :acss_debit_payments
                # Allow the merchant to process Affirm payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AffirmPayments))
                 }
                attr_accessor :affirm_payments
                # Allow the merchant to process Afterpay/Clearpay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AfterpayClearpayPayments))
                 }
                attr_accessor :afterpay_clearpay_payments
                # Allow the merchant to process Alma payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AlmaPayments))
                 }
                attr_accessor :alma_payments
                # Allow the merchant to process Amazon Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AmazonPayPayments))
                 }
                attr_accessor :amazon_pay_payments
                # Allow the merchant to process Australian BECS Direct Debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AuBecsDebitPayments))
                 }
                attr_accessor :au_becs_debit_payments
                # Allow the merchant to process BACS Direct Debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BacsDebitPayments))
                 }
                attr_accessor :bacs_debit_payments
                # Allow the merchant to process Bancontact payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BancontactPayments))
                 }
                attr_accessor :bancontact_payments
                # Allow the merchant to process BLIK payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BlikPayments))
                 }
                attr_accessor :blik_payments
                # Allow the merchant to process Boleto payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BoletoPayments))
                 }
                attr_accessor :boleto_payments
                # Allow the merchant to collect card payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::CardPayments))
                 }
                attr_accessor :card_payments
                # Allow the merchant to process Cartes Bancaires payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::CartesBancairesPayments))
                 }
                attr_accessor :cartes_bancaires_payments
                # Allow the merchant to process Cash App payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::CashappPayments))
                 }
                attr_accessor :cashapp_payments
                # Allow the merchant to process EPS payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::EpsPayments))
                 }
                attr_accessor :eps_payments
                # Allow the merchant to process FPX payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::FpxPayments))
                 }
                attr_accessor :fpx_payments
                # Allow the merchant to process UK bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::GbBankTransferPayments))
                 }
                attr_accessor :gb_bank_transfer_payments
                # Allow the merchant to process GrabPay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::GrabpayPayments))
                 }
                attr_accessor :grabpay_payments
                # Allow the merchant to process iDEAL payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::IdealPayments))
                 }
                attr_accessor :ideal_payments
                # Allow the merchant to process JCB card payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::JcbPayments))
                 }
                attr_accessor :jcb_payments
                # Allow the merchant to process Japanese bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::JpBankTransferPayments))
                 }
                attr_accessor :jp_bank_transfer_payments
                # Allow the merchant to process Kakao Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KakaoPayPayments))
                 }
                attr_accessor :kakao_pay_payments
                # Allow the merchant to process Klarna payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KlarnaPayments))
                 }
                attr_accessor :klarna_payments
                # Allow the merchant to process Konbini convenience store payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KonbiniPayments))
                 }
                attr_accessor :konbini_payments
                # Allow the merchant to process Korean card payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KrCardPayments))
                 }
                attr_accessor :kr_card_payments
                # Allow the merchant to process Link payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::LinkPayments))
                 }
                attr_accessor :link_payments
                # Allow the merchant to process MobilePay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::MobilepayPayments))
                 }
                attr_accessor :mobilepay_payments
                # Allow the merchant to process Multibanco payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::MultibancoPayments))
                 }
                attr_accessor :multibanco_payments
                # Allow the merchant to process Mexican bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::MxBankTransferPayments))
                 }
                attr_accessor :mx_bank_transfer_payments
                # Allow the merchant to process Naver Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::NaverPayPayments))
                 }
                attr_accessor :naver_pay_payments
                # Allow the merchant to process OXXO payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::OxxoPayments))
                 }
                attr_accessor :oxxo_payments
                # Allow the merchant to process Przelewy24 (P24) payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::P24Payments))
                 }
                attr_accessor :p24_payments
                # Allow the merchant to process Pay by Bank payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PayByBankPayments))
                 }
                attr_accessor :pay_by_bank_payments
                # Allow the merchant to process PAYCO payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PaycoPayments))
                 }
                attr_accessor :payco_payments
                # Allow the merchant to process PayNow payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PaynowPayments))
                 }
                attr_accessor :paynow_payments
                # Allow the merchant to process PromptPay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PromptpayPayments))
                 }
                attr_accessor :promptpay_payments
                # Allow the merchant to process Revolut Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::RevolutPayPayments))
                 }
                attr_accessor :revolut_pay_payments
                # Allow the merchant to process Samsung Pay payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SamsungPayPayments))
                 }
                attr_accessor :samsung_pay_payments
                # Allow the merchant to process SEPA bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SepaBankTransferPayments))
                 }
                attr_accessor :sepa_bank_transfer_payments
                # Allow the merchant to process SEPA Direct Debit payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SepaDebitPayments))
                 }
                attr_accessor :sepa_debit_payments
                # Allow the merchant to process Swish payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SwishPayments))
                 }
                attr_accessor :swish_payments
                # Allow the merchant to process TWINT payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::TwintPayments))
                 }
                attr_accessor :twint_payments
                # Allow the merchant to process US bank transfer payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::UsBankTransferPayments))
                 }
                attr_accessor :us_bank_transfer_payments
                # Allow the merchant to process Zip payments.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::ZipPayments))
                 }
                attr_accessor :zip_payments
                sig {
                  params(ach_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AchDebitPayments), acss_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AcssDebitPayments), affirm_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AffirmPayments), afterpay_clearpay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AfterpayClearpayPayments), alma_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AlmaPayments), amazon_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AmazonPayPayments), au_becs_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::AuBecsDebitPayments), bacs_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BacsDebitPayments), bancontact_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BancontactPayments), blik_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BlikPayments), boleto_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::BoletoPayments), card_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::CardPayments), cartes_bancaires_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::CartesBancairesPayments), cashapp_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::CashappPayments), eps_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::EpsPayments), fpx_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::FpxPayments), gb_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::GbBankTransferPayments), grabpay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::GrabpayPayments), ideal_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::IdealPayments), jcb_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::JcbPayments), jp_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::JpBankTransferPayments), kakao_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KakaoPayPayments), klarna_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KlarnaPayments), konbini_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KonbiniPayments), kr_card_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::KrCardPayments), link_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::LinkPayments), mobilepay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::MobilepayPayments), multibanco_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::MultibancoPayments), mx_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::MxBankTransferPayments), naver_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::NaverPayPayments), oxxo_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::OxxoPayments), p24_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::P24Payments), pay_by_bank_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PayByBankPayments), payco_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PaycoPayments), paynow_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PaynowPayments), promptpay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::PromptpayPayments), revolut_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::RevolutPayPayments), samsung_pay_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SamsungPayPayments), sepa_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SepaBankTransferPayments), sepa_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SepaDebitPayments), swish_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::SwishPayments), twint_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::TwintPayments), us_bank_transfer_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::UsBankTransferPayments), zip_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities::ZipPayments)).void
                 }
                def initialize(
                  ach_debit_payments: nil,
                  acss_debit_payments: nil,
                  affirm_payments: nil,
                  afterpay_clearpay_payments: nil,
                  alma_payments: nil,
                  amazon_pay_payments: nil,
                  au_becs_debit_payments: nil,
                  bacs_debit_payments: nil,
                  bancontact_payments: nil,
                  blik_payments: nil,
                  boleto_payments: nil,
                  card_payments: nil,
                  cartes_bancaires_payments: nil,
                  cashapp_payments: nil,
                  eps_payments: nil,
                  fpx_payments: nil,
                  gb_bank_transfer_payments: nil,
                  grabpay_payments: nil,
                  ideal_payments: nil,
                  jcb_payments: nil,
                  jp_bank_transfer_payments: nil,
                  kakao_pay_payments: nil,
                  klarna_payments: nil,
                  konbini_payments: nil,
                  kr_card_payments: nil,
                  link_payments: nil,
                  mobilepay_payments: nil,
                  multibanco_payments: nil,
                  mx_bank_transfer_payments: nil,
                  naver_pay_payments: nil,
                  oxxo_payments: nil,
                  p24_payments: nil,
                  pay_by_bank_payments: nil,
                  payco_payments: nil,
                  paynow_payments: nil,
                  promptpay_payments: nil,
                  revolut_pay_payments: nil,
                  samsung_pay_payments: nil,
                  sepa_bank_transfer_payments: nil,
                  sepa_debit_payments: nil,
                  swish_payments: nil,
                  twint_payments: nil,
                  us_bank_transfer_payments: nil,
                  zip_payments: nil
                ); end
              end
              class CardPayments < Stripe::RequestParams
                class DeclineOn < Stripe::RequestParams
                  # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :avs_failure
                  # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :cvc_failure
                  sig {
                    params(avs_failure: T.nilable(T::Boolean), cvc_failure: T.nilable(T::Boolean)).void
                   }
                  def initialize(avs_failure: nil, cvc_failure: nil); end
                end
                # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::CardPayments::DeclineOn))
                 }
                attr_accessor :decline_on
                sig {
                  params(decline_on: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::CardPayments::DeclineOn)).void
                 }
                def initialize(decline_on: nil); end
              end
              class StatementDescriptor < Stripe::RequestParams
                # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don’t set a statement_descriptor_prefix, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the statement_descriptor text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                sig { returns(T.nilable(String)) }
                attr_accessor :descriptor
                # Default text that appears on statements for card charges outside of Japan, prefixing any dynamic statement_descriptor_suffix specified on the charge. To maximize space for the dynamic part of the descriptor, keep this text short. If you don’t specify this value, statement_descriptor is used as the prefix. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                sig { returns(T.nilable(String)) }
                attr_accessor :prefix
                sig { params(descriptor: T.nilable(String), prefix: T.nilable(String)).void }
                def initialize(descriptor: nil, prefix: nil); end
              end
              class Support < Stripe::RequestParams
                class Address < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :country
                  # Address line 1 (e.g., street, PO Box, or company name).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line1
                  # Address line 2 (e.g., apartment, suite, unit, or building).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line2
                  # ZIP or postal code.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :postal_code
                  # State, county, province, or region.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :state
                  # Town or cho-me.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                # A publicly available mailing address for sending support issues to.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Support::Address))
                 }
                attr_accessor :address
                # A publicly available email address for sending support issues to.
                sig { returns(T.nilable(String)) }
                attr_accessor :email
                # A publicly available phone number to call with support issues.
                sig { returns(T.nilable(String)) }
                attr_accessor :phone
                # A publicly available website for handling support issues.
                sig { returns(T.nilable(String)) }
                attr_accessor :url
                sig {
                  params(address: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Support::Address), email: T.nilable(String), phone: T.nilable(String), url: T.nilable(String)).void
                 }
                def initialize(address: nil, email: nil, phone: nil, url: nil); end
              end
              # Settings used for Bacs debit payments.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::BacsDebitPayments))
               }
              attr_accessor :bacs_debit_payments
              # Settings used to apply the merchant's branding to email receipts, invoices, Checkout, and other products.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Branding))
               }
              attr_accessor :branding
              # Capabilities to request on the Merchant Configuration.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities))
               }
              attr_accessor :capabilities
              # Card payments settings.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::CardPayments))
               }
              attr_accessor :card_payments
              # The merchant category code for the merchant. MCCs are used to classify businesses based on the goods or services they provide.
              sig { returns(T.nilable(String)) }
              attr_accessor :mcc
              # Statement descriptor.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::StatementDescriptor))
               }
              attr_accessor :statement_descriptor
              # Publicly available contact information for sending support issues to.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Support))
               }
              attr_accessor :support
              sig {
                params(bacs_debit_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::BacsDebitPayments), branding: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Branding), capabilities: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Capabilities), card_payments: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::CardPayments), mcc: T.nilable(String), statement_descriptor: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::StatementDescriptor), support: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant::Support)).void
               }
              def initialize(
                bacs_debit_payments: nil,
                branding: nil,
                capabilities: nil,
                card_payments: nil,
                mcc: nil,
                statement_descriptor: nil,
                support: nil
              ); end
            end
            class Recipient < Stripe::RequestParams
              class Capabilities < Stripe::RequestParams
                class BankAccounts < Stripe::RequestParams
                  class Local < Stripe::RequestParams
                    # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                    sig { returns(T.nilable(T::Boolean)) }
                    attr_accessor :requested
                    sig { params(requested: T.nilable(T::Boolean)).void }
                    def initialize(requested: nil); end
                  end
                  class Wire < Stripe::RequestParams
                    # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                    sig { returns(T.nilable(T::Boolean)) }
                    attr_accessor :requested
                    sig { params(requested: T.nilable(T::Boolean)).void }
                    def initialize(requested: nil); end
                  end
                  # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::BankAccounts::Local))
                   }
                  attr_accessor :local
                  # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::BankAccounts::Wire))
                   }
                  attr_accessor :wire
                  sig {
                    params(local: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::BankAccounts::Local), wire: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::BankAccounts::Wire)).void
                   }
                  def initialize(local: nil, wire: nil); end
                end
                class Cards < Stripe::RequestParams
                  # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_accessor :requested
                  sig { params(requested: T.nilable(T::Boolean)).void }
                  def initialize(requested: nil); end
                end
                class StripeBalance < Stripe::RequestParams
                  class StripeTransfers < Stripe::RequestParams
                    # To request a new Capability for an account, pass true. There can be a delay before the requested Capability becomes active.
                    sig { returns(T.nilable(T::Boolean)) }
                    attr_accessor :requested
                    sig { params(requested: T.nilable(T::Boolean)).void }
                    def initialize(requested: nil); end
                  end
                  # Allows the recipient to receive /v1/transfers into their Stripe Balance (/v1/balance).
                  sig {
                    returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::StripeBalance::StripeTransfers))
                   }
                  attr_accessor :stripe_transfers
                  sig {
                    params(stripe_transfers: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::StripeBalance::StripeTransfers)).void
                   }
                  def initialize(stripe_transfers: nil); end
                end
                # Capabilities that enable OutboundPayments to a bank account linked to this Account.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::BankAccounts))
                 }
                attr_accessor :bank_accounts
                # Capability that enable OutboundPayments to a debit card linked to this Account.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::Cards))
                 }
                attr_accessor :cards
                # Capabilities that enable the recipient to receive money into their Stripe Balance (/v1/balance).
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::StripeBalance))
                 }
                attr_accessor :stripe_balance
                sig {
                  params(bank_accounts: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::BankAccounts), cards: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::Cards), stripe_balance: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities::StripeBalance)).void
                 }
                def initialize(bank_accounts: nil, cards: nil, stripe_balance: nil); end
              end
              # Capabilities to request on the Recipient Configuration.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities))
               }
              attr_accessor :capabilities
              # The payout method id to be used as a default outbound destination. This will allow the PayoutMethod to be omitted on OutboundPayments made through API or sending payouts via dashboard. Can also be explicitly set to `null` to clear the existing default outbound destination.
              sig { returns(T.nilable(String)) }
              attr_accessor :default_outbound_destination
              sig {
                params(capabilities: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient::Capabilities), default_outbound_destination: T.nilable(String)).void
               }
              def initialize(capabilities: nil, default_outbound_destination: nil); end
            end
            # The Customer Configuration allows the Account to be charged.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer))
             }
            attr_accessor :customer
            # The Merchant Configuration allows the Account to make charges.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant))
             }
            attr_accessor :merchant
            # The Recipient Configuration allows the Account to receive funds.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(customer: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Customer), merchant: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Merchant), recipient: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration::Recipient)).void
             }
            def initialize(customer: nil, merchant: nil, recipient: nil); end
          end
          class Defaults < Stripe::RequestParams
            class Responsibilities < Stripe::RequestParams
              # A value indicating the party responsible for collecting fees from this account.
              sig { returns(String) }
              attr_accessor :fees_collector
              # A value indicating who is responsible for losses when this Account can’t pay back negative balances from payments.
              sig { returns(String) }
              attr_accessor :losses_collector
              sig { params(fees_collector: String, losses_collector: String).void }
              def initialize(fees_collector: nil, losses_collector: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(T.nilable(String)) }
            attr_accessor :currency
            # The Account's preferred locales (languages), ordered by preference.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :locales
            # Default responsibilities held by either Stripe or the platform.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Defaults::Responsibilities))
             }
            attr_accessor :responsibilities
            sig {
              params(currency: T.nilable(String), locales: T.nilable(T::Array[String]), responsibilities: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Defaults::Responsibilities)).void
             }
            def initialize(currency: nil, locales: nil, responsibilities: nil); end
          end
          class Identity < Stripe::RequestParams
            class Attestations < Stripe::RequestParams
              class DirectorshipDeclaration < Stripe::RequestParams
                # The time marking when the director attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                attr_accessor :date
                # The IP address from which the director attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :ip
                # The user agent of the browser from which the director attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_agent
                sig {
                  params(date: T.nilable(String), ip: T.nilable(String), user_agent: T.nilable(String)).void
                 }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              class OwnershipDeclaration < Stripe::RequestParams
                # The time marking when the beneficial owner attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                attr_accessor :date
                # The IP address from which the beneficial owner attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :ip
                # The user agent of the browser from which the beneficial owner attestation was made.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_agent
                sig {
                  params(date: T.nilable(String), ip: T.nilable(String), user_agent: T.nilable(String)).void
                 }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              class PersonsProvided < Stripe::RequestParams
                # Whether the company’s directors have been provided. Set this Boolean to true after creating all the company’s directors with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :directors
                # Whether the company’s executives have been provided. Set this Boolean to true after creating all the company’s executives with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :executives
                # Whether the company’s owners have been provided. Set this Boolean to true after creating all the company’s owners with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :owners
                # Reason for why the company is exempt from providing ownership information.
                sig { returns(T.nilable(String)) }
                attr_accessor :ownership_exemption_reason
                sig {
                  params(directors: T.nilable(T::Boolean), executives: T.nilable(T::Boolean), owners: T.nilable(T::Boolean), ownership_exemption_reason: T.nilable(String)).void
                 }
                def initialize(
                  directors: nil,
                  executives: nil,
                  owners: nil,
                  ownership_exemption_reason: nil
                ); end
              end
              class TermsOfService < Stripe::RequestParams
                class Account < Stripe::RequestParams
                  # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :date
                  # The IP address from which the Account's representative accepted the terms of service.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :ip
                  # The user agent of the browser from which the Account's representative accepted the terms of service.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :user_agent
                  sig {
                    params(date: T.nilable(String), ip: T.nilable(String), user_agent: T.nilable(String)).void
                   }
                  def initialize(date: nil, ip: nil, user_agent: nil); end
                end
                # Details on the Account's acceptance of the [Stripe Services Agreement](https://docs.stripe.com/connect/updating-accounts#tos-acceptance).
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::TermsOfService::Account))
                 }
                attr_accessor :account
                sig {
                  params(account: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::TermsOfService::Account)).void
                 }
                def initialize(account: nil); end
              end
              # This hash is used to attest that the directors information provided to Stripe is both current and correct.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::DirectorshipDeclaration))
               }
              attr_accessor :directorship_declaration
              # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::OwnershipDeclaration))
               }
              attr_accessor :ownership_declaration
              # Attestation that all Persons with a specific Relationship value have been provided.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::PersonsProvided))
               }
              attr_accessor :persons_provided
              # Attestations of accepted terms of service agreements.
              sig {
                returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::TermsOfService))
               }
              attr_accessor :terms_of_service
              sig {
                params(directorship_declaration: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::DirectorshipDeclaration), ownership_declaration: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::OwnershipDeclaration), persons_provided: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::PersonsProvided), terms_of_service: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations::TermsOfService)).void
               }
              def initialize(
                directorship_declaration: nil,
                ownership_declaration: nil,
                persons_provided: nil,
                terms_of_service: nil
              ); end
            end
            class BusinessDetails < Stripe::RequestParams
              class Address < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line2
                # ZIP or postal code.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :state
                # Town or cho-me.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :town
                sig {
                  params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil,
                  town: nil
                ); end
              end
              class AnnualRevenue < Stripe::RequestParams
                # A non-negative integer representing the amount in the smallest currency unit.
                sig { returns(T.nilable(Stripe::V2::Amount)) }
                attr_accessor :amount
                # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :fiscal_year_end
                sig {
                  params(amount: T.nilable(Stripe::V2::Amount), fiscal_year_end: T.nilable(T.nilable(String))).void
                 }
                def initialize(amount: nil, fiscal_year_end: nil); end
              end
              class Documents < Stripe::RequestParams
                class BankAccountOwnershipVerification < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyLicense < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyMemorandumOfAssociation < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyMinisterialDecree < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyRegistrationVerification < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class CompanyTaxIdVerification < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class PrimaryVerification < Stripe::RequestParams
                  class FrontBack < Stripe::RequestParams
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(T.nilable(String))) }
                    attr_accessor :back
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :front
                    sig {
                      params(back: T.nilable(T.nilable(String)), front: T.nilable(String)).void
                     }
                    def initialize(back: nil, front: nil); end
                  end
                  # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                  sig {
                    returns(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::PrimaryVerification::FrontBack)
                   }
                  attr_accessor :front_back
                  # The format of the verification document. Currently supports `front_back` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(front_back: ::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::PrimaryVerification::FrontBack, type: String).void
                   }
                  def initialize(front_back: nil, type: nil); end
                end
                class ProofOfRegistration < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                # One or more documents that support the bank account ownership verification requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::BankAccountOwnershipVerification)))
                 }
                attr_accessor :bank_account_ownership_verification
                # One or more documents that demonstrate proof of a company’s license to operate.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyLicense)))
                 }
                attr_accessor :company_license
                # One or more documents showing the company’s Memorandum of Association.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyMemorandumOfAssociation)))
                 }
                attr_accessor :company_memorandum_of_association
                # Certain countries only: One or more documents showing the ministerial decree legalizing the company’s establishment.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyMinisterialDecree)))
                 }
                attr_accessor :company_ministerial_decree
                # One or more documents that demonstrate proof of a company’s registration with the appropriate local authorities.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyRegistrationVerification)))
                 }
                attr_accessor :company_registration_verification
                # One or more documents that demonstrate proof of a company’s tax ID.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyTaxIdVerification)))
                 }
                attr_accessor :company_tax_id_verification
                # A document verifying the business.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::PrimaryVerification)))
                 }
                attr_accessor :primary_verification
                # One or more documents showing the company’s proof of registration with the national business registry.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::ProofOfRegistration)))
                 }
                attr_accessor :proof_of_registration
                # One or more documents that demonstrate proof of ultimate beneficial ownership.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::ProofOfUltimateBeneficialOwnership))
                 }
                attr_accessor :proof_of_ultimate_beneficial_ownership
                sig {
                  params(bank_account_ownership_verification: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::BankAccountOwnershipVerification)), company_license: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyLicense)), company_memorandum_of_association: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyMemorandumOfAssociation)), company_ministerial_decree: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyMinisterialDecree)), company_registration_verification: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyRegistrationVerification)), company_tax_id_verification: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::CompanyTaxIdVerification)), primary_verification: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::PrimaryVerification)), proof_of_registration: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::ProofOfRegistration)), proof_of_ultimate_beneficial_ownership: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents::ProofOfUltimateBeneficialOwnership)).void
                 }
                def initialize(
                  bank_account_ownership_verification: nil,
                  company_license: nil,
                  company_memorandum_of_association: nil,
                  company_ministerial_decree: nil,
                  company_registration_verification: nil,
                  company_tax_id_verification: nil,
                  primary_verification: nil,
                  proof_of_registration: nil,
                  proof_of_ultimate_beneficial_ownership: nil
                ); end
              end
              class IdNumber < Stripe::RequestParams
                # The registrar of the ID number (Only valid for DE ID number types).
                sig { returns(T.nilable(String)) }
                attr_accessor :registrar
                # Open Enum. The ID number type of a business entity.
                sig { returns(String) }
                attr_accessor :type
                # The value of the ID number.
                sig { returns(String) }
                attr_accessor :value
                sig { params(registrar: T.nilable(String), type: String, value: String).void }
                def initialize(registrar: nil, type: nil, value: nil); end
              end
              class MonthlyEstimatedRevenue < Stripe::RequestParams
                # A non-negative integer representing the amount in the smallest currency unit.
                sig { returns(T.nilable(Stripe::V2::Amount)) }
                attr_accessor :amount
                sig { params(amount: T.nilable(Stripe::V2::Amount)).void }
                def initialize(amount: nil); end
              end
              class ScriptAddresses < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :country
                  # Address line 1 (e.g., street, PO Box, or company name).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line1
                  # Address line 2 (e.g., apartment, suite, unit, or building).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line2
                  # ZIP or postal code.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :postal_code
                  # State, county, province, or region.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :state
                  # Town or cho-me.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                class Kanji < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :country
                  # Address line 1 (e.g., street, PO Box, or company name).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line1
                  # Address line 2 (e.g., apartment, suite, unit, or building).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line2
                  # ZIP or postal code.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :postal_code
                  # State, county, province, or region.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :state
                  # Town or cho-me.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                # Kana Address.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptAddresses::Kana)))
                 }
                attr_accessor :kana
                # Kanji Address.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptAddresses::Kanji)))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptAddresses::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptAddresses::Kanji))).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              class ScriptNames < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # Registered name of the business.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :registered_name
                  sig { params(registered_name: T.nilable(T.nilable(String))).void }
                  def initialize(registered_name: nil); end
                end
                class Kanji < Stripe::RequestParams
                  # Registered name of the business.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :registered_name
                  sig { params(registered_name: T.nilable(T.nilable(String))).void }
                  def initialize(registered_name: nil); end
                end
                # Kana name.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptNames::Kana)))
                 }
                attr_accessor :kana
                # Kanji name.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptNames::Kanji)))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptNames::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptNames::Kanji))).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              # The business registration address of the business entity.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Address)))
               }
              attr_accessor :address
              # The business gross annual revenue for its preceding fiscal year.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::AnnualRevenue)))
               }
              attr_accessor :annual_revenue
              # A document verifying the business.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents)))
               }
              attr_accessor :documents
              # The name which is used by the business.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :doing_business_as
              # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
              sig { returns(T.nilable(T.nilable(Integer))) }
              attr_accessor :estimated_worker_count
              # The ID numbers of a business entity.
              sig {
                returns(T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::IdNumber])))
               }
              attr_accessor :id_numbers
              # An estimate of the monthly revenue of the business.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::MonthlyEstimatedRevenue)))
               }
              attr_accessor :monthly_estimated_revenue
              # The phone number of the Business Entity.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :phone
              # Internal-only description of the product sold or service provided by the business. It’s used by Stripe for risk and underwriting purposes.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :product_description
              # The business legal name.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :registered_name
              # The business registration address of the business entity in non latin script.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptAddresses)))
               }
              attr_accessor :script_addresses
              # The business legal name in non latin script.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptNames)))
               }
              attr_accessor :script_names
              # The category identifying the legal structure of the business.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :structure
              # The business's publicly available website.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :url
              sig {
                params(address: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Address)), annual_revenue: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::AnnualRevenue)), documents: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::Documents)), doing_business_as: T.nilable(T.nilable(String)), estimated_worker_count: T.nilable(T.nilable(Integer)), id_numbers: T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::IdNumber])), monthly_estimated_revenue: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::MonthlyEstimatedRevenue)), phone: T.nilable(T.nilable(String)), product_description: T.nilable(T.nilable(String)), registered_name: T.nilable(T.nilable(String)), script_addresses: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptAddresses)), script_names: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails::ScriptNames)), structure: T.nilable(T.nilable(String)), url: T.nilable(T.nilable(String))).void
               }
              def initialize(
                address: nil,
                annual_revenue: nil,
                documents: nil,
                doing_business_as: nil,
                estimated_worker_count: nil,
                id_numbers: nil,
                monthly_estimated_revenue: nil,
                phone: nil,
                product_description: nil,
                registered_name: nil,
                script_addresses: nil,
                script_names: nil,
                structure: nil,
                url: nil
              ); end
            end
            class Individual < Stripe::RequestParams
              class AdditionalAddress < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line2
                # ZIP or postal code.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :postal_code
                # Purpose of additional address.
                sig { returns(String) }
                attr_accessor :purpose
                # State, county, province, or region.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :state
                # Town or cho-me.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :town
                sig {
                  params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), purpose: String, state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  purpose: nil,
                  state: nil,
                  town: nil
                ); end
              end
              class AdditionalName < Stripe::RequestParams
                # The person's full name.
                sig { returns(T.nilable(String)) }
                attr_accessor :full_name
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                attr_accessor :given_name
                # The purpose or type of the additional name.
                sig { returns(String) }
                attr_accessor :purpose
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                attr_accessor :surname
                sig {
                  params(full_name: T.nilable(String), given_name: T.nilable(String), purpose: String, surname: T.nilable(String)).void
                 }
                def initialize(full_name: nil, given_name: nil, purpose: nil, surname: nil); end
              end
              class Address < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line2
                # ZIP or postal code.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :state
                # Town or cho-me.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :town
                sig {
                  params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil,
                  town: nil
                ); end
              end
              class DateOfBirth < Stripe::RequestParams
                # The day of the birth.
                sig { returns(Integer) }
                attr_accessor :day
                # The month of birth.
                sig { returns(Integer) }
                attr_accessor :month
                # The year of birth.
                sig { returns(Integer) }
                attr_accessor :year
                sig { params(day: Integer, month: Integer, year: Integer).void }
                def initialize(day: nil, month: nil, year: nil); end
              end
              class Documents < Stripe::RequestParams
                class CompanyAuthorization < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class Passport < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                class PrimaryVerification < Stripe::RequestParams
                  class FrontBack < Stripe::RequestParams
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(T.nilable(String))) }
                    attr_accessor :back
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :front
                    sig {
                      params(back: T.nilable(T.nilable(String)), front: T.nilable(String)).void
                     }
                    def initialize(back: nil, front: nil); end
                  end
                  # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                  sig {
                    returns(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::PrimaryVerification::FrontBack)
                   }
                  attr_accessor :front_back
                  # The format of the verification document. Currently supports `front_back` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(front_back: ::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::PrimaryVerification::FrontBack, type: String).void
                   }
                  def initialize(front_back: nil, type: nil); end
                end
                class SecondaryVerification < Stripe::RequestParams
                  class FrontBack < Stripe::RequestParams
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(T.nilable(String))) }
                    attr_accessor :back
                    # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                    sig { returns(T.nilable(String)) }
                    attr_accessor :front
                    sig {
                      params(back: T.nilable(T.nilable(String)), front: T.nilable(String)).void
                     }
                    def initialize(back: nil, front: nil); end
                  end
                  # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                  sig {
                    returns(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::SecondaryVerification::FrontBack)
                   }
                  attr_accessor :front_back
                  # The format of the verification document. Currently supports `front_back` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig {
                    params(front_back: ::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::SecondaryVerification::FrontBack, type: String).void
                   }
                  def initialize(front_back: nil, type: nil); end
                end
                class Visa < Stripe::RequestParams
                  # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                  sig { returns(T::Array[String]) }
                  attr_accessor :files
                  # The format of the document. Currently supports `files` only.
                  sig { returns(String) }
                  attr_accessor :type
                  sig { params(files: T::Array[String], type: String).void }
                  def initialize(files: nil, type: nil); end
                end
                # One or more documents that demonstrate proof that this person is authorized to represent the company.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::CompanyAuthorization))
                 }
                attr_accessor :company_authorization
                # One or more documents showing the person’s passport page with photo and personal data.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::Passport))
                 }
                attr_accessor :passport
                # An identifying document showing the person's name, either a passport or local ID card.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::PrimaryVerification)))
                 }
                attr_accessor :primary_verification
                # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::SecondaryVerification)))
                 }
                attr_accessor :secondary_verification
                # One or more documents showing the person’s visa required for living in the country where they are residing.
                sig {
                  returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::Visa))
                 }
                attr_accessor :visa
                sig {
                  params(company_authorization: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::Passport), primary_verification: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::PrimaryVerification)), secondary_verification: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::SecondaryVerification)), visa: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents::Visa)).void
                 }
                def initialize(
                  company_authorization: nil,
                  passport: nil,
                  primary_verification: nil,
                  secondary_verification: nil,
                  visa: nil
                ); end
              end
              class IdNumber < Stripe::RequestParams
                # The ID number type of an individual.
                sig { returns(String) }
                attr_accessor :type
                # The value of the ID number.
                sig { returns(String) }
                attr_accessor :value
                sig { params(type: String, value: String).void }
                def initialize(type: nil, value: nil); end
              end
              class Relationship < Stripe::RequestParams
                # Whether the person is a director of the account's identity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
                sig { returns(T.nilable(T.nilable(T::Boolean))) }
                attr_accessor :director
                # Whether the person has significant responsibility to control, manage, or direct the organization.
                sig { returns(T.nilable(T.nilable(T::Boolean))) }
                attr_accessor :executive
                # Whether the person is an owner of the account’s identity.
                sig { returns(T.nilable(T.nilable(T::Boolean))) }
                attr_accessor :owner
                # The percent owned by the person of the account's legal entity.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :percent_ownership
                # The person's title (e.g., CEO, Support Engineer).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :title
                sig {
                  params(director: T.nilable(T.nilable(T::Boolean)), executive: T.nilable(T.nilable(T::Boolean)), owner: T.nilable(T.nilable(T::Boolean)), percent_ownership: T.nilable(T.nilable(String)), title: T.nilable(T.nilable(String))).void
                 }
                def initialize(
                  director: nil,
                  executive: nil,
                  owner: nil,
                  percent_ownership: nil,
                  title: nil
                ); end
              end
              class ScriptAddresses < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :country
                  # Address line 1 (e.g., street, PO Box, or company name).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line1
                  # Address line 2 (e.g., apartment, suite, unit, or building).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line2
                  # ZIP or postal code.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :postal_code
                  # State, county, province, or region.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :state
                  # Town or cho-me.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                class Kanji < Stripe::RequestParams
                  # City, district, suburb, town, or village.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :city
                  # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :country
                  # Address line 1 (e.g., street, PO Box, or company name).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line1
                  # Address line 2 (e.g., apartment, suite, unit, or building).
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :line2
                  # ZIP or postal code.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :postal_code
                  # State, county, province, or region.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :state
                  # Town or cho-me.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :town
                  sig {
                    params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    line1: nil,
                    line2: nil,
                    postal_code: nil,
                    state: nil,
                    town: nil
                  ); end
                end
                # Kana Address.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptAddresses::Kana)))
                 }
                attr_accessor :kana
                # Kanji Address.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptAddresses::Kanji)))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptAddresses::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptAddresses::Kanji))).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              class ScriptNames < Stripe::RequestParams
                class Kana < Stripe::RequestParams
                  # The person's first or given name.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :given_name
                  # The person's last or family name.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :surname
                  sig {
                    params(given_name: T.nilable(T.nilable(String)), surname: T.nilable(T.nilable(String))).void
                   }
                  def initialize(given_name: nil, surname: nil); end
                end
                class Kanji < Stripe::RequestParams
                  # The person's first or given name.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :given_name
                  # The person's last or family name.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :surname
                  sig {
                    params(given_name: T.nilable(T.nilable(String)), surname: T.nilable(T.nilable(String))).void
                   }
                  def initialize(given_name: nil, surname: nil); end
                end
                # Persons name in kana script.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptNames::Kana)))
                 }
                attr_accessor :kana
                # Persons name in kanji script.
                sig {
                  returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptNames::Kanji)))
                 }
                attr_accessor :kanji
                sig {
                  params(kana: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptNames::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptNames::Kanji))).void
                 }
                def initialize(kana: nil, kanji: nil); end
              end
              # Additional addresses associated with the individual.
              sig {
                returns(T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::AdditionalAddress])))
               }
              attr_accessor :additional_addresses
              # Additional names (e.g. aliases) associated with the individual.
              sig {
                returns(T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::AdditionalName])))
               }
              attr_accessor :additional_names
              # The individual's residential address.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Address)))
               }
              attr_accessor :address
              # The individual's date of birth.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::DateOfBirth)))
               }
              attr_accessor :date_of_birth
              # Documents that may be submitted to satisfy various informational requests.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents)))
               }
              attr_accessor :documents
              # The individual's email address.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :email
              # The individual's first name.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :given_name
              # The identification numbers (e.g., SSN) associated with the individual.
              sig {
                returns(T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::IdNumber])))
               }
              attr_accessor :id_numbers
              # The individual's gender (International regulations require either "male" or "female").
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :legal_gender
              # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
              attr_accessor :metadata
              # The countries where the individual is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :nationalities
              # The individual's phone number.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :phone
              # The individual's political exposure.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :political_exposure
              # The relationship that this individual has with the account's identity.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Relationship)))
               }
              attr_accessor :relationship
              # The script addresses (e.g., non-Latin characters) associated with the individual.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptAddresses)))
               }
              attr_accessor :script_addresses
              # The individuals primary name in non latin script.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptNames)))
               }
              attr_accessor :script_names
              # The individual's last name.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :surname
              sig {
                params(additional_addresses: T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::AdditionalAddress])), additional_names: T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::AdditionalName])), address: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Address)), date_of_birth: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::DateOfBirth)), documents: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Documents)), email: T.nilable(T.nilable(String)), given_name: T.nilable(T.nilable(String)), id_numbers: T.nilable(T.nilable(T::Array[::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::IdNumber])), legal_gender: T.nilable(T.nilable(String)), metadata: T.nilable(T::Hash[String, T.nilable(String)]), nationalities: T.nilable(T::Array[String]), phone: T.nilable(T.nilable(String)), political_exposure: T.nilable(T.nilable(String)), relationship: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::Relationship)), script_addresses: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptAddresses)), script_names: T.nilable(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual::ScriptNames)), surname: T.nilable(T.nilable(String))).void
               }
              def initialize(
                additional_addresses: nil,
                additional_names: nil,
                address: nil,
                date_of_birth: nil,
                documents: nil,
                email: nil,
                given_name: nil,
                id_numbers: nil,
                legal_gender: nil,
                metadata: nil,
                nationalities: nil,
                phone: nil,
                political_exposure: nil,
                relationship: nil,
                script_addresses: nil,
                script_names: nil,
                surname: nil
              ); end
            end
            # Attestations from the identity's key people, e.g. owners, executives, directors.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations))
             }
            attr_accessor :attestations
            # Information about the company or business.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails))
             }
            attr_accessor :business_details
            # The country in which the account holder resides, or in which the business is legally established. This should be an [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code.
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # The entity type.
            sig { returns(T.nilable(String)) }
            attr_accessor :entity_type
            # Information about the individual represented by the Account. This property is `null` unless `entity_type` is set to `individual`.
            sig {
              returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual))
             }
            attr_accessor :individual
            sig {
              params(attestations: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Attestations), business_details: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::BusinessDetails), country: T.nilable(String), entity_type: T.nilable(String), individual: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity::Individual)).void
             }
            def initialize(
              attestations: nil,
              business_details: nil,
              country: nil,
              entity_type: nil,
              individual: nil
            ); end
          end
          # An Account Configuration which allows the Account to take on a key persona across Stripe products.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration))
           }
          attr_accessor :configuration
          # The default contact email address for the Account.
          sig { returns(T.nilable(String)) }
          attr_accessor :contact_email
          # A value indicating the Stripe dashboard this Account has access to. This will depend on which configurations are enabled for this account.
          sig { returns(T.nilable(String)) }
          attr_accessor :dashboard
          # Default values to be used on Account Configurations.
          sig { returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Defaults)) }
          attr_accessor :defaults
          # A descriptive name for the Account. This name will be surfaced in the Stripe Dashboard and on any invoices sent to the Account.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # Information about the company, individual, and business represented by the Account.
          sig { returns(T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity)) }
          attr_accessor :identity
          # Additional fields to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
          sig {
            params(configuration: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Configuration), contact_email: T.nilable(String), dashboard: T.nilable(String), defaults: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Defaults), display_name: T.nilable(String), identity: T.nilable(::Stripe::V2::Core::AccountService::UpdateParams::Identity), include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
           }
          def initialize(
            configuration: nil,
            contact_email: nil,
            dashboard: nil,
            defaults: nil,
            display_name: nil,
            identity: nil,
            include: nil,
            metadata: nil
          ); end
        end
        # Removes access to the Account and its associated resources.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::AccountService::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Account)
         }
        def close(id, params = {}, opts = {}); end

        # An Account is a representation of a company, individual or other entity that a user interacts with. Accounts contain identifying information about the entity, and configurations that store the features an account has access to. An account can be configured as any or all of the following configurations: Customer, Merchant and/or Recipient.
        sig {
          params(params: T.any(::Stripe::V2::Core::AccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Account)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of Accounts.
        sig {
          params(params: T.any(::Stripe::V2::Core::AccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an Account.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::AccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Account)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates the details of an Account.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::AccountService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Account)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end