# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountService < StripeService
    attr_reader :capabilities
    attr_reader :external_accounts
    attr_reader :login_links
    attr_reader :persons
    class DeleteParams < Stripe::RequestParams

    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class BankAccount < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        sig { returns(String) }
        attr_accessor :account_holder_name
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        sig { returns(String) }
        attr_accessor :account_holder_type
        # The account number for the bank account, in string form. Must be a checking account.
        sig { returns(String) }
        attr_accessor :account_number
        # The country in which the bank account is located.
        sig { returns(String) }
        attr_accessor :country
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        sig { returns(String) }
        attr_accessor :currency
        # The routing number, sort code, or other country-appropriateinstitution number for the bank account. For US bank accounts, this is required and should bethe ACH routing number, not the wire routing number. If you are providing an IBAN for`account_number`, this field is not required.
        sig { returns(String) }
        attr_accessor :routing_number
        sig {
          params(object: String, account_holder_name: String, account_holder_type: String, account_number: String, country: String, currency: String, routing_number: String).void
         }
        def initialize(
          object: nil,
          account_holder_name: nil,
          account_holder_type: nil,
          account_number: nil,
          country: nil,
          currency: nil,
          routing_number: nil
        ); end
      end
      class BusinessProfile < Stripe::RequestParams
        class AnnualRevenue < Stripe::RequestParams
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
          sig { returns(String) }
          attr_accessor :fiscal_year_end
          sig { params(amount: Integer, currency: String, fiscal_year_end: String).void }
          def initialize(amount: nil, currency: nil, fiscal_year_end: nil); end
        end
        class MonthlyEstimatedRevenue < Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          sig { params(amount: Integer, currency: String).void }
          def initialize(amount: nil, currency: nil); end
        end
        class SupportAddress < Stripe::RequestParams
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
        # The applicant's gross annual revenue for its preceding fiscal year.
        sig { returns(::Stripe::AccountService::UpdateParams::BusinessProfile::AnnualRevenue) }
        attr_accessor :annual_revenue
        # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
        sig { returns(Integer) }
        attr_accessor :estimated_worker_count
        # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
        sig { returns(String) }
        attr_accessor :mcc
        # An estimate of the monthly revenue of the business. Only accepted for accounts in Brazil and India.
        sig {
          returns(::Stripe::AccountService::UpdateParams::BusinessProfile::MonthlyEstimatedRevenue)
         }
        attr_accessor :monthly_estimated_revenue
        # The customer-facing business name.
        sig { returns(String) }
        attr_accessor :name
        # Internal-only description of the product sold by, or service provided by, the business. Used by Stripe for risk and underwriting purposes.
        sig { returns(String) }
        attr_accessor :product_description
        # A publicly available mailing address for sending support issues to.
        sig { returns(::Stripe::AccountService::UpdateParams::BusinessProfile::SupportAddress) }
        attr_accessor :support_address
        # A publicly available email address for sending support issues to.
        sig { returns(String) }
        attr_accessor :support_email
        # A publicly available phone number to call with support issues.
        sig { returns(String) }
        attr_accessor :support_phone
        # A publicly available website for handling support issues.
        sig { returns(T.nilable(String)) }
        attr_accessor :support_url
        # The business's publicly available website.
        sig { returns(String) }
        attr_accessor :url
        sig {
          params(annual_revenue: ::Stripe::AccountService::UpdateParams::BusinessProfile::AnnualRevenue, estimated_worker_count: Integer, mcc: String, monthly_estimated_revenue: ::Stripe::AccountService::UpdateParams::BusinessProfile::MonthlyEstimatedRevenue, name: String, product_description: String, support_address: ::Stripe::AccountService::UpdateParams::BusinessProfile::SupportAddress, support_email: String, support_phone: String, support_url: T.nilable(String), url: String).void
         }
        def initialize(
          annual_revenue: nil,
          estimated_worker_count: nil,
          mcc: nil,
          monthly_estimated_revenue: nil,
          name: nil,
          product_description: nil,
          support_address: nil,
          support_email: nil,
          support_phone: nil,
          support_url: nil,
          url: nil
        ); end
      end
      class Capabilities < Stripe::RequestParams
        class AcssDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AffirmPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AfterpayClearpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AlmaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AmazonPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AuBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AutomaticIndirectTax < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BacsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BancontactPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BlikPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BoletoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CartesBancairesPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CashappPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class EpsPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class FpxPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GbBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GiropayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GopayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GrabpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IdBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IdBankTransferPaymentsBca < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IdealPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IndiaInternationalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class JcbPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class JpBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KakaoPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KlarnaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KonbiniPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KrCardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class LegacyPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class LinkPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MbWayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MobilepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MultibancoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MxBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class NaverPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class OxxoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class P24Payments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PayByBankPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaycoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaynowPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaypalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaytoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PromptpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class QrisPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class RechnungPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class RevolutPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SamsungPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SepaBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SepaDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class ShopeepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SofortPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SwishPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099K < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099Misc < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class Transfers < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class Treasury < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TreasuryEvolve < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TreasuryFifthThird < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TreasuryGoldmanSachs < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TwintPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class UsBankAccountAchPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class UsBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class ZipPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        # The acss_debit_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::AcssDebitPayments) }
        attr_accessor :acss_debit_payments
        # The affirm_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::AffirmPayments) }
        attr_accessor :affirm_payments
        # The afterpay_clearpay_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::AfterpayClearpayPayments)
         }
        attr_accessor :afterpay_clearpay_payments
        # The alma_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::AlmaPayments) }
        attr_accessor :alma_payments
        # The amazon_pay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::AmazonPayPayments) }
        attr_accessor :amazon_pay_payments
        # The au_becs_debit_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::AuBecsDebitPayments) }
        attr_accessor :au_becs_debit_payments
        # The automatic_indirect_tax capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::AutomaticIndirectTax) }
        attr_accessor :automatic_indirect_tax
        # The bacs_debit_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::BacsDebitPayments) }
        attr_accessor :bacs_debit_payments
        # The bancontact_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::BancontactPayments) }
        attr_accessor :bancontact_payments
        # The bank_transfer_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::BankTransferPayments) }
        attr_accessor :bank_transfer_payments
        # The blik_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::BlikPayments) }
        attr_accessor :blik_payments
        # The boleto_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::BoletoPayments) }
        attr_accessor :boleto_payments
        # The card_issuing capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::CardIssuing) }
        attr_accessor :card_issuing
        # The card_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::CardPayments) }
        attr_accessor :card_payments
        # The cartes_bancaires_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::CartesBancairesPayments)
         }
        attr_accessor :cartes_bancaires_payments
        # The cashapp_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::CashappPayments) }
        attr_accessor :cashapp_payments
        # The eps_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::EpsPayments) }
        attr_accessor :eps_payments
        # The fpx_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::FpxPayments) }
        attr_accessor :fpx_payments
        # The gb_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::GbBankTransferPayments)
         }
        attr_accessor :gb_bank_transfer_payments
        # The giropay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::GiropayPayments) }
        attr_accessor :giropay_payments
        # The gopay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::GopayPayments) }
        attr_accessor :gopay_payments
        # The grabpay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::GrabpayPayments) }
        attr_accessor :grabpay_payments
        # The id_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::IdBankTransferPayments)
         }
        attr_accessor :id_bank_transfer_payments
        # The id_bank_transfer_payments_bca capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::IdBankTransferPaymentsBca)
         }
        attr_accessor :id_bank_transfer_payments_bca
        # The ideal_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::IdealPayments) }
        attr_accessor :ideal_payments
        # The india_international_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::IndiaInternationalPayments)
         }
        attr_accessor :india_international_payments
        # The jcb_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::JcbPayments) }
        attr_accessor :jcb_payments
        # The jp_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::JpBankTransferPayments)
         }
        attr_accessor :jp_bank_transfer_payments
        # The kakao_pay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::KakaoPayPayments) }
        attr_accessor :kakao_pay_payments
        # The klarna_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::KlarnaPayments) }
        attr_accessor :klarna_payments
        # The konbini_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::KonbiniPayments) }
        attr_accessor :konbini_payments
        # The kr_card_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::KrCardPayments) }
        attr_accessor :kr_card_payments
        # The legacy_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::LegacyPayments) }
        attr_accessor :legacy_payments
        # The link_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::LinkPayments) }
        attr_accessor :link_payments
        # The mb_way_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::MbWayPayments) }
        attr_accessor :mb_way_payments
        # The mobilepay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::MobilepayPayments) }
        attr_accessor :mobilepay_payments
        # The multibanco_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::MultibancoPayments) }
        attr_accessor :multibanco_payments
        # The mx_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::MxBankTransferPayments)
         }
        attr_accessor :mx_bank_transfer_payments
        # The naver_pay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::NaverPayPayments) }
        attr_accessor :naver_pay_payments
        # The oxxo_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::OxxoPayments) }
        attr_accessor :oxxo_payments
        # The p24_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::P24Payments) }
        attr_accessor :p24_payments
        # The pay_by_bank_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::PayByBankPayments) }
        attr_accessor :pay_by_bank_payments
        # The payco_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::PaycoPayments) }
        attr_accessor :payco_payments
        # The paynow_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::PaynowPayments) }
        attr_accessor :paynow_payments
        # The paypal_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::PaypalPayments) }
        attr_accessor :paypal_payments
        # The payto_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::PaytoPayments) }
        attr_accessor :payto_payments
        # The promptpay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::PromptpayPayments) }
        attr_accessor :promptpay_payments
        # The qris_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::QrisPayments) }
        attr_accessor :qris_payments
        # The rechnung_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::RechnungPayments) }
        attr_accessor :rechnung_payments
        # The revolut_pay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::RevolutPayPayments) }
        attr_accessor :revolut_pay_payments
        # The samsung_pay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::SamsungPayPayments) }
        attr_accessor :samsung_pay_payments
        # The sepa_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::SepaBankTransferPayments)
         }
        attr_accessor :sepa_bank_transfer_payments
        # The sepa_debit_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::SepaDebitPayments) }
        attr_accessor :sepa_debit_payments
        # The shopeepay_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::ShopeepayPayments) }
        attr_accessor :shopeepay_payments
        # The sofort_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::SofortPayments) }
        attr_accessor :sofort_payments
        # The swish_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::SwishPayments) }
        attr_accessor :swish_payments
        # The tax_reporting_us_1099_k capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099K) }
        attr_accessor :tax_reporting_us_1099_k
        # The tax_reporting_us_1099_misc capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099Misc)
         }
        attr_accessor :tax_reporting_us_1099_misc
        # The transfers capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::Transfers) }
        attr_accessor :transfers
        # The treasury capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::Treasury) }
        attr_accessor :treasury
        # The treasury_evolve capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::TreasuryEvolve) }
        attr_accessor :treasury_evolve
        # The treasury_fifth_third capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::TreasuryFifthThird) }
        attr_accessor :treasury_fifth_third
        # The treasury_goldman_sachs capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::TreasuryGoldmanSachs) }
        attr_accessor :treasury_goldman_sachs
        # The twint_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::TwintPayments) }
        attr_accessor :twint_payments
        # The us_bank_account_ach_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::UsBankAccountAchPayments)
         }
        attr_accessor :us_bank_account_ach_payments
        # The us_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Capabilities::UsBankTransferPayments)
         }
        attr_accessor :us_bank_transfer_payments
        # The zip_payments capability.
        sig { returns(::Stripe::AccountService::UpdateParams::Capabilities::ZipPayments) }
        attr_accessor :zip_payments
        sig {
          params(acss_debit_payments: ::Stripe::AccountService::UpdateParams::Capabilities::AcssDebitPayments, affirm_payments: ::Stripe::AccountService::UpdateParams::Capabilities::AffirmPayments, afterpay_clearpay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::AfterpayClearpayPayments, alma_payments: ::Stripe::AccountService::UpdateParams::Capabilities::AlmaPayments, amazon_pay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::AmazonPayPayments, au_becs_debit_payments: ::Stripe::AccountService::UpdateParams::Capabilities::AuBecsDebitPayments, automatic_indirect_tax: ::Stripe::AccountService::UpdateParams::Capabilities::AutomaticIndirectTax, bacs_debit_payments: ::Stripe::AccountService::UpdateParams::Capabilities::BacsDebitPayments, bancontact_payments: ::Stripe::AccountService::UpdateParams::Capabilities::BancontactPayments, bank_transfer_payments: ::Stripe::AccountService::UpdateParams::Capabilities::BankTransferPayments, blik_payments: ::Stripe::AccountService::UpdateParams::Capabilities::BlikPayments, boleto_payments: ::Stripe::AccountService::UpdateParams::Capabilities::BoletoPayments, card_issuing: ::Stripe::AccountService::UpdateParams::Capabilities::CardIssuing, card_payments: ::Stripe::AccountService::UpdateParams::Capabilities::CardPayments, cartes_bancaires_payments: ::Stripe::AccountService::UpdateParams::Capabilities::CartesBancairesPayments, cashapp_payments: ::Stripe::AccountService::UpdateParams::Capabilities::CashappPayments, eps_payments: ::Stripe::AccountService::UpdateParams::Capabilities::EpsPayments, fpx_payments: ::Stripe::AccountService::UpdateParams::Capabilities::FpxPayments, gb_bank_transfer_payments: ::Stripe::AccountService::UpdateParams::Capabilities::GbBankTransferPayments, giropay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::GiropayPayments, gopay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::GopayPayments, grabpay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::GrabpayPayments, id_bank_transfer_payments: ::Stripe::AccountService::UpdateParams::Capabilities::IdBankTransferPayments, id_bank_transfer_payments_bca: ::Stripe::AccountService::UpdateParams::Capabilities::IdBankTransferPaymentsBca, ideal_payments: ::Stripe::AccountService::UpdateParams::Capabilities::IdealPayments, india_international_payments: ::Stripe::AccountService::UpdateParams::Capabilities::IndiaInternationalPayments, jcb_payments: ::Stripe::AccountService::UpdateParams::Capabilities::JcbPayments, jp_bank_transfer_payments: ::Stripe::AccountService::UpdateParams::Capabilities::JpBankTransferPayments, kakao_pay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::KakaoPayPayments, klarna_payments: ::Stripe::AccountService::UpdateParams::Capabilities::KlarnaPayments, konbini_payments: ::Stripe::AccountService::UpdateParams::Capabilities::KonbiniPayments, kr_card_payments: ::Stripe::AccountService::UpdateParams::Capabilities::KrCardPayments, legacy_payments: ::Stripe::AccountService::UpdateParams::Capabilities::LegacyPayments, link_payments: ::Stripe::AccountService::UpdateParams::Capabilities::LinkPayments, mb_way_payments: ::Stripe::AccountService::UpdateParams::Capabilities::MbWayPayments, mobilepay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::MobilepayPayments, multibanco_payments: ::Stripe::AccountService::UpdateParams::Capabilities::MultibancoPayments, mx_bank_transfer_payments: ::Stripe::AccountService::UpdateParams::Capabilities::MxBankTransferPayments, naver_pay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::NaverPayPayments, oxxo_payments: ::Stripe::AccountService::UpdateParams::Capabilities::OxxoPayments, p24_payments: ::Stripe::AccountService::UpdateParams::Capabilities::P24Payments, pay_by_bank_payments: ::Stripe::AccountService::UpdateParams::Capabilities::PayByBankPayments, payco_payments: ::Stripe::AccountService::UpdateParams::Capabilities::PaycoPayments, paynow_payments: ::Stripe::AccountService::UpdateParams::Capabilities::PaynowPayments, paypal_payments: ::Stripe::AccountService::UpdateParams::Capabilities::PaypalPayments, payto_payments: ::Stripe::AccountService::UpdateParams::Capabilities::PaytoPayments, promptpay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::PromptpayPayments, qris_payments: ::Stripe::AccountService::UpdateParams::Capabilities::QrisPayments, rechnung_payments: ::Stripe::AccountService::UpdateParams::Capabilities::RechnungPayments, revolut_pay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::RevolutPayPayments, samsung_pay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::SamsungPayPayments, sepa_bank_transfer_payments: ::Stripe::AccountService::UpdateParams::Capabilities::SepaBankTransferPayments, sepa_debit_payments: ::Stripe::AccountService::UpdateParams::Capabilities::SepaDebitPayments, shopeepay_payments: ::Stripe::AccountService::UpdateParams::Capabilities::ShopeepayPayments, sofort_payments: ::Stripe::AccountService::UpdateParams::Capabilities::SofortPayments, swish_payments: ::Stripe::AccountService::UpdateParams::Capabilities::SwishPayments, tax_reporting_us_1099_k: ::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099K, tax_reporting_us_1099_misc: ::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099Misc, transfers: ::Stripe::AccountService::UpdateParams::Capabilities::Transfers, treasury: ::Stripe::AccountService::UpdateParams::Capabilities::Treasury, treasury_evolve: ::Stripe::AccountService::UpdateParams::Capabilities::TreasuryEvolve, treasury_fifth_third: ::Stripe::AccountService::UpdateParams::Capabilities::TreasuryFifthThird, treasury_goldman_sachs: ::Stripe::AccountService::UpdateParams::Capabilities::TreasuryGoldmanSachs, twint_payments: ::Stripe::AccountService::UpdateParams::Capabilities::TwintPayments, us_bank_account_ach_payments: ::Stripe::AccountService::UpdateParams::Capabilities::UsBankAccountAchPayments, us_bank_transfer_payments: ::Stripe::AccountService::UpdateParams::Capabilities::UsBankTransferPayments, zip_payments: ::Stripe::AccountService::UpdateParams::Capabilities::ZipPayments).void
         }
        def initialize(
          acss_debit_payments: nil,
          affirm_payments: nil,
          afterpay_clearpay_payments: nil,
          alma_payments: nil,
          amazon_pay_payments: nil,
          au_becs_debit_payments: nil,
          automatic_indirect_tax: nil,
          bacs_debit_payments: nil,
          bancontact_payments: nil,
          bank_transfer_payments: nil,
          blik_payments: nil,
          boleto_payments: nil,
          card_issuing: nil,
          card_payments: nil,
          cartes_bancaires_payments: nil,
          cashapp_payments: nil,
          eps_payments: nil,
          fpx_payments: nil,
          gb_bank_transfer_payments: nil,
          giropay_payments: nil,
          gopay_payments: nil,
          grabpay_payments: nil,
          id_bank_transfer_payments: nil,
          id_bank_transfer_payments_bca: nil,
          ideal_payments: nil,
          india_international_payments: nil,
          jcb_payments: nil,
          jp_bank_transfer_payments: nil,
          kakao_pay_payments: nil,
          klarna_payments: nil,
          konbini_payments: nil,
          kr_card_payments: nil,
          legacy_payments: nil,
          link_payments: nil,
          mb_way_payments: nil,
          mobilepay_payments: nil,
          multibanco_payments: nil,
          mx_bank_transfer_payments: nil,
          naver_pay_payments: nil,
          oxxo_payments: nil,
          p24_payments: nil,
          pay_by_bank_payments: nil,
          payco_payments: nil,
          paynow_payments: nil,
          paypal_payments: nil,
          payto_payments: nil,
          promptpay_payments: nil,
          qris_payments: nil,
          rechnung_payments: nil,
          revolut_pay_payments: nil,
          samsung_pay_payments: nil,
          sepa_bank_transfer_payments: nil,
          sepa_debit_payments: nil,
          shopeepay_payments: nil,
          sofort_payments: nil,
          swish_payments: nil,
          tax_reporting_us_1099_k: nil,
          tax_reporting_us_1099_misc: nil,
          transfers: nil,
          treasury: nil,
          treasury_evolve: nil,
          treasury_fifth_third: nil,
          treasury_goldman_sachs: nil,
          twint_payments: nil,
          us_bank_account_ach_payments: nil,
          us_bank_transfer_payments: nil,
          zip_payments: nil
        ); end
      end
      class Card < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # Attribute for param field address_city
        sig { returns(String) }
        attr_accessor :address_city
        # Attribute for param field address_country
        sig { returns(String) }
        attr_accessor :address_country
        # Attribute for param field address_line1
        sig { returns(String) }
        attr_accessor :address_line1
        # Attribute for param field address_line2
        sig { returns(String) }
        attr_accessor :address_line2
        # Attribute for param field address_state
        sig { returns(String) }
        attr_accessor :address_state
        # Attribute for param field address_zip
        sig { returns(String) }
        attr_accessor :address_zip
        # Attribute for param field currency
        sig { returns(String) }
        attr_accessor :currency
        # Attribute for param field cvc
        sig { returns(String) }
        attr_accessor :cvc
        # Attribute for param field exp_month
        sig { returns(Integer) }
        attr_accessor :exp_month
        # Attribute for param field exp_year
        sig { returns(Integer) }
        attr_accessor :exp_year
        # Attribute for param field name
        sig { returns(String) }
        attr_accessor :name
        # Attribute for param field number
        sig { returns(String) }
        attr_accessor :number
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # Attribute for param field default_for_currency
        sig { returns(T::Boolean) }
        attr_accessor :default_for_currency
        sig {
          params(object: String, address_city: String, address_country: String, address_line1: String, address_line2: String, address_state: String, address_zip: String, currency: String, cvc: String, exp_month: Integer, exp_year: Integer, name: String, number: String, metadata: T::Hash[String, String], default_for_currency: T::Boolean).void
         }
        def initialize(
          object: nil,
          address_city: nil,
          address_country: nil,
          address_line1: nil,
          address_line2: nil,
          address_state: nil,
          address_zip: nil,
          currency: nil,
          cvc: nil,
          exp_month: nil,
          exp_year: nil,
          name: nil,
          number: nil,
          metadata: nil,
          default_for_currency: nil
        ); end
      end
      class CardToken < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # Attribute for param field currency
        sig { returns(String) }
        attr_accessor :currency
        # Attribute for param field token
        sig { returns(String) }
        attr_accessor :token
        sig { params(object: String, currency: String, token: String).void }
        def initialize(object: nil, currency: nil, token: nil); end
      end
      class Company < Stripe::RequestParams
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class AddressKanji < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class DirectorshipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the directorship declaration attestation was made.
          sig { returns(Integer) }
          attr_accessor :date
          # The IP address from which the directorship declaration attestation was made.
          sig { returns(String) }
          attr_accessor :ip
          # The user agent of the browser from which the directorship declaration attestation was made.
          sig { returns(String) }
          attr_accessor :user_agent
          sig { params(date: Integer, ip: String, user_agent: String).void }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class OwnershipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the beneficial owner attestation was made.
          sig { returns(Integer) }
          attr_accessor :date
          # The IP address from which the beneficial owner attestation was made.
          sig { returns(String) }
          attr_accessor :ip
          # The user agent of the browser from which the beneficial owner attestation was made.
          sig { returns(String) }
          attr_accessor :user_agent
          sig { params(date: Integer, ip: String, user_agent: String).void }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class Verification < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :back
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :front
            sig { params(back: String, front: String).void }
            def initialize(back: nil, front: nil); end
          end
          # A document verifying the business.
          sig { returns(::Stripe::AccountService::UpdateParams::Company::Verification::Document) }
          attr_accessor :document
          sig {
            params(document: ::Stripe::AccountService::UpdateParams::Company::Verification::Document).void
           }
          def initialize(document: nil); end
        end
        # The company's primary address.
        sig { returns(::Stripe::AccountService::UpdateParams::Company::Address) }
        attr_accessor :address
        # The Kana variation of the company's primary address (Japan only).
        sig { returns(::Stripe::AccountService::UpdateParams::Company::AddressKana) }
        attr_accessor :address_kana
        # The Kanji variation of the company's primary address (Japan only).
        sig { returns(::Stripe::AccountService::UpdateParams::Company::AddressKanji) }
        attr_accessor :address_kanji
        # Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
        sig { returns(T::Boolean) }
        attr_accessor :directors_provided
        # This hash is used to attest that the directors information provided to Stripe is both current and correct.
        sig { returns(::Stripe::AccountService::UpdateParams::Company::DirectorshipDeclaration) }
        attr_accessor :directorship_declaration
        # Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](/api/persons) for accounts with a `relationship.executive` requirement.
        sig { returns(T::Boolean) }
        attr_accessor :executives_provided
        # The export license ID number of the company, also referred as Import Export Code (India only).
        sig { returns(String) }
        attr_accessor :export_license_id
        # The purpose code to use for export transactions (India only).
        sig { returns(String) }
        attr_accessor :export_purpose_code
        # The company's legal name.
        sig { returns(String) }
        attr_accessor :name
        # The Kana variation of the company's legal name (Japan only).
        sig { returns(String) }
        attr_accessor :name_kana
        # The Kanji variation of the company's legal name (Japan only).
        sig { returns(String) }
        attr_accessor :name_kanji
        # Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](/api/persons) for accounts with a `relationship.owner` requirement.
        sig { returns(T::Boolean) }
        attr_accessor :owners_provided
        # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
        sig { returns(::Stripe::AccountService::UpdateParams::Company::OwnershipDeclaration) }
        attr_accessor :ownership_declaration
        # Attribute for param field ownership_exemption_reason
        sig { returns(T.nilable(String)) }
        attr_accessor :ownership_exemption_reason
        # The company's phone number (used for verification).
        sig { returns(String) }
        attr_accessor :phone
        # The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong).
        sig { returns(String) }
        attr_accessor :registration_number
        # The category identifying the legal structure of the company or legal entity. See [Business structure](/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value.
        sig { returns(T.nilable(String)) }
        attr_accessor :structure
        # The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.)
        sig { returns(String) }
        attr_accessor :tax_id
        # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
        sig { returns(String) }
        attr_accessor :tax_id_registrar
        # The VAT number of the company.
        sig { returns(String) }
        attr_accessor :vat_id
        # Information on the verification state of the company.
        sig { returns(::Stripe::AccountService::UpdateParams::Company::Verification) }
        attr_accessor :verification
        sig {
          params(address: ::Stripe::AccountService::UpdateParams::Company::Address, address_kana: ::Stripe::AccountService::UpdateParams::Company::AddressKana, address_kanji: ::Stripe::AccountService::UpdateParams::Company::AddressKanji, directors_provided: T::Boolean, directorship_declaration: ::Stripe::AccountService::UpdateParams::Company::DirectorshipDeclaration, executives_provided: T::Boolean, export_license_id: String, export_purpose_code: String, name: String, name_kana: String, name_kanji: String, owners_provided: T::Boolean, ownership_declaration: ::Stripe::AccountService::UpdateParams::Company::OwnershipDeclaration, ownership_exemption_reason: T.nilable(String), phone: String, registration_number: String, structure: T.nilable(String), tax_id: String, tax_id_registrar: String, vat_id: String, verification: ::Stripe::AccountService::UpdateParams::Company::Verification).void
         }
        def initialize(
          address: nil,
          address_kana: nil,
          address_kanji: nil,
          directors_provided: nil,
          directorship_declaration: nil,
          executives_provided: nil,
          export_license_id: nil,
          export_purpose_code: nil,
          name: nil,
          name_kana: nil,
          name_kanji: nil,
          owners_provided: nil,
          ownership_declaration: nil,
          ownership_exemption_reason: nil,
          phone: nil,
          registration_number: nil,
          structure: nil,
          tax_id: nil,
          tax_id_registrar: nil,
          vat_id: nil,
          verification: nil
        ); end
      end
      class Documents < Stripe::RequestParams
        class BankAccountOwnershipVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyLicense < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyMemorandumOfAssociation < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyMinisterialDecree < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyRegistrationVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyTaxIdVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class ProofOfRegistration < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Documents::BankAccountOwnershipVerification)
         }
        attr_accessor :bank_account_ownership_verification
        # One or more documents that demonstrate proof of a company's license to operate.
        sig { returns(::Stripe::AccountService::UpdateParams::Documents::CompanyLicense) }
        attr_accessor :company_license
        # One or more documents showing the company's Memorandum of Association.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Documents::CompanyMemorandumOfAssociation)
         }
        attr_accessor :company_memorandum_of_association
        # (Certain countries only) One or more documents showing the ministerial decree legalizing the company's establishment.
        sig { returns(::Stripe::AccountService::UpdateParams::Documents::CompanyMinisterialDecree) }
        attr_accessor :company_ministerial_decree
        # One or more documents that demonstrate proof of a company's registration with the appropriate local authorities.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Documents::CompanyRegistrationVerification)
         }
        attr_accessor :company_registration_verification
        # One or more documents that demonstrate proof of a company's tax ID.
        sig { returns(::Stripe::AccountService::UpdateParams::Documents::CompanyTaxIdVerification) }
        attr_accessor :company_tax_id_verification
        # One or more documents showing the company’s proof of registration with the national business registry.
        sig { returns(::Stripe::AccountService::UpdateParams::Documents::ProofOfRegistration) }
        attr_accessor :proof_of_registration
        # One or more documents that demonstrate proof of ultimate beneficial ownership.
        sig {
          returns(::Stripe::AccountService::UpdateParams::Documents::ProofOfUltimateBeneficialOwnership)
         }
        attr_accessor :proof_of_ultimate_beneficial_ownership
        sig {
          params(bank_account_ownership_verification: ::Stripe::AccountService::UpdateParams::Documents::BankAccountOwnershipVerification, company_license: ::Stripe::AccountService::UpdateParams::Documents::CompanyLicense, company_memorandum_of_association: ::Stripe::AccountService::UpdateParams::Documents::CompanyMemorandumOfAssociation, company_ministerial_decree: ::Stripe::AccountService::UpdateParams::Documents::CompanyMinisterialDecree, company_registration_verification: ::Stripe::AccountService::UpdateParams::Documents::CompanyRegistrationVerification, company_tax_id_verification: ::Stripe::AccountService::UpdateParams::Documents::CompanyTaxIdVerification, proof_of_registration: ::Stripe::AccountService::UpdateParams::Documents::ProofOfRegistration, proof_of_ultimate_beneficial_ownership: ::Stripe::AccountService::UpdateParams::Documents::ProofOfUltimateBeneficialOwnership).void
         }
        def initialize(
          bank_account_ownership_verification: nil,
          company_license: nil,
          company_memorandum_of_association: nil,
          company_ministerial_decree: nil,
          company_registration_verification: nil,
          company_tax_id_verification: nil,
          proof_of_registration: nil,
          proof_of_ultimate_beneficial_ownership: nil
        ); end
      end
      class Groups < Stripe::RequestParams
        # The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://stripe.com/docs/connect/platform-pricing-tools) for details.
        sig { returns(T.nilable(String)) }
        attr_accessor :payments_pricing
        sig { params(payments_pricing: T.nilable(String)).void }
        def initialize(payments_pricing: nil); end
      end
      class Individual < Stripe::RequestParams
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class AddressKanji < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class RegisteredAddress < Stripe::RequestParams
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
        class Relationship < Stripe::RequestParams
          # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
          sig { returns(T::Boolean) }
          attr_accessor :director
          # Whether the person has significant responsibility to control, manage, or direct the organization.
          sig { returns(T::Boolean) }
          attr_accessor :executive
          # Whether the person is an owner of the account’s legal entity.
          sig { returns(T::Boolean) }
          attr_accessor :owner
          # The percent owned by the person of the account's legal entity.
          sig { returns(T.nilable(Float)) }
          attr_accessor :percent_ownership
          # The person's title (e.g., CEO, Support Engineer).
          sig { returns(String) }
          attr_accessor :title
          sig {
            params(director: T::Boolean, executive: T::Boolean, owner: T::Boolean, percent_ownership: T.nilable(Float), title: String).void
           }
          def initialize(
            director: nil,
            executive: nil,
            owner: nil,
            percent_ownership: nil,
            title: nil
          ); end
        end
        class Verification < Stripe::RequestParams
          class AdditionalDocument < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :front
            sig { params(back: String, front: String).void }
            def initialize(back: nil, front: nil); end
          end
          class Document < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :front
            sig { params(back: String, front: String).void }
            def initialize(back: nil, front: nil); end
          end
          # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
          sig {
            returns(::Stripe::AccountService::UpdateParams::Individual::Verification::AdditionalDocument)
           }
          attr_accessor :additional_document
          # An identifying document, either a passport or local ID card.
          sig {
            returns(::Stripe::AccountService::UpdateParams::Individual::Verification::Document)
           }
          attr_accessor :document
          sig {
            params(additional_document: ::Stripe::AccountService::UpdateParams::Individual::Verification::AdditionalDocument, document: ::Stripe::AccountService::UpdateParams::Individual::Verification::Document).void
           }
          def initialize(additional_document: nil, document: nil); end
        end
        # The individual's primary address.
        sig { returns(::Stripe::AccountService::UpdateParams::Individual::Address) }
        attr_accessor :address
        # The Kana variation of the individual's primary address (Japan only).
        sig { returns(::Stripe::AccountService::UpdateParams::Individual::AddressKana) }
        attr_accessor :address_kana
        # The Kanji variation of the individual's primary address (Japan only).
        sig { returns(::Stripe::AccountService::UpdateParams::Individual::AddressKanji) }
        attr_accessor :address_kanji
        # The individual's date of birth.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Dob)) }
        attr_accessor :dob
        # The individual's email address.
        sig { returns(String) }
        attr_accessor :email
        # The individual's first name.
        sig { returns(String) }
        attr_accessor :first_name
        # The Kana variation of the individual's first name (Japan only).
        sig { returns(String) }
        attr_accessor :first_name_kana
        # The Kanji variation of the individual's first name (Japan only).
        sig { returns(String) }
        attr_accessor :first_name_kanji
        # A list of alternate names or aliases that the individual is known by.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :full_name_aliases
        # The individual's gender
        sig { returns(String) }
        attr_accessor :gender
        # The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(String) }
        attr_accessor :id_number
        # The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(String) }
        attr_accessor :id_number_secondary
        # The individual's last name.
        sig { returns(String) }
        attr_accessor :last_name
        # The Kana variation of the individual's last name (Japan only).
        sig { returns(String) }
        attr_accessor :last_name_kana
        # The Kanji variation of the individual's last name (Japan only).
        sig { returns(String) }
        attr_accessor :last_name_kanji
        # The individual's maiden name.
        sig { returns(String) }
        attr_accessor :maiden_name
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The individual's phone number.
        sig { returns(String) }
        attr_accessor :phone
        # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
        sig { returns(String) }
        attr_accessor :political_exposure
        # The individual's registered address.
        sig { returns(::Stripe::AccountService::UpdateParams::Individual::RegisteredAddress) }
        attr_accessor :registered_address
        # Describes the person’s relationship to the account.
        sig { returns(::Stripe::AccountService::UpdateParams::Individual::Relationship) }
        attr_accessor :relationship
        # The last four digits of the individual's Social Security Number (U.S. only).
        sig { returns(String) }
        attr_accessor :ssn_last_4
        # The individual's verification document information.
        sig { returns(::Stripe::AccountService::UpdateParams::Individual::Verification) }
        attr_accessor :verification
        sig {
          params(address: ::Stripe::AccountService::UpdateParams::Individual::Address, address_kana: ::Stripe::AccountService::UpdateParams::Individual::AddressKana, address_kanji: ::Stripe::AccountService::UpdateParams::Individual::AddressKanji, dob: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Dob), email: String, first_name: String, first_name_kana: String, first_name_kanji: String, full_name_aliases: T.nilable(T::Array[String]), gender: String, id_number: String, id_number_secondary: String, last_name: String, last_name_kana: String, last_name_kanji: String, maiden_name: String, metadata: T.nilable(T::Hash[String, String]), phone: String, political_exposure: String, registered_address: ::Stripe::AccountService::UpdateParams::Individual::RegisteredAddress, relationship: ::Stripe::AccountService::UpdateParams::Individual::Relationship, ssn_last_4: String, verification: ::Stripe::AccountService::UpdateParams::Individual::Verification).void
         }
        def initialize(
          address: nil,
          address_kana: nil,
          address_kanji: nil,
          dob: nil,
          email: nil,
          first_name: nil,
          first_name_kana: nil,
          first_name_kanji: nil,
          full_name_aliases: nil,
          gender: nil,
          id_number: nil,
          id_number_secondary: nil,
          last_name: nil,
          last_name_kana: nil,
          last_name_kanji: nil,
          maiden_name: nil,
          metadata: nil,
          phone: nil,
          political_exposure: nil,
          registered_address: nil,
          relationship: nil,
          ssn_last_4: nil,
          verification: nil
        ); end
      end
      class RiskControls < Stripe::RequestParams
        class Charges < Stripe::RequestParams
          # To request to pause a risk control, pass `true`. To request to unpause a risk control, pass `false`.
          # There can be a delay before the risk control is paused or unpaused.
          sig { returns(T::Boolean) }
          attr_accessor :pause_requested
          sig { params(pause_requested: T::Boolean).void }
          def initialize(pause_requested: nil); end
        end
        class Payouts < Stripe::RequestParams
          # To request to pause a risk control, pass `true`. To request to unpause a risk control, pass `false`.
          # There can be a delay before the risk control is paused or unpaused.
          sig { returns(T::Boolean) }
          attr_accessor :pause_requested
          sig { params(pause_requested: T::Boolean).void }
          def initialize(pause_requested: nil); end
        end
        # Represents the risk control status of charges. Please see [this page for more details](https://stripe.com/docs/connect/pausing-payments-or-payouts-on-connected-accounts).
        sig { returns(::Stripe::AccountService::UpdateParams::RiskControls::Charges) }
        attr_accessor :charges
        # Represents the risk control status of payouts. Please see [this page for more details](https://stripe.com/docs/connect/pausing-payments-or-payouts-on-connected-accounts).
        sig { returns(::Stripe::AccountService::UpdateParams::RiskControls::Payouts) }
        attr_accessor :payouts
        sig {
          params(charges: ::Stripe::AccountService::UpdateParams::RiskControls::Charges, payouts: ::Stripe::AccountService::UpdateParams::RiskControls::Payouts).void
         }
        def initialize(charges: nil, payouts: nil); end
      end
      class Settings < Stripe::RequestParams
        class BacsDebitPayments < Stripe::RequestParams
          # The Bacs Direct Debit Display Name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
          sig { returns(String) }
          attr_accessor :display_name
          sig { params(display_name: String).void }
          def initialize(display_name: nil); end
        end
        class BankBcaOnboarding < Stripe::RequestParams
          # Bank BCA business account holder name
          sig { returns(String) }
          attr_accessor :account_holder_name
          # Bank BCA business account number
          sig { returns(String) }
          attr_accessor :business_account_number
          sig { params(account_holder_name: String, business_account_number: String).void }
          def initialize(account_holder_name: nil, business_account_number: nil); end
        end
        class Branding < Stripe::RequestParams
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
          sig { returns(String) }
          attr_accessor :icon
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
          sig { returns(String) }
          attr_accessor :logo
          # A CSS hex color value representing the primary branding color for this account.
          sig { returns(String) }
          attr_accessor :primary_color
          # A CSS hex color value representing the secondary branding color for this account.
          sig { returns(String) }
          attr_accessor :secondary_color
          sig {
            params(icon: String, logo: String, primary_color: String, secondary_color: String).void
           }
          def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil); end
        end
        class Capital < Stripe::RequestParams
          # Per-currency mapping of user-selected destination accounts used to pay out loans.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :payout_destination
          # Per-currency mapping of all destination accounts eligible to receive Capital financing payouts.
          sig { returns(T::Hash[String, T::Array[String]]) }
          attr_accessor :payout_destination_selector
          sig {
            params(payout_destination: T::Hash[String, String], payout_destination_selector: T::Hash[String, T::Array[String]]).void
           }
          def initialize(payout_destination: nil, payout_destination_selector: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(Integer) }
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(String) }
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig { params(date: Integer, ip: String, user_agent: T.nilable(String)).void }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the [Stripe Issuing Terms and Disclosures](/issuing/connect/tos_acceptance).
          sig {
            returns(::Stripe::AccountService::UpdateParams::Settings::CardIssuing::TosAcceptance)
           }
          attr_accessor :tos_acceptance
          sig {
            params(tos_acceptance: ::Stripe::AccountService::UpdateParams::Settings::CardIssuing::TosAcceptance).void
           }
          def initialize(tos_acceptance: nil); end
        end
        class CardPayments < Stripe::RequestParams
          class DeclineOn < Stripe::RequestParams
            # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
            sig { returns(T::Boolean) }
            attr_accessor :avs_failure
            # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
            sig { returns(T::Boolean) }
            attr_accessor :cvc_failure
            sig { params(avs_failure: T::Boolean, cvc_failure: T::Boolean).void }
            def initialize(avs_failure: nil, cvc_failure: nil); end
          end
          # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
          sig { returns(::Stripe::AccountService::UpdateParams::Settings::CardPayments::DeclineOn) }
          attr_accessor :decline_on
          # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(String) }
          attr_accessor :statement_descriptor_prefix
          # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_prefix_kana
          # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_prefix_kanji
          sig {
            params(decline_on: ::Stripe::AccountService::UpdateParams::Settings::CardPayments::DeclineOn, statement_descriptor_prefix: String, statement_descriptor_prefix_kana: T.nilable(String), statement_descriptor_prefix_kanji: T.nilable(String)).void
           }
          def initialize(
            decline_on: nil,
            statement_descriptor_prefix: nil,
            statement_descriptor_prefix_kana: nil,
            statement_descriptor_prefix_kanji: nil
          ); end
        end
        class Invoices < Stripe::RequestParams
          # The list of default Account Tax IDs to automatically include on invoices. Account Tax IDs get added when an invoice is finalized.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :default_account_tax_ids
          sig { params(default_account_tax_ids: T.nilable(T::Array[String])).void }
          def initialize(default_account_tax_ids: nil); end
        end
        class Payments < Stripe::RequestParams
          # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don't set a `statement_descriptor_prefix`, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the `statement_descriptor` text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the [account settings documentation](https://docs.stripe.com/get-started/account/statement-descriptors).
          sig { returns(String) }
          attr_accessor :statement_descriptor
          # The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(String) }
          attr_accessor :statement_descriptor_kana
          # The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(String) }
          attr_accessor :statement_descriptor_kanji
          sig {
            params(statement_descriptor: String, statement_descriptor_kana: String, statement_descriptor_kanji: String).void
           }
          def initialize(
            statement_descriptor: nil,
            statement_descriptor_kana: nil,
            statement_descriptor_kanji: nil
          ); end
        end
        class Payouts < Stripe::RequestParams
          class Schedule < Stripe::RequestParams
            # The number of days charge funds are held before being paid out. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
            sig { returns(T.any(String, Integer)) }
            attr_accessor :delay_days
            # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
            sig { returns(String) }
            attr_accessor :interval
            # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
            sig { returns(Integer) }
            attr_accessor :monthly_anchor
            # The day of the week when available funds are paid out, specified as `monday`, `tuesday`, etc. (required and applicable only if `interval` is `weekly`.)
            sig { returns(String) }
            attr_accessor :weekly_anchor
            sig {
              params(delay_days: T.any(String, Integer), interval: String, monthly_anchor: Integer, weekly_anchor: String).void
             }
            def initialize(
              delay_days: nil,
              interval: nil,
              monthly_anchor: nil,
              weekly_anchor: nil
            ); end
          end
          # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
          sig { returns(T::Boolean) }
          attr_accessor :debit_negative_balances
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          sig { returns(::Stripe::AccountService::UpdateParams::Settings::Payouts::Schedule) }
          attr_accessor :schedule
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          sig { returns(String) }
          attr_accessor :statement_descriptor
          sig {
            params(debit_negative_balances: T::Boolean, schedule: ::Stripe::AccountService::UpdateParams::Settings::Payouts::Schedule, statement_descriptor: String).void
           }
          def initialize(
            debit_negative_balances: nil,
            schedule: nil,
            statement_descriptor: nil
          ); end
        end
        class TaxForms < Stripe::RequestParams
          # Whether the account opted out of receiving their tax forms by postal delivery.
          sig { returns(T::Boolean) }
          attr_accessor :consented_to_paperless_delivery
          sig { params(consented_to_paperless_delivery: T::Boolean).void }
          def initialize(consented_to_paperless_delivery: nil); end
        end
        class Treasury < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(Integer) }
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(String) }
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig { params(date: Integer, ip: String, user_agent: T.nilable(String)).void }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the Stripe Treasury Services Agreement.
          sig { returns(::Stripe::AccountService::UpdateParams::Settings::Treasury::TosAcceptance) }
          attr_accessor :tos_acceptance
          sig {
            params(tos_acceptance: ::Stripe::AccountService::UpdateParams::Settings::Treasury::TosAcceptance).void
           }
          def initialize(tos_acceptance: nil); end
        end
        # Settings specific to Bacs Direct Debit payments.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::BacsDebitPayments) }
        attr_accessor :bacs_debit_payments
        # Settings specific to bank BCA onboarding for Indonesia bank transfers payments method.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::BankBcaOnboarding) }
        attr_accessor :bank_bca_onboarding
        # Settings used to apply the account's branding to email receipts, invoices, Checkout, and other products.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::Branding) }
        attr_accessor :branding
        # Settings specific to the account's use of the Capital product.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::Capital) }
        attr_accessor :capital
        # Settings specific to the account's use of the Card Issuing product.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::CardIssuing) }
        attr_accessor :card_issuing
        # Settings specific to card charging on the account.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::CardPayments) }
        attr_accessor :card_payments
        # Settings specific to the account's use of Invoices.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::Invoices) }
        attr_accessor :invoices
        # Settings that apply across payment methods for charging on the account.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::Payments) }
        attr_accessor :payments
        # Settings specific to the account's payouts.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::Payouts) }
        attr_accessor :payouts
        # Settings specific to the account's tax forms.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::TaxForms) }
        attr_accessor :tax_forms
        # Settings specific to the account's Treasury FinancialAccounts.
        sig { returns(::Stripe::AccountService::UpdateParams::Settings::Treasury) }
        attr_accessor :treasury
        sig {
          params(bacs_debit_payments: ::Stripe::AccountService::UpdateParams::Settings::BacsDebitPayments, bank_bca_onboarding: ::Stripe::AccountService::UpdateParams::Settings::BankBcaOnboarding, branding: ::Stripe::AccountService::UpdateParams::Settings::Branding, capital: ::Stripe::AccountService::UpdateParams::Settings::Capital, card_issuing: ::Stripe::AccountService::UpdateParams::Settings::CardIssuing, card_payments: ::Stripe::AccountService::UpdateParams::Settings::CardPayments, invoices: ::Stripe::AccountService::UpdateParams::Settings::Invoices, payments: ::Stripe::AccountService::UpdateParams::Settings::Payments, payouts: ::Stripe::AccountService::UpdateParams::Settings::Payouts, tax_forms: ::Stripe::AccountService::UpdateParams::Settings::TaxForms, treasury: ::Stripe::AccountService::UpdateParams::Settings::Treasury).void
         }
        def initialize(
          bacs_debit_payments: nil,
          bank_bca_onboarding: nil,
          branding: nil,
          capital: nil,
          card_issuing: nil,
          card_payments: nil,
          invoices: nil,
          payments: nil,
          payouts: nil,
          tax_forms: nil,
          treasury: nil
        ); end
      end
      class TosAcceptance < Stripe::RequestParams
        # The Unix timestamp marking when the account representative accepted their service agreement.
        sig { returns(Integer) }
        attr_accessor :date
        # The IP address from which the account representative accepted their service agreement.
        sig { returns(String) }
        attr_accessor :ip
        # The user's service agreement type.
        sig { returns(String) }
        attr_accessor :service_agreement
        # The user agent of the browser from which the account representative accepted their service agreement.
        sig { returns(String) }
        attr_accessor :user_agent
        sig {
          params(date: Integer, ip: String, service_agreement: String, user_agent: String).void
         }
        def initialize(date: nil, ip: nil, service_agreement: nil, user_agent: nil); end
      end
      # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
      sig { returns(String) }
      attr_accessor :account_token
      # Business information about the account.
      sig { returns(::Stripe::AccountService::UpdateParams::BusinessProfile) }
      attr_accessor :business_profile
      # The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(String) }
      attr_accessor :business_type
      # Each key of the dictionary represents a capability, and each capability
      # maps to its settings (for example, whether it has been requested or not). Each
      # capability is inactive until you have provided its specific
      # requirements and Stripe has verified them. An account might have some
      # of its requested capabilities be active and some be inactive.
      #
      # Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)
      # is `none`, which includes Custom accounts.
      sig { returns(::Stripe::AccountService::UpdateParams::Capabilities) }
      attr_accessor :capabilities
      # Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(::Stripe::AccountService::UpdateParams::Company) }
      attr_accessor :company
      # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
      sig { returns(String) }
      attr_accessor :default_currency
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(::Stripe::AccountService::UpdateParams::Documents) }
      attr_accessor :documents
      # The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
      sig { returns(String) }
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::BankAccount, ::Stripe::AccountService::UpdateParams::Card, ::Stripe::AccountService::UpdateParams::CardToken)))
       }
      attr_accessor :external_account
      # A hash of account group type to tokens. These are account groups this account should be added to.
      sig { returns(::Stripe::AccountService::UpdateParams::Groups) }
      attr_accessor :groups
      # Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(::Stripe::AccountService::UpdateParams::Individual) }
      attr_accessor :individual
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # A hash to configure risk controls on the account. Please see [this page for more details](/connect/pausing-payments-or-payouts-on-connected-accounts).
      sig { returns(::Stripe::AccountService::UpdateParams::RiskControls) }
      attr_accessor :risk_controls
      # Options for customizing how the account functions within Stripe.
      sig { returns(::Stripe::AccountService::UpdateParams::Settings) }
      attr_accessor :settings
      # Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
      sig { returns(::Stripe::AccountService::UpdateParams::TosAcceptance) }
      attr_accessor :tos_acceptance
      sig {
        params(account_token: String, business_profile: ::Stripe::AccountService::UpdateParams::BusinessProfile, business_type: String, capabilities: ::Stripe::AccountService::UpdateParams::Capabilities, company: ::Stripe::AccountService::UpdateParams::Company, default_currency: String, documents: ::Stripe::AccountService::UpdateParams::Documents, email: String, expand: T::Array[String], external_account: T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::BankAccount, ::Stripe::AccountService::UpdateParams::Card, ::Stripe::AccountService::UpdateParams::CardToken)), groups: ::Stripe::AccountService::UpdateParams::Groups, individual: ::Stripe::AccountService::UpdateParams::Individual, metadata: T.nilable(T::Hash[String, String]), risk_controls: ::Stripe::AccountService::UpdateParams::RiskControls, settings: ::Stripe::AccountService::UpdateParams::Settings, tos_acceptance: ::Stripe::AccountService::UpdateParams::TosAcceptance).void
       }
      def initialize(
        account_token: nil,
        business_profile: nil,
        business_type: nil,
        capabilities: nil,
        company: nil,
        default_currency: nil,
        documents: nil,
        email: nil,
        expand: nil,
        external_account: nil,
        groups: nil,
        individual: nil,
        metadata: nil,
        risk_controls: nil,
        settings: nil,
        tos_acceptance: nil
      ); end
    end
    class RetrieveCurrentParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
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
      # Only return connected accounts that were created during the given date interval.
      sig { returns(T.any(::Stripe::AccountService::ListParams::Created, Integer)) }
      attr_accessor :created
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
      sig {
        params(created: T.any(::Stripe::AccountService::ListParams::Created, Integer), ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
       }
      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class BankAccount < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        sig { returns(String) }
        attr_accessor :account_holder_name
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        sig { returns(String) }
        attr_accessor :account_holder_type
        # The account number for the bank account, in string form. Must be a checking account.
        sig { returns(String) }
        attr_accessor :account_number
        # The country in which the bank account is located.
        sig { returns(String) }
        attr_accessor :country
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        sig { returns(String) }
        attr_accessor :currency
        # The routing number, sort code, or other country-appropriateinstitution number for the bank account. For US bank accounts, this is required and should bethe ACH routing number, not the wire routing number. If you are providing an IBAN for`account_number`, this field is not required.
        sig { returns(String) }
        attr_accessor :routing_number
        sig {
          params(object: String, account_holder_name: String, account_holder_type: String, account_number: String, country: String, currency: String, routing_number: String).void
         }
        def initialize(
          object: nil,
          account_holder_name: nil,
          account_holder_type: nil,
          account_number: nil,
          country: nil,
          currency: nil,
          routing_number: nil
        ); end
      end
      class BusinessProfile < Stripe::RequestParams
        class AnnualRevenue < Stripe::RequestParams
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
          sig { returns(String) }
          attr_accessor :fiscal_year_end
          sig { params(amount: Integer, currency: String, fiscal_year_end: String).void }
          def initialize(amount: nil, currency: nil, fiscal_year_end: nil); end
        end
        class MonthlyEstimatedRevenue < Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          sig { params(amount: Integer, currency: String).void }
          def initialize(amount: nil, currency: nil); end
        end
        class SupportAddress < Stripe::RequestParams
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
        # The applicant's gross annual revenue for its preceding fiscal year.
        sig { returns(::Stripe::AccountService::CreateParams::BusinessProfile::AnnualRevenue) }
        attr_accessor :annual_revenue
        # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
        sig { returns(Integer) }
        attr_accessor :estimated_worker_count
        # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
        sig { returns(String) }
        attr_accessor :mcc
        # An estimate of the monthly revenue of the business. Only accepted for accounts in Brazil and India.
        sig {
          returns(::Stripe::AccountService::CreateParams::BusinessProfile::MonthlyEstimatedRevenue)
         }
        attr_accessor :monthly_estimated_revenue
        # The customer-facing business name.
        sig { returns(String) }
        attr_accessor :name
        # Internal-only description of the product sold by, or service provided by, the business. Used by Stripe for risk and underwriting purposes.
        sig { returns(String) }
        attr_accessor :product_description
        # A publicly available mailing address for sending support issues to.
        sig { returns(::Stripe::AccountService::CreateParams::BusinessProfile::SupportAddress) }
        attr_accessor :support_address
        # A publicly available email address for sending support issues to.
        sig { returns(String) }
        attr_accessor :support_email
        # A publicly available phone number to call with support issues.
        sig { returns(String) }
        attr_accessor :support_phone
        # A publicly available website for handling support issues.
        sig { returns(T.nilable(String)) }
        attr_accessor :support_url
        # The business's publicly available website.
        sig { returns(String) }
        attr_accessor :url
        sig {
          params(annual_revenue: ::Stripe::AccountService::CreateParams::BusinessProfile::AnnualRevenue, estimated_worker_count: Integer, mcc: String, monthly_estimated_revenue: ::Stripe::AccountService::CreateParams::BusinessProfile::MonthlyEstimatedRevenue, name: String, product_description: String, support_address: ::Stripe::AccountService::CreateParams::BusinessProfile::SupportAddress, support_email: String, support_phone: String, support_url: T.nilable(String), url: String).void
         }
        def initialize(
          annual_revenue: nil,
          estimated_worker_count: nil,
          mcc: nil,
          monthly_estimated_revenue: nil,
          name: nil,
          product_description: nil,
          support_address: nil,
          support_email: nil,
          support_phone: nil,
          support_url: nil,
          url: nil
        ); end
      end
      class Capabilities < Stripe::RequestParams
        class AcssDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AffirmPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AfterpayClearpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AlmaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AmazonPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AuBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class AutomaticIndirectTax < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BacsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BancontactPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BlikPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class BoletoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CartesBancairesPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class CashappPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class EpsPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class FpxPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GbBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GiropayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GopayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class GrabpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IdBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IdBankTransferPaymentsBca < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IdealPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class IndiaInternationalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class JcbPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class JpBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KakaoPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KlarnaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KonbiniPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class KrCardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class LegacyPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class LinkPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MbWayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MobilepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MultibancoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class MxBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class NaverPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class OxxoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class P24Payments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PayByBankPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaycoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaynowPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaypalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PaytoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class PromptpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class QrisPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class RechnungPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class RevolutPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SamsungPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SepaBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SepaDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class ShopeepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SofortPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class SwishPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099K < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099Misc < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class Transfers < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class Treasury < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TreasuryEvolve < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TreasuryFifthThird < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TreasuryGoldmanSachs < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class TwintPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class UsBankAccountAchPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class UsBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        class ZipPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T::Boolean) }
          attr_accessor :requested
          sig { params(requested: T::Boolean).void }
          def initialize(requested: nil); end
        end
        # The acss_debit_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::AcssDebitPayments) }
        attr_accessor :acss_debit_payments
        # The affirm_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::AffirmPayments) }
        attr_accessor :affirm_payments
        # The afterpay_clearpay_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::AfterpayClearpayPayments)
         }
        attr_accessor :afterpay_clearpay_payments
        # The alma_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::AlmaPayments) }
        attr_accessor :alma_payments
        # The amazon_pay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::AmazonPayPayments) }
        attr_accessor :amazon_pay_payments
        # The au_becs_debit_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::AuBecsDebitPayments) }
        attr_accessor :au_becs_debit_payments
        # The automatic_indirect_tax capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::AutomaticIndirectTax) }
        attr_accessor :automatic_indirect_tax
        # The bacs_debit_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::BacsDebitPayments) }
        attr_accessor :bacs_debit_payments
        # The bancontact_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::BancontactPayments) }
        attr_accessor :bancontact_payments
        # The bank_transfer_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::BankTransferPayments) }
        attr_accessor :bank_transfer_payments
        # The blik_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::BlikPayments) }
        attr_accessor :blik_payments
        # The boleto_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::BoletoPayments) }
        attr_accessor :boleto_payments
        # The card_issuing capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::CardIssuing) }
        attr_accessor :card_issuing
        # The card_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::CardPayments) }
        attr_accessor :card_payments
        # The cartes_bancaires_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::CartesBancairesPayments)
         }
        attr_accessor :cartes_bancaires_payments
        # The cashapp_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::CashappPayments) }
        attr_accessor :cashapp_payments
        # The eps_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::EpsPayments) }
        attr_accessor :eps_payments
        # The fpx_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::FpxPayments) }
        attr_accessor :fpx_payments
        # The gb_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::GbBankTransferPayments)
         }
        attr_accessor :gb_bank_transfer_payments
        # The giropay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::GiropayPayments) }
        attr_accessor :giropay_payments
        # The gopay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::GopayPayments) }
        attr_accessor :gopay_payments
        # The grabpay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::GrabpayPayments) }
        attr_accessor :grabpay_payments
        # The id_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::IdBankTransferPayments)
         }
        attr_accessor :id_bank_transfer_payments
        # The id_bank_transfer_payments_bca capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::IdBankTransferPaymentsBca)
         }
        attr_accessor :id_bank_transfer_payments_bca
        # The ideal_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::IdealPayments) }
        attr_accessor :ideal_payments
        # The india_international_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::IndiaInternationalPayments)
         }
        attr_accessor :india_international_payments
        # The jcb_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::JcbPayments) }
        attr_accessor :jcb_payments
        # The jp_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::JpBankTransferPayments)
         }
        attr_accessor :jp_bank_transfer_payments
        # The kakao_pay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::KakaoPayPayments) }
        attr_accessor :kakao_pay_payments
        # The klarna_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::KlarnaPayments) }
        attr_accessor :klarna_payments
        # The konbini_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::KonbiniPayments) }
        attr_accessor :konbini_payments
        # The kr_card_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::KrCardPayments) }
        attr_accessor :kr_card_payments
        # The legacy_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::LegacyPayments) }
        attr_accessor :legacy_payments
        # The link_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::LinkPayments) }
        attr_accessor :link_payments
        # The mb_way_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::MbWayPayments) }
        attr_accessor :mb_way_payments
        # The mobilepay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::MobilepayPayments) }
        attr_accessor :mobilepay_payments
        # The multibanco_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::MultibancoPayments) }
        attr_accessor :multibanco_payments
        # The mx_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::MxBankTransferPayments)
         }
        attr_accessor :mx_bank_transfer_payments
        # The naver_pay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::NaverPayPayments) }
        attr_accessor :naver_pay_payments
        # The oxxo_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::OxxoPayments) }
        attr_accessor :oxxo_payments
        # The p24_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::P24Payments) }
        attr_accessor :p24_payments
        # The pay_by_bank_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::PayByBankPayments) }
        attr_accessor :pay_by_bank_payments
        # The payco_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::PaycoPayments) }
        attr_accessor :payco_payments
        # The paynow_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::PaynowPayments) }
        attr_accessor :paynow_payments
        # The paypal_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::PaypalPayments) }
        attr_accessor :paypal_payments
        # The payto_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::PaytoPayments) }
        attr_accessor :payto_payments
        # The promptpay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::PromptpayPayments) }
        attr_accessor :promptpay_payments
        # The qris_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::QrisPayments) }
        attr_accessor :qris_payments
        # The rechnung_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::RechnungPayments) }
        attr_accessor :rechnung_payments
        # The revolut_pay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::RevolutPayPayments) }
        attr_accessor :revolut_pay_payments
        # The samsung_pay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::SamsungPayPayments) }
        attr_accessor :samsung_pay_payments
        # The sepa_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::SepaBankTransferPayments)
         }
        attr_accessor :sepa_bank_transfer_payments
        # The sepa_debit_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::SepaDebitPayments) }
        attr_accessor :sepa_debit_payments
        # The shopeepay_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::ShopeepayPayments) }
        attr_accessor :shopeepay_payments
        # The sofort_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::SofortPayments) }
        attr_accessor :sofort_payments
        # The swish_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::SwishPayments) }
        attr_accessor :swish_payments
        # The tax_reporting_us_1099_k capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099K) }
        attr_accessor :tax_reporting_us_1099_k
        # The tax_reporting_us_1099_misc capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099Misc)
         }
        attr_accessor :tax_reporting_us_1099_misc
        # The transfers capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::Transfers) }
        attr_accessor :transfers
        # The treasury capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::Treasury) }
        attr_accessor :treasury
        # The treasury_evolve capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::TreasuryEvolve) }
        attr_accessor :treasury_evolve
        # The treasury_fifth_third capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::TreasuryFifthThird) }
        attr_accessor :treasury_fifth_third
        # The treasury_goldman_sachs capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::TreasuryGoldmanSachs) }
        attr_accessor :treasury_goldman_sachs
        # The twint_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::TwintPayments) }
        attr_accessor :twint_payments
        # The us_bank_account_ach_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::UsBankAccountAchPayments)
         }
        attr_accessor :us_bank_account_ach_payments
        # The us_bank_transfer_payments capability.
        sig {
          returns(::Stripe::AccountService::CreateParams::Capabilities::UsBankTransferPayments)
         }
        attr_accessor :us_bank_transfer_payments
        # The zip_payments capability.
        sig { returns(::Stripe::AccountService::CreateParams::Capabilities::ZipPayments) }
        attr_accessor :zip_payments
        sig {
          params(acss_debit_payments: ::Stripe::AccountService::CreateParams::Capabilities::AcssDebitPayments, affirm_payments: ::Stripe::AccountService::CreateParams::Capabilities::AffirmPayments, afterpay_clearpay_payments: ::Stripe::AccountService::CreateParams::Capabilities::AfterpayClearpayPayments, alma_payments: ::Stripe::AccountService::CreateParams::Capabilities::AlmaPayments, amazon_pay_payments: ::Stripe::AccountService::CreateParams::Capabilities::AmazonPayPayments, au_becs_debit_payments: ::Stripe::AccountService::CreateParams::Capabilities::AuBecsDebitPayments, automatic_indirect_tax: ::Stripe::AccountService::CreateParams::Capabilities::AutomaticIndirectTax, bacs_debit_payments: ::Stripe::AccountService::CreateParams::Capabilities::BacsDebitPayments, bancontact_payments: ::Stripe::AccountService::CreateParams::Capabilities::BancontactPayments, bank_transfer_payments: ::Stripe::AccountService::CreateParams::Capabilities::BankTransferPayments, blik_payments: ::Stripe::AccountService::CreateParams::Capabilities::BlikPayments, boleto_payments: ::Stripe::AccountService::CreateParams::Capabilities::BoletoPayments, card_issuing: ::Stripe::AccountService::CreateParams::Capabilities::CardIssuing, card_payments: ::Stripe::AccountService::CreateParams::Capabilities::CardPayments, cartes_bancaires_payments: ::Stripe::AccountService::CreateParams::Capabilities::CartesBancairesPayments, cashapp_payments: ::Stripe::AccountService::CreateParams::Capabilities::CashappPayments, eps_payments: ::Stripe::AccountService::CreateParams::Capabilities::EpsPayments, fpx_payments: ::Stripe::AccountService::CreateParams::Capabilities::FpxPayments, gb_bank_transfer_payments: ::Stripe::AccountService::CreateParams::Capabilities::GbBankTransferPayments, giropay_payments: ::Stripe::AccountService::CreateParams::Capabilities::GiropayPayments, gopay_payments: ::Stripe::AccountService::CreateParams::Capabilities::GopayPayments, grabpay_payments: ::Stripe::AccountService::CreateParams::Capabilities::GrabpayPayments, id_bank_transfer_payments: ::Stripe::AccountService::CreateParams::Capabilities::IdBankTransferPayments, id_bank_transfer_payments_bca: ::Stripe::AccountService::CreateParams::Capabilities::IdBankTransferPaymentsBca, ideal_payments: ::Stripe::AccountService::CreateParams::Capabilities::IdealPayments, india_international_payments: ::Stripe::AccountService::CreateParams::Capabilities::IndiaInternationalPayments, jcb_payments: ::Stripe::AccountService::CreateParams::Capabilities::JcbPayments, jp_bank_transfer_payments: ::Stripe::AccountService::CreateParams::Capabilities::JpBankTransferPayments, kakao_pay_payments: ::Stripe::AccountService::CreateParams::Capabilities::KakaoPayPayments, klarna_payments: ::Stripe::AccountService::CreateParams::Capabilities::KlarnaPayments, konbini_payments: ::Stripe::AccountService::CreateParams::Capabilities::KonbiniPayments, kr_card_payments: ::Stripe::AccountService::CreateParams::Capabilities::KrCardPayments, legacy_payments: ::Stripe::AccountService::CreateParams::Capabilities::LegacyPayments, link_payments: ::Stripe::AccountService::CreateParams::Capabilities::LinkPayments, mb_way_payments: ::Stripe::AccountService::CreateParams::Capabilities::MbWayPayments, mobilepay_payments: ::Stripe::AccountService::CreateParams::Capabilities::MobilepayPayments, multibanco_payments: ::Stripe::AccountService::CreateParams::Capabilities::MultibancoPayments, mx_bank_transfer_payments: ::Stripe::AccountService::CreateParams::Capabilities::MxBankTransferPayments, naver_pay_payments: ::Stripe::AccountService::CreateParams::Capabilities::NaverPayPayments, oxxo_payments: ::Stripe::AccountService::CreateParams::Capabilities::OxxoPayments, p24_payments: ::Stripe::AccountService::CreateParams::Capabilities::P24Payments, pay_by_bank_payments: ::Stripe::AccountService::CreateParams::Capabilities::PayByBankPayments, payco_payments: ::Stripe::AccountService::CreateParams::Capabilities::PaycoPayments, paynow_payments: ::Stripe::AccountService::CreateParams::Capabilities::PaynowPayments, paypal_payments: ::Stripe::AccountService::CreateParams::Capabilities::PaypalPayments, payto_payments: ::Stripe::AccountService::CreateParams::Capabilities::PaytoPayments, promptpay_payments: ::Stripe::AccountService::CreateParams::Capabilities::PromptpayPayments, qris_payments: ::Stripe::AccountService::CreateParams::Capabilities::QrisPayments, rechnung_payments: ::Stripe::AccountService::CreateParams::Capabilities::RechnungPayments, revolut_pay_payments: ::Stripe::AccountService::CreateParams::Capabilities::RevolutPayPayments, samsung_pay_payments: ::Stripe::AccountService::CreateParams::Capabilities::SamsungPayPayments, sepa_bank_transfer_payments: ::Stripe::AccountService::CreateParams::Capabilities::SepaBankTransferPayments, sepa_debit_payments: ::Stripe::AccountService::CreateParams::Capabilities::SepaDebitPayments, shopeepay_payments: ::Stripe::AccountService::CreateParams::Capabilities::ShopeepayPayments, sofort_payments: ::Stripe::AccountService::CreateParams::Capabilities::SofortPayments, swish_payments: ::Stripe::AccountService::CreateParams::Capabilities::SwishPayments, tax_reporting_us_1099_k: ::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099K, tax_reporting_us_1099_misc: ::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099Misc, transfers: ::Stripe::AccountService::CreateParams::Capabilities::Transfers, treasury: ::Stripe::AccountService::CreateParams::Capabilities::Treasury, treasury_evolve: ::Stripe::AccountService::CreateParams::Capabilities::TreasuryEvolve, treasury_fifth_third: ::Stripe::AccountService::CreateParams::Capabilities::TreasuryFifthThird, treasury_goldman_sachs: ::Stripe::AccountService::CreateParams::Capabilities::TreasuryGoldmanSachs, twint_payments: ::Stripe::AccountService::CreateParams::Capabilities::TwintPayments, us_bank_account_ach_payments: ::Stripe::AccountService::CreateParams::Capabilities::UsBankAccountAchPayments, us_bank_transfer_payments: ::Stripe::AccountService::CreateParams::Capabilities::UsBankTransferPayments, zip_payments: ::Stripe::AccountService::CreateParams::Capabilities::ZipPayments).void
         }
        def initialize(
          acss_debit_payments: nil,
          affirm_payments: nil,
          afterpay_clearpay_payments: nil,
          alma_payments: nil,
          amazon_pay_payments: nil,
          au_becs_debit_payments: nil,
          automatic_indirect_tax: nil,
          bacs_debit_payments: nil,
          bancontact_payments: nil,
          bank_transfer_payments: nil,
          blik_payments: nil,
          boleto_payments: nil,
          card_issuing: nil,
          card_payments: nil,
          cartes_bancaires_payments: nil,
          cashapp_payments: nil,
          eps_payments: nil,
          fpx_payments: nil,
          gb_bank_transfer_payments: nil,
          giropay_payments: nil,
          gopay_payments: nil,
          grabpay_payments: nil,
          id_bank_transfer_payments: nil,
          id_bank_transfer_payments_bca: nil,
          ideal_payments: nil,
          india_international_payments: nil,
          jcb_payments: nil,
          jp_bank_transfer_payments: nil,
          kakao_pay_payments: nil,
          klarna_payments: nil,
          konbini_payments: nil,
          kr_card_payments: nil,
          legacy_payments: nil,
          link_payments: nil,
          mb_way_payments: nil,
          mobilepay_payments: nil,
          multibanco_payments: nil,
          mx_bank_transfer_payments: nil,
          naver_pay_payments: nil,
          oxxo_payments: nil,
          p24_payments: nil,
          pay_by_bank_payments: nil,
          payco_payments: nil,
          paynow_payments: nil,
          paypal_payments: nil,
          payto_payments: nil,
          promptpay_payments: nil,
          qris_payments: nil,
          rechnung_payments: nil,
          revolut_pay_payments: nil,
          samsung_pay_payments: nil,
          sepa_bank_transfer_payments: nil,
          sepa_debit_payments: nil,
          shopeepay_payments: nil,
          sofort_payments: nil,
          swish_payments: nil,
          tax_reporting_us_1099_k: nil,
          tax_reporting_us_1099_misc: nil,
          transfers: nil,
          treasury: nil,
          treasury_evolve: nil,
          treasury_fifth_third: nil,
          treasury_goldman_sachs: nil,
          twint_payments: nil,
          us_bank_account_ach_payments: nil,
          us_bank_transfer_payments: nil,
          zip_payments: nil
        ); end
      end
      class Card < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # Attribute for param field address_city
        sig { returns(String) }
        attr_accessor :address_city
        # Attribute for param field address_country
        sig { returns(String) }
        attr_accessor :address_country
        # Attribute for param field address_line1
        sig { returns(String) }
        attr_accessor :address_line1
        # Attribute for param field address_line2
        sig { returns(String) }
        attr_accessor :address_line2
        # Attribute for param field address_state
        sig { returns(String) }
        attr_accessor :address_state
        # Attribute for param field address_zip
        sig { returns(String) }
        attr_accessor :address_zip
        # Attribute for param field currency
        sig { returns(String) }
        attr_accessor :currency
        # Attribute for param field cvc
        sig { returns(String) }
        attr_accessor :cvc
        # Attribute for param field exp_month
        sig { returns(Integer) }
        attr_accessor :exp_month
        # Attribute for param field exp_year
        sig { returns(Integer) }
        attr_accessor :exp_year
        # Attribute for param field name
        sig { returns(String) }
        attr_accessor :name
        # Attribute for param field number
        sig { returns(String) }
        attr_accessor :number
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # Attribute for param field default_for_currency
        sig { returns(T::Boolean) }
        attr_accessor :default_for_currency
        sig {
          params(object: String, address_city: String, address_country: String, address_line1: String, address_line2: String, address_state: String, address_zip: String, currency: String, cvc: String, exp_month: Integer, exp_year: Integer, name: String, number: String, metadata: T::Hash[String, String], default_for_currency: T::Boolean).void
         }
        def initialize(
          object: nil,
          address_city: nil,
          address_country: nil,
          address_line1: nil,
          address_line2: nil,
          address_state: nil,
          address_zip: nil,
          currency: nil,
          cvc: nil,
          exp_month: nil,
          exp_year: nil,
          name: nil,
          number: nil,
          metadata: nil,
          default_for_currency: nil
        ); end
      end
      class CardToken < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # Attribute for param field currency
        sig { returns(String) }
        attr_accessor :currency
        # Attribute for param field token
        sig { returns(String) }
        attr_accessor :token
        sig { params(object: String, currency: String, token: String).void }
        def initialize(object: nil, currency: nil, token: nil); end
      end
      class Company < Stripe::RequestParams
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class AddressKanji < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class DirectorshipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the directorship declaration attestation was made.
          sig { returns(Integer) }
          attr_accessor :date
          # The IP address from which the directorship declaration attestation was made.
          sig { returns(String) }
          attr_accessor :ip
          # The user agent of the browser from which the directorship declaration attestation was made.
          sig { returns(String) }
          attr_accessor :user_agent
          sig { params(date: Integer, ip: String, user_agent: String).void }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class OwnershipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the beneficial owner attestation was made.
          sig { returns(Integer) }
          attr_accessor :date
          # The IP address from which the beneficial owner attestation was made.
          sig { returns(String) }
          attr_accessor :ip
          # The user agent of the browser from which the beneficial owner attestation was made.
          sig { returns(String) }
          attr_accessor :user_agent
          sig { params(date: Integer, ip: String, user_agent: String).void }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class Verification < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :back
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :front
            sig { params(back: String, front: String).void }
            def initialize(back: nil, front: nil); end
          end
          # A document verifying the business.
          sig { returns(::Stripe::AccountService::CreateParams::Company::Verification::Document) }
          attr_accessor :document
          sig {
            params(document: ::Stripe::AccountService::CreateParams::Company::Verification::Document).void
           }
          def initialize(document: nil); end
        end
        # The company's primary address.
        sig { returns(::Stripe::AccountService::CreateParams::Company::Address) }
        attr_accessor :address
        # The Kana variation of the company's primary address (Japan only).
        sig { returns(::Stripe::AccountService::CreateParams::Company::AddressKana) }
        attr_accessor :address_kana
        # The Kanji variation of the company's primary address (Japan only).
        sig { returns(::Stripe::AccountService::CreateParams::Company::AddressKanji) }
        attr_accessor :address_kanji
        # Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
        sig { returns(T::Boolean) }
        attr_accessor :directors_provided
        # This hash is used to attest that the directors information provided to Stripe is both current and correct.
        sig { returns(::Stripe::AccountService::CreateParams::Company::DirectorshipDeclaration) }
        attr_accessor :directorship_declaration
        # Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](/api/persons) for accounts with a `relationship.executive` requirement.
        sig { returns(T::Boolean) }
        attr_accessor :executives_provided
        # The export license ID number of the company, also referred as Import Export Code (India only).
        sig { returns(String) }
        attr_accessor :export_license_id
        # The purpose code to use for export transactions (India only).
        sig { returns(String) }
        attr_accessor :export_purpose_code
        # The company's legal name.
        sig { returns(String) }
        attr_accessor :name
        # The Kana variation of the company's legal name (Japan only).
        sig { returns(String) }
        attr_accessor :name_kana
        # The Kanji variation of the company's legal name (Japan only).
        sig { returns(String) }
        attr_accessor :name_kanji
        # Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](/api/persons) for accounts with a `relationship.owner` requirement.
        sig { returns(T::Boolean) }
        attr_accessor :owners_provided
        # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
        sig { returns(::Stripe::AccountService::CreateParams::Company::OwnershipDeclaration) }
        attr_accessor :ownership_declaration
        # Attribute for param field ownership_exemption_reason
        sig { returns(T.nilable(String)) }
        attr_accessor :ownership_exemption_reason
        # The company's phone number (used for verification).
        sig { returns(String) }
        attr_accessor :phone
        # The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong).
        sig { returns(String) }
        attr_accessor :registration_number
        # The category identifying the legal structure of the company or legal entity. See [Business structure](/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value.
        sig { returns(T.nilable(String)) }
        attr_accessor :structure
        # The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.)
        sig { returns(String) }
        attr_accessor :tax_id
        # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
        sig { returns(String) }
        attr_accessor :tax_id_registrar
        # The VAT number of the company.
        sig { returns(String) }
        attr_accessor :vat_id
        # Information on the verification state of the company.
        sig { returns(::Stripe::AccountService::CreateParams::Company::Verification) }
        attr_accessor :verification
        sig {
          params(address: ::Stripe::AccountService::CreateParams::Company::Address, address_kana: ::Stripe::AccountService::CreateParams::Company::AddressKana, address_kanji: ::Stripe::AccountService::CreateParams::Company::AddressKanji, directors_provided: T::Boolean, directorship_declaration: ::Stripe::AccountService::CreateParams::Company::DirectorshipDeclaration, executives_provided: T::Boolean, export_license_id: String, export_purpose_code: String, name: String, name_kana: String, name_kanji: String, owners_provided: T::Boolean, ownership_declaration: ::Stripe::AccountService::CreateParams::Company::OwnershipDeclaration, ownership_exemption_reason: T.nilable(String), phone: String, registration_number: String, structure: T.nilable(String), tax_id: String, tax_id_registrar: String, vat_id: String, verification: ::Stripe::AccountService::CreateParams::Company::Verification).void
         }
        def initialize(
          address: nil,
          address_kana: nil,
          address_kanji: nil,
          directors_provided: nil,
          directorship_declaration: nil,
          executives_provided: nil,
          export_license_id: nil,
          export_purpose_code: nil,
          name: nil,
          name_kana: nil,
          name_kanji: nil,
          owners_provided: nil,
          ownership_declaration: nil,
          ownership_exemption_reason: nil,
          phone: nil,
          registration_number: nil,
          structure: nil,
          tax_id: nil,
          tax_id_registrar: nil,
          vat_id: nil,
          verification: nil
        ); end
      end
      class Controller < Stripe::RequestParams
        class Application < Stripe::RequestParams
          # Whether the controller is liable for losses on this account. For details, see [Understanding Connect Account Balances](https://stripe.com/docs/connect/account-balances).
          sig { returns(T::Boolean) }
          attr_accessor :loss_liable
          # Whether the controller owns onboarding for this account.
          sig { returns(T::Boolean) }
          attr_accessor :onboarding_owner
          # Whether the controller has pricing controls for this account.
          sig { returns(T::Boolean) }
          attr_accessor :pricing_controls
          sig {
            params(loss_liable: T::Boolean, onboarding_owner: T::Boolean, pricing_controls: T::Boolean).void
           }
          def initialize(loss_liable: nil, onboarding_owner: nil, pricing_controls: nil); end
        end
        class Dashboard < Stripe::RequestParams
          # Whether this account should have access to the full Stripe Dashboard (`full`), to the Express Dashboard (`express`), or to no Stripe-hosted dashboard (`none`). Defaults to `full`.
          sig { returns(String) }
          attr_accessor :type
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        class Fees < Stripe::RequestParams
          # A value indicating the responsible payer of Stripe fees on this account. Defaults to `account`. Learn more about [fee behavior on connected accounts](https://docs.stripe.com/connect/direct-charges-fee-payer-behavior).
          sig { returns(String) }
          attr_accessor :payer
          sig { params(payer: String).void }
          def initialize(payer: nil); end
        end
        class Losses < Stripe::RequestParams
          # A value indicating who is liable when this account can't pay back negative balances resulting from payments. Defaults to `stripe`.
          sig { returns(String) }
          attr_accessor :payments
          sig { params(payments: String).void }
          def initialize(payments: nil); end
        end
        class StripeDashboard < Stripe::RequestParams
          # Whether this account should have access to the full Stripe Dashboard (`full`), to the Express Dashboard (`express`), or to no Stripe-hosted dashboard (`none`). Defaults to `full`.
          sig { returns(String) }
          attr_accessor :type
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        # A hash of configuration describing the Connect application that controls the account.
        sig { returns(::Stripe::AccountService::CreateParams::Controller::Application) }
        attr_accessor :application
        # Properties of the account's dashboard.
        sig { returns(::Stripe::AccountService::CreateParams::Controller::Dashboard) }
        attr_accessor :dashboard
        # A hash of configuration for who pays Stripe fees for product usage on this account.
        sig { returns(::Stripe::AccountService::CreateParams::Controller::Fees) }
        attr_accessor :fees
        # A hash of configuration for products that have negative balance liability, and whether Stripe or a Connect application is responsible for them.
        sig { returns(::Stripe::AccountService::CreateParams::Controller::Losses) }
        attr_accessor :losses
        # A value indicating responsibility for collecting updated information when requirements on the account are due or change. Defaults to `stripe`.
        sig { returns(String) }
        attr_accessor :requirement_collection
        # A hash of configuration for Stripe-hosted dashboards.
        sig { returns(::Stripe::AccountService::CreateParams::Controller::StripeDashboard) }
        attr_accessor :stripe_dashboard
        sig {
          params(application: ::Stripe::AccountService::CreateParams::Controller::Application, dashboard: ::Stripe::AccountService::CreateParams::Controller::Dashboard, fees: ::Stripe::AccountService::CreateParams::Controller::Fees, losses: ::Stripe::AccountService::CreateParams::Controller::Losses, requirement_collection: String, stripe_dashboard: ::Stripe::AccountService::CreateParams::Controller::StripeDashboard).void
         }
        def initialize(
          application: nil,
          dashboard: nil,
          fees: nil,
          losses: nil,
          requirement_collection: nil,
          stripe_dashboard: nil
        ); end
      end
      class Documents < Stripe::RequestParams
        class BankAccountOwnershipVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyLicense < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyMemorandumOfAssociation < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyMinisterialDecree < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyRegistrationVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class CompanyTaxIdVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class ProofOfRegistration < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T::Array[String]) }
          attr_accessor :files
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
        sig {
          returns(::Stripe::AccountService::CreateParams::Documents::BankAccountOwnershipVerification)
         }
        attr_accessor :bank_account_ownership_verification
        # One or more documents that demonstrate proof of a company's license to operate.
        sig { returns(::Stripe::AccountService::CreateParams::Documents::CompanyLicense) }
        attr_accessor :company_license
        # One or more documents showing the company's Memorandum of Association.
        sig {
          returns(::Stripe::AccountService::CreateParams::Documents::CompanyMemorandumOfAssociation)
         }
        attr_accessor :company_memorandum_of_association
        # (Certain countries only) One or more documents showing the ministerial decree legalizing the company's establishment.
        sig { returns(::Stripe::AccountService::CreateParams::Documents::CompanyMinisterialDecree) }
        attr_accessor :company_ministerial_decree
        # One or more documents that demonstrate proof of a company's registration with the appropriate local authorities.
        sig {
          returns(::Stripe::AccountService::CreateParams::Documents::CompanyRegistrationVerification)
         }
        attr_accessor :company_registration_verification
        # One or more documents that demonstrate proof of a company's tax ID.
        sig { returns(::Stripe::AccountService::CreateParams::Documents::CompanyTaxIdVerification) }
        attr_accessor :company_tax_id_verification
        # One or more documents showing the company’s proof of registration with the national business registry.
        sig { returns(::Stripe::AccountService::CreateParams::Documents::ProofOfRegistration) }
        attr_accessor :proof_of_registration
        # One or more documents that demonstrate proof of ultimate beneficial ownership.
        sig {
          returns(::Stripe::AccountService::CreateParams::Documents::ProofOfUltimateBeneficialOwnership)
         }
        attr_accessor :proof_of_ultimate_beneficial_ownership
        sig {
          params(bank_account_ownership_verification: ::Stripe::AccountService::CreateParams::Documents::BankAccountOwnershipVerification, company_license: ::Stripe::AccountService::CreateParams::Documents::CompanyLicense, company_memorandum_of_association: ::Stripe::AccountService::CreateParams::Documents::CompanyMemorandumOfAssociation, company_ministerial_decree: ::Stripe::AccountService::CreateParams::Documents::CompanyMinisterialDecree, company_registration_verification: ::Stripe::AccountService::CreateParams::Documents::CompanyRegistrationVerification, company_tax_id_verification: ::Stripe::AccountService::CreateParams::Documents::CompanyTaxIdVerification, proof_of_registration: ::Stripe::AccountService::CreateParams::Documents::ProofOfRegistration, proof_of_ultimate_beneficial_ownership: ::Stripe::AccountService::CreateParams::Documents::ProofOfUltimateBeneficialOwnership).void
         }
        def initialize(
          bank_account_ownership_verification: nil,
          company_license: nil,
          company_memorandum_of_association: nil,
          company_ministerial_decree: nil,
          company_registration_verification: nil,
          company_tax_id_verification: nil,
          proof_of_registration: nil,
          proof_of_ultimate_beneficial_ownership: nil
        ); end
      end
      class Groups < Stripe::RequestParams
        # The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://stripe.com/docs/connect/platform-pricing-tools) for details.
        sig { returns(T.nilable(String)) }
        attr_accessor :payments_pricing
        sig { params(payments_pricing: T.nilable(String)).void }
        def initialize(payments_pricing: nil); end
      end
      class Individual < Stripe::RequestParams
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class AddressKanji < Stripe::RequestParams
          # City or ward.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Block or building number.
          sig { returns(String) }
          attr_accessor :line1
          # Building details.
          sig { returns(String) }
          attr_accessor :line2
          # Postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # Prefecture.
          sig { returns(String) }
          attr_accessor :state
          # Town or cho-me.
          sig { returns(String) }
          attr_accessor :town
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String, town: String).void
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
        class RegisteredAddress < Stripe::RequestParams
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
        class Relationship < Stripe::RequestParams
          # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
          sig { returns(T::Boolean) }
          attr_accessor :director
          # Whether the person has significant responsibility to control, manage, or direct the organization.
          sig { returns(T::Boolean) }
          attr_accessor :executive
          # Whether the person is an owner of the account’s legal entity.
          sig { returns(T::Boolean) }
          attr_accessor :owner
          # The percent owned by the person of the account's legal entity.
          sig { returns(T.nilable(Float)) }
          attr_accessor :percent_ownership
          # The person's title (e.g., CEO, Support Engineer).
          sig { returns(String) }
          attr_accessor :title
          sig {
            params(director: T::Boolean, executive: T::Boolean, owner: T::Boolean, percent_ownership: T.nilable(Float), title: String).void
           }
          def initialize(
            director: nil,
            executive: nil,
            owner: nil,
            percent_ownership: nil,
            title: nil
          ); end
        end
        class Verification < Stripe::RequestParams
          class AdditionalDocument < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :front
            sig { params(back: String, front: String).void }
            def initialize(back: nil, front: nil); end
          end
          class Document < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(String) }
            attr_accessor :front
            sig { params(back: String, front: String).void }
            def initialize(back: nil, front: nil); end
          end
          # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
          sig {
            returns(::Stripe::AccountService::CreateParams::Individual::Verification::AdditionalDocument)
           }
          attr_accessor :additional_document
          # An identifying document, either a passport or local ID card.
          sig {
            returns(::Stripe::AccountService::CreateParams::Individual::Verification::Document)
           }
          attr_accessor :document
          sig {
            params(additional_document: ::Stripe::AccountService::CreateParams::Individual::Verification::AdditionalDocument, document: ::Stripe::AccountService::CreateParams::Individual::Verification::Document).void
           }
          def initialize(additional_document: nil, document: nil); end
        end
        # The individual's primary address.
        sig { returns(::Stripe::AccountService::CreateParams::Individual::Address) }
        attr_accessor :address
        # The Kana variation of the individual's primary address (Japan only).
        sig { returns(::Stripe::AccountService::CreateParams::Individual::AddressKana) }
        attr_accessor :address_kana
        # The Kanji variation of the individual's primary address (Japan only).
        sig { returns(::Stripe::AccountService::CreateParams::Individual::AddressKanji) }
        attr_accessor :address_kanji
        # The individual's date of birth.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Dob)) }
        attr_accessor :dob
        # The individual's email address.
        sig { returns(String) }
        attr_accessor :email
        # The individual's first name.
        sig { returns(String) }
        attr_accessor :first_name
        # The Kana variation of the individual's first name (Japan only).
        sig { returns(String) }
        attr_accessor :first_name_kana
        # The Kanji variation of the individual's first name (Japan only).
        sig { returns(String) }
        attr_accessor :first_name_kanji
        # A list of alternate names or aliases that the individual is known by.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :full_name_aliases
        # The individual's gender
        sig { returns(String) }
        attr_accessor :gender
        # The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(String) }
        attr_accessor :id_number
        # The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(String) }
        attr_accessor :id_number_secondary
        # The individual's last name.
        sig { returns(String) }
        attr_accessor :last_name
        # The Kana variation of the individual's last name (Japan only).
        sig { returns(String) }
        attr_accessor :last_name_kana
        # The Kanji variation of the individual's last name (Japan only).
        sig { returns(String) }
        attr_accessor :last_name_kanji
        # The individual's maiden name.
        sig { returns(String) }
        attr_accessor :maiden_name
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The individual's phone number.
        sig { returns(String) }
        attr_accessor :phone
        # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
        sig { returns(String) }
        attr_accessor :political_exposure
        # The individual's registered address.
        sig { returns(::Stripe::AccountService::CreateParams::Individual::RegisteredAddress) }
        attr_accessor :registered_address
        # Describes the person’s relationship to the account.
        sig { returns(::Stripe::AccountService::CreateParams::Individual::Relationship) }
        attr_accessor :relationship
        # The last four digits of the individual's Social Security Number (U.S. only).
        sig { returns(String) }
        attr_accessor :ssn_last_4
        # The individual's verification document information.
        sig { returns(::Stripe::AccountService::CreateParams::Individual::Verification) }
        attr_accessor :verification
        sig {
          params(address: ::Stripe::AccountService::CreateParams::Individual::Address, address_kana: ::Stripe::AccountService::CreateParams::Individual::AddressKana, address_kanji: ::Stripe::AccountService::CreateParams::Individual::AddressKanji, dob: T.nilable(::Stripe::AccountService::CreateParams::Individual::Dob), email: String, first_name: String, first_name_kana: String, first_name_kanji: String, full_name_aliases: T.nilable(T::Array[String]), gender: String, id_number: String, id_number_secondary: String, last_name: String, last_name_kana: String, last_name_kanji: String, maiden_name: String, metadata: T.nilable(T::Hash[String, String]), phone: String, political_exposure: String, registered_address: ::Stripe::AccountService::CreateParams::Individual::RegisteredAddress, relationship: ::Stripe::AccountService::CreateParams::Individual::Relationship, ssn_last_4: String, verification: ::Stripe::AccountService::CreateParams::Individual::Verification).void
         }
        def initialize(
          address: nil,
          address_kana: nil,
          address_kanji: nil,
          dob: nil,
          email: nil,
          first_name: nil,
          first_name_kana: nil,
          first_name_kanji: nil,
          full_name_aliases: nil,
          gender: nil,
          id_number: nil,
          id_number_secondary: nil,
          last_name: nil,
          last_name_kana: nil,
          last_name_kanji: nil,
          maiden_name: nil,
          metadata: nil,
          phone: nil,
          political_exposure: nil,
          registered_address: nil,
          relationship: nil,
          ssn_last_4: nil,
          verification: nil
        ); end
      end
      class RiskControls < Stripe::RequestParams
        class Charges < Stripe::RequestParams
          # To request to pause a risk control, pass `true`. To request to unpause a risk control, pass `false`.
          # There can be a delay before the risk control is paused or unpaused.
          sig { returns(T::Boolean) }
          attr_accessor :pause_requested
          sig { params(pause_requested: T::Boolean).void }
          def initialize(pause_requested: nil); end
        end
        class Payouts < Stripe::RequestParams
          # To request to pause a risk control, pass `true`. To request to unpause a risk control, pass `false`.
          # There can be a delay before the risk control is paused or unpaused.
          sig { returns(T::Boolean) }
          attr_accessor :pause_requested
          sig { params(pause_requested: T::Boolean).void }
          def initialize(pause_requested: nil); end
        end
        # Represents the risk control status of charges. Please see [this page for more details](https://stripe.com/docs/connect/pausing-payments-or-payouts-on-connected-accounts).
        sig { returns(::Stripe::AccountService::CreateParams::RiskControls::Charges) }
        attr_accessor :charges
        # Represents the risk control status of payouts. Please see [this page for more details](https://stripe.com/docs/connect/pausing-payments-or-payouts-on-connected-accounts).
        sig { returns(::Stripe::AccountService::CreateParams::RiskControls::Payouts) }
        attr_accessor :payouts
        sig {
          params(charges: ::Stripe::AccountService::CreateParams::RiskControls::Charges, payouts: ::Stripe::AccountService::CreateParams::RiskControls::Payouts).void
         }
        def initialize(charges: nil, payouts: nil); end
      end
      class Settings < Stripe::RequestParams
        class BacsDebitPayments < Stripe::RequestParams
          # The Bacs Direct Debit Display Name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
          sig { returns(String) }
          attr_accessor :display_name
          sig { params(display_name: String).void }
          def initialize(display_name: nil); end
        end
        class BankBcaOnboarding < Stripe::RequestParams
          # Bank BCA business account holder name
          sig { returns(String) }
          attr_accessor :account_holder_name
          # Bank BCA business account number
          sig { returns(String) }
          attr_accessor :business_account_number
          sig { params(account_holder_name: String, business_account_number: String).void }
          def initialize(account_holder_name: nil, business_account_number: nil); end
        end
        class Branding < Stripe::RequestParams
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
          sig { returns(String) }
          attr_accessor :icon
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
          sig { returns(String) }
          attr_accessor :logo
          # A CSS hex color value representing the primary branding color for this account.
          sig { returns(String) }
          attr_accessor :primary_color
          # A CSS hex color value representing the secondary branding color for this account.
          sig { returns(String) }
          attr_accessor :secondary_color
          sig {
            params(icon: String, logo: String, primary_color: String, secondary_color: String).void
           }
          def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil); end
        end
        class Capital < Stripe::RequestParams
          # Per-currency mapping of user-selected destination accounts used to pay out loans.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :payout_destination
          # Per-currency mapping of all destination accounts eligible to receive Capital financing payouts.
          sig { returns(T::Hash[String, T::Array[String]]) }
          attr_accessor :payout_destination_selector
          sig {
            params(payout_destination: T::Hash[String, String], payout_destination_selector: T::Hash[String, T::Array[String]]).void
           }
          def initialize(payout_destination: nil, payout_destination_selector: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(Integer) }
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(String) }
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig { params(date: Integer, ip: String, user_agent: T.nilable(String)).void }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the [Stripe Issuing Terms and Disclosures](/issuing/connect/tos_acceptance).
          sig {
            returns(::Stripe::AccountService::CreateParams::Settings::CardIssuing::TosAcceptance)
           }
          attr_accessor :tos_acceptance
          sig {
            params(tos_acceptance: ::Stripe::AccountService::CreateParams::Settings::CardIssuing::TosAcceptance).void
           }
          def initialize(tos_acceptance: nil); end
        end
        class CardPayments < Stripe::RequestParams
          class DeclineOn < Stripe::RequestParams
            # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
            sig { returns(T::Boolean) }
            attr_accessor :avs_failure
            # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
            sig { returns(T::Boolean) }
            attr_accessor :cvc_failure
            sig { params(avs_failure: T::Boolean, cvc_failure: T::Boolean).void }
            def initialize(avs_failure: nil, cvc_failure: nil); end
          end
          # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
          sig { returns(::Stripe::AccountService::CreateParams::Settings::CardPayments::DeclineOn) }
          attr_accessor :decline_on
          # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(String) }
          attr_accessor :statement_descriptor_prefix
          # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_prefix_kana
          # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_prefix_kanji
          sig {
            params(decline_on: ::Stripe::AccountService::CreateParams::Settings::CardPayments::DeclineOn, statement_descriptor_prefix: String, statement_descriptor_prefix_kana: T.nilable(String), statement_descriptor_prefix_kanji: T.nilable(String)).void
           }
          def initialize(
            decline_on: nil,
            statement_descriptor_prefix: nil,
            statement_descriptor_prefix_kana: nil,
            statement_descriptor_prefix_kanji: nil
          ); end
        end
        class Payments < Stripe::RequestParams
          # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don't set a `statement_descriptor_prefix`, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the `statement_descriptor` text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the [account settings documentation](https://docs.stripe.com/get-started/account/statement-descriptors).
          sig { returns(String) }
          attr_accessor :statement_descriptor
          # The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(String) }
          attr_accessor :statement_descriptor_kana
          # The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(String) }
          attr_accessor :statement_descriptor_kanji
          sig {
            params(statement_descriptor: String, statement_descriptor_kana: String, statement_descriptor_kanji: String).void
           }
          def initialize(
            statement_descriptor: nil,
            statement_descriptor_kana: nil,
            statement_descriptor_kanji: nil
          ); end
        end
        class Payouts < Stripe::RequestParams
          class Schedule < Stripe::RequestParams
            # The number of days charge funds are held before being paid out. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
            sig { returns(T.any(String, Integer)) }
            attr_accessor :delay_days
            # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
            sig { returns(String) }
            attr_accessor :interval
            # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
            sig { returns(Integer) }
            attr_accessor :monthly_anchor
            # The day of the week when available funds are paid out, specified as `monday`, `tuesday`, etc. (required and applicable only if `interval` is `weekly`.)
            sig { returns(String) }
            attr_accessor :weekly_anchor
            sig {
              params(delay_days: T.any(String, Integer), interval: String, monthly_anchor: Integer, weekly_anchor: String).void
             }
            def initialize(
              delay_days: nil,
              interval: nil,
              monthly_anchor: nil,
              weekly_anchor: nil
            ); end
          end
          # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
          sig { returns(T::Boolean) }
          attr_accessor :debit_negative_balances
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          sig { returns(::Stripe::AccountService::CreateParams::Settings::Payouts::Schedule) }
          attr_accessor :schedule
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          sig { returns(String) }
          attr_accessor :statement_descriptor
          sig {
            params(debit_negative_balances: T::Boolean, schedule: ::Stripe::AccountService::CreateParams::Settings::Payouts::Schedule, statement_descriptor: String).void
           }
          def initialize(
            debit_negative_balances: nil,
            schedule: nil,
            statement_descriptor: nil
          ); end
        end
        class TaxForms < Stripe::RequestParams
          # Whether the account opted out of receiving their tax forms by postal delivery.
          sig { returns(T::Boolean) }
          attr_accessor :consented_to_paperless_delivery
          sig { params(consented_to_paperless_delivery: T::Boolean).void }
          def initialize(consented_to_paperless_delivery: nil); end
        end
        class Treasury < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(Integer) }
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(String) }
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig { params(date: Integer, ip: String, user_agent: T.nilable(String)).void }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the Stripe Treasury Services Agreement.
          sig { returns(::Stripe::AccountService::CreateParams::Settings::Treasury::TosAcceptance) }
          attr_accessor :tos_acceptance
          sig {
            params(tos_acceptance: ::Stripe::AccountService::CreateParams::Settings::Treasury::TosAcceptance).void
           }
          def initialize(tos_acceptance: nil); end
        end
        # Settings specific to Bacs Direct Debit.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::BacsDebitPayments) }
        attr_accessor :bacs_debit_payments
        # Settings specific to bank BCA onboarding for Indonesia bank transfers payments method.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::BankBcaOnboarding) }
        attr_accessor :bank_bca_onboarding
        # Settings used to apply the account's branding to email receipts, invoices, Checkout, and other products.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::Branding) }
        attr_accessor :branding
        # Settings specific to the account's use of the Capital product.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::Capital) }
        attr_accessor :capital
        # Settings specific to the account's use of the Card Issuing product.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::CardIssuing) }
        attr_accessor :card_issuing
        # Settings specific to card charging on the account.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::CardPayments) }
        attr_accessor :card_payments
        # Settings that apply across payment methods for charging on the account.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::Payments) }
        attr_accessor :payments
        # Settings specific to the account's payouts.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::Payouts) }
        attr_accessor :payouts
        # Settings specific to the account's tax forms.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::TaxForms) }
        attr_accessor :tax_forms
        # Settings specific to the account's Treasury FinancialAccounts.
        sig { returns(::Stripe::AccountService::CreateParams::Settings::Treasury) }
        attr_accessor :treasury
        sig {
          params(bacs_debit_payments: ::Stripe::AccountService::CreateParams::Settings::BacsDebitPayments, bank_bca_onboarding: ::Stripe::AccountService::CreateParams::Settings::BankBcaOnboarding, branding: ::Stripe::AccountService::CreateParams::Settings::Branding, capital: ::Stripe::AccountService::CreateParams::Settings::Capital, card_issuing: ::Stripe::AccountService::CreateParams::Settings::CardIssuing, card_payments: ::Stripe::AccountService::CreateParams::Settings::CardPayments, payments: ::Stripe::AccountService::CreateParams::Settings::Payments, payouts: ::Stripe::AccountService::CreateParams::Settings::Payouts, tax_forms: ::Stripe::AccountService::CreateParams::Settings::TaxForms, treasury: ::Stripe::AccountService::CreateParams::Settings::Treasury).void
         }
        def initialize(
          bacs_debit_payments: nil,
          bank_bca_onboarding: nil,
          branding: nil,
          capital: nil,
          card_issuing: nil,
          card_payments: nil,
          payments: nil,
          payouts: nil,
          tax_forms: nil,
          treasury: nil
        ); end
      end
      class TosAcceptance < Stripe::RequestParams
        # The Unix timestamp marking when the account representative accepted their service agreement.
        sig { returns(Integer) }
        attr_accessor :date
        # The IP address from which the account representative accepted their service agreement.
        sig { returns(String) }
        attr_accessor :ip
        # The user's service agreement type.
        sig { returns(String) }
        attr_accessor :service_agreement
        # The user agent of the browser from which the account representative accepted their service agreement.
        sig { returns(String) }
        attr_accessor :user_agent
        sig {
          params(date: Integer, ip: String, service_agreement: String, user_agent: String).void
         }
        def initialize(date: nil, ip: nil, service_agreement: nil, user_agent: nil); end
      end
      # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
      sig { returns(String) }
      attr_accessor :account_token
      # Business information about the account.
      sig { returns(::Stripe::AccountService::CreateParams::BusinessProfile) }
      attr_accessor :business_profile
      # The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(String) }
      attr_accessor :business_type
      # Each key of the dictionary represents a capability, and each capability
      # maps to its settings (for example, whether it has been requested or not). Each
      # capability is inactive until you have provided its specific
      # requirements and Stripe has verified them. An account might have some
      # of its requested capabilities be active and some be inactive.
      #
      # Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)
      # is `none`, which includes Custom accounts.
      sig { returns(::Stripe::AccountService::CreateParams::Capabilities) }
      attr_accessor :capabilities
      # Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(::Stripe::AccountService::CreateParams::Company) }
      attr_accessor :company
      # A hash of configuration describing the account controller's attributes.
      sig { returns(::Stripe::AccountService::CreateParams::Controller) }
      attr_accessor :controller
      # The country in which the account holder resides, or in which the business is legally established. This should be an ISO 3166-1 alpha-2 country code. For example, if you are in the United States and the business for which you're creating an account is legally represented in Canada, you would use `CA` as the country for the account being created. Available countries include [Stripe's global markets](https://stripe.com/global) as well as countries where [cross-border payouts](https://stripe.com/docs/connect/cross-border-payouts) are supported.
      sig { returns(String) }
      attr_accessor :country
      # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
      sig { returns(String) }
      attr_accessor :default_currency
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(::Stripe::AccountService::CreateParams::Documents) }
      attr_accessor :documents
      # The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
      sig { returns(String) }
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig {
        returns(T.any(String, ::Stripe::AccountService::CreateParams::BankAccount, ::Stripe::AccountService::CreateParams::Card, ::Stripe::AccountService::CreateParams::CardToken))
       }
      attr_accessor :external_account
      # A hash of account group type to tokens. These are account groups this account should be added to.
      sig { returns(::Stripe::AccountService::CreateParams::Groups) }
      attr_accessor :groups
      # Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(::Stripe::AccountService::CreateParams::Individual) }
      attr_accessor :individual
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # A hash to configure risk controls on the account. Please see [this page for more details](/connect/pausing-payments-or-payouts-on-connected-accounts).
      sig { returns(::Stripe::AccountService::CreateParams::RiskControls) }
      attr_accessor :risk_controls
      # Options for customizing how the account functions within Stripe.
      sig { returns(::Stripe::AccountService::CreateParams::Settings) }
      attr_accessor :settings
      # Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
      sig { returns(::Stripe::AccountService::CreateParams::TosAcceptance) }
      attr_accessor :tos_acceptance
      # The type of Stripe account to create. May be one of `custom`, `express` or `standard`.
      sig { returns(String) }
      attr_accessor :type
      sig {
        params(account_token: String, business_profile: ::Stripe::AccountService::CreateParams::BusinessProfile, business_type: String, capabilities: ::Stripe::AccountService::CreateParams::Capabilities, company: ::Stripe::AccountService::CreateParams::Company, controller: ::Stripe::AccountService::CreateParams::Controller, country: String, default_currency: String, documents: ::Stripe::AccountService::CreateParams::Documents, email: String, expand: T::Array[String], external_account: T.any(String, ::Stripe::AccountService::CreateParams::BankAccount, ::Stripe::AccountService::CreateParams::Card, ::Stripe::AccountService::CreateParams::CardToken), groups: ::Stripe::AccountService::CreateParams::Groups, individual: ::Stripe::AccountService::CreateParams::Individual, metadata: T.nilable(T::Hash[String, String]), risk_controls: ::Stripe::AccountService::CreateParams::RiskControls, settings: ::Stripe::AccountService::CreateParams::Settings, tos_acceptance: ::Stripe::AccountService::CreateParams::TosAcceptance, type: String).void
       }
      def initialize(
        account_token: nil,
        business_profile: nil,
        business_type: nil,
        capabilities: nil,
        company: nil,
        controller: nil,
        country: nil,
        default_currency: nil,
        documents: nil,
        email: nil,
        expand: nil,
        external_account: nil,
        groups: nil,
        individual: nil,
        metadata: nil,
        risk_controls: nil,
        settings: nil,
        tos_acceptance: nil,
        type: nil
      ); end
    end
    class RejectParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # The reason for rejecting the account. Can be `fraud`, `terms_of_service`, or `other`.
      sig { returns(String) }
      attr_accessor :reason
      sig { params(expand: T::Array[String], reason: String).void }
      def initialize(expand: nil, reason: nil); end
    end
    # With [Connect](https://stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    sig {
      params(params: T.any(::Stripe::AccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def create(params = {}, opts = {}); end

    # With [Connect](https://stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts where Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. Live-mode accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be deleted when all [balances](https://stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    sig {
      params(account: String, params: T.any(::Stripe::AccountService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def delete(account, params = {}, opts = {}); end

    # Returns a list of accounts connected to your platform via [Connect](https://stripe.com/docs/connect). If you're not a platform, the list is empty.
    sig {
      params(params: T.any(::Stripe::AccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # With [Connect](https://stripe.com/connect), you can reject accounts that you have flagged as suspicious.
    #
    # Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.
    sig {
      params(account: String, params: T.any(::Stripe::AccountService::RejectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def reject(account, params = {}, opts = {}); end

    # Retrieves the details of an account.
    sig {
      params(account: String, params: T.any(::Stripe::AccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def retrieve(account, params = {}, opts = {}); end

    # Retrieves the details of an account.
    sig {
      params(params: T.any(::Stripe::AccountService::RetrieveCurrentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def retrieve_current(params = {}, opts = {}); end

    # Updates a [connected account](https://stripe.com/connect/accounts) by setting the values of the parameters passed. Any parameters not provided are
    # left unchanged.
    #
    # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is application, which includes Custom accounts, you can update any information on the account.
    #
    # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is stripe, which includes Standard and Express accounts, you can update all information until you create
    # an [Account Link or <a href="/api/account_sessions">Account Session](https://stripe.com/api/account_links) to start Connect onboarding,
    # after which some properties can no longer be updated.
    #
    # To update your own account, use the [Dashboard](https://dashboard.stripe.com/settings/account). Refer to our
    # [Connect](https://stripe.com/docs/connect/updating-accounts) documentation to learn more about updating accounts.
    sig {
      params(account: String, params: T.any(::Stripe::AccountService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def update(account, params = {}, opts = {}); end
  end
end