# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountService < StripeService
    attr_reader :capabilities
    attr_reader :external_accounts
    attr_reader :login_links
    attr_reader :persons
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class BankAccount < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        def object; end
        sig { params(_object: String).returns(String) }
        def object=(_object); end
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        def account_holder_name; end
        sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
        def account_holder_name=(_account_holder_name); end
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        def account_holder_type; end
        sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
        def account_holder_type=(_account_holder_type); end
        # The account number for the bank account, in string form. Must be a checking account.
        sig { returns(String) }
        def account_number; end
        sig { params(_account_number: String).returns(String) }
        def account_number=(_account_number); end
        # The country in which the bank account is located.
        sig { returns(String) }
        def country; end
        sig { params(_country: String).returns(String) }
        def country=(_country); end
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required.
        sig { returns(T.nilable(String)) }
        def routing_number; end
        sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
        def routing_number=(_routing_number); end
        sig {
          params(object: String, account_holder_name: T.nilable(String), account_holder_type: T.nilable(String), account_number: String, country: String, currency: T.nilable(String), routing_number: T.nilable(String)).void
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
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
          sig { returns(String) }
          def fiscal_year_end; end
          sig { params(_fiscal_year_end: String).returns(String) }
          def fiscal_year_end=(_fiscal_year_end); end
          sig { params(amount: Integer, currency: String, fiscal_year_end: String).void }
          def initialize(amount: nil, currency: nil, fiscal_year_end: nil); end
        end
        class MonthlyEstimatedRevenue < Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          sig { params(amount: Integer, currency: String).void }
          def initialize(amount: nil, currency: nil); end
        end
        class SupportAddress < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        # The applicant's gross annual revenue for its preceding fiscal year.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::AnnualRevenue))
         }
        def annual_revenue; end
        sig {
          params(_annual_revenue: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::AnnualRevenue)).returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::AnnualRevenue))
         }
        def annual_revenue=(_annual_revenue); end
        # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
        sig { returns(T.nilable(Integer)) }
        def estimated_worker_count; end
        sig { params(_estimated_worker_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def estimated_worker_count=(_estimated_worker_count); end
        # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
        sig { returns(T.nilable(String)) }
        def mcc; end
        sig { params(_mcc: T.nilable(String)).returns(T.nilable(String)) }
        def mcc=(_mcc); end
        # Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
        sig { returns(T.nilable(T::Array[String])) }
        def minority_owned_business_designation; end
        sig {
          params(_minority_owned_business_designation: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def minority_owned_business_designation=(_minority_owned_business_designation); end
        # An estimate of the monthly revenue of the business. Only accepted for accounts in Brazil and India.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::MonthlyEstimatedRevenue))
         }
        def monthly_estimated_revenue; end
        sig {
          params(_monthly_estimated_revenue: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::MonthlyEstimatedRevenue)).returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::MonthlyEstimatedRevenue))
         }
        def monthly_estimated_revenue=(_monthly_estimated_revenue); end
        # The customer-facing business name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Internal-only description of the product sold by, or service provided by, the business. Used by Stripe for risk and underwriting purposes.
        sig { returns(T.nilable(String)) }
        def product_description; end
        sig { params(_product_description: T.nilable(String)).returns(T.nilable(String)) }
        def product_description=(_product_description); end
        # A publicly available mailing address for sending support issues to.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::SupportAddress))
         }
        def support_address; end
        sig {
          params(_support_address: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::SupportAddress)).returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::SupportAddress))
         }
        def support_address=(_support_address); end
        # A publicly available email address for sending support issues to.
        sig { returns(T.nilable(String)) }
        def support_email; end
        sig { params(_support_email: T.nilable(String)).returns(T.nilable(String)) }
        def support_email=(_support_email); end
        # A publicly available phone number to call with support issues.
        sig { returns(T.nilable(String)) }
        def support_phone; end
        sig { params(_support_phone: T.nilable(String)).returns(T.nilable(String)) }
        def support_phone=(_support_phone); end
        # A publicly available website for handling support issues.
        sig { returns(T.nilable(String)) }
        def support_url; end
        sig { params(_support_url: T.nilable(String)).returns(T.nilable(String)) }
        def support_url=(_support_url); end
        # The business's publicly available website.
        sig { returns(T.nilable(String)) }
        def url; end
        sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
        def url=(_url); end
        sig {
          params(annual_revenue: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::AnnualRevenue), estimated_worker_count: T.nilable(Integer), mcc: T.nilable(String), minority_owned_business_designation: T.nilable(T::Array[String]), monthly_estimated_revenue: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::MonthlyEstimatedRevenue), name: T.nilable(String), product_description: T.nilable(String), support_address: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile::SupportAddress), support_email: T.nilable(String), support_phone: T.nilable(String), support_url: T.nilable(String), url: T.nilable(String)).void
         }
        def initialize(
          annual_revenue: nil,
          estimated_worker_count: nil,
          mcc: nil,
          minority_owned_business_designation: nil,
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
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AffirmPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AfterpayClearpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AlmaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AmazonPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AuBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BacsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BancontactPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BilliePayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BlikPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BoletoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CartesBancairesPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CashappPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CryptoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class EpsPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class FpxPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class GbBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class GiropayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class GrabpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class IdealPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class IndiaInternationalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class JcbPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class JpBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KakaoPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KlarnaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KonbiniPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KrCardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class LegacyPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class LinkPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class MobilepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class MultibancoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class MxBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class NaverPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class NzBankAccountBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class OxxoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class P24Payments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PayByBankPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PaycoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PaynowPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PixPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PromptpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class RevolutPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SamsungPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SatispayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SepaBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SepaDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SofortPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SwishPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099K < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099Misc < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class Transfers < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class Treasury < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class TwintPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class UsBankAccountAchPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class UsBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class ZipPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        # The acss_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AcssDebitPayments))
         }
        def acss_debit_payments; end
        sig {
          params(_acss_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AcssDebitPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AcssDebitPayments))
         }
        def acss_debit_payments=(_acss_debit_payments); end
        # The affirm_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AffirmPayments))
         }
        def affirm_payments; end
        sig {
          params(_affirm_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AffirmPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AffirmPayments))
         }
        def affirm_payments=(_affirm_payments); end
        # The afterpay_clearpay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AfterpayClearpayPayments))
         }
        def afterpay_clearpay_payments; end
        sig {
          params(_afterpay_clearpay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AfterpayClearpayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AfterpayClearpayPayments))
         }
        def afterpay_clearpay_payments=(_afterpay_clearpay_payments); end
        # The alma_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AlmaPayments))
         }
        def alma_payments; end
        sig {
          params(_alma_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AlmaPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AlmaPayments))
         }
        def alma_payments=(_alma_payments); end
        # The amazon_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AmazonPayPayments))
         }
        def amazon_pay_payments; end
        sig {
          params(_amazon_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AmazonPayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AmazonPayPayments))
         }
        def amazon_pay_payments=(_amazon_pay_payments); end
        # The au_becs_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AuBecsDebitPayments))
         }
        def au_becs_debit_payments; end
        sig {
          params(_au_becs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AuBecsDebitPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AuBecsDebitPayments))
         }
        def au_becs_debit_payments=(_au_becs_debit_payments); end
        # The bacs_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BacsDebitPayments))
         }
        def bacs_debit_payments; end
        sig {
          params(_bacs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BacsDebitPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BacsDebitPayments))
         }
        def bacs_debit_payments=(_bacs_debit_payments); end
        # The bancontact_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BancontactPayments))
         }
        def bancontact_payments; end
        sig {
          params(_bancontact_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BancontactPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BancontactPayments))
         }
        def bancontact_payments=(_bancontact_payments); end
        # The bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BankTransferPayments))
         }
        def bank_transfer_payments; end
        sig {
          params(_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BankTransferPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BankTransferPayments))
         }
        def bank_transfer_payments=(_bank_transfer_payments); end
        # The billie_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BilliePayments))
         }
        def billie_payments; end
        sig {
          params(_billie_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BilliePayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BilliePayments))
         }
        def billie_payments=(_billie_payments); end
        # The blik_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BlikPayments))
         }
        def blik_payments; end
        sig {
          params(_blik_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BlikPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BlikPayments))
         }
        def blik_payments=(_blik_payments); end
        # The boleto_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BoletoPayments))
         }
        def boleto_payments; end
        sig {
          params(_boleto_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BoletoPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BoletoPayments))
         }
        def boleto_payments=(_boleto_payments); end
        # The card_issuing capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardIssuing))
         }
        def card_issuing; end
        sig {
          params(_card_issuing: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardIssuing)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardIssuing))
         }
        def card_issuing=(_card_issuing); end
        # The card_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardPayments))
         }
        def card_payments; end
        sig {
          params(_card_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardPayments))
         }
        def card_payments=(_card_payments); end
        # The cartes_bancaires_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CartesBancairesPayments))
         }
        def cartes_bancaires_payments; end
        sig {
          params(_cartes_bancaires_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CartesBancairesPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CartesBancairesPayments))
         }
        def cartes_bancaires_payments=(_cartes_bancaires_payments); end
        # The cashapp_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CashappPayments))
         }
        def cashapp_payments; end
        sig {
          params(_cashapp_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CashappPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CashappPayments))
         }
        def cashapp_payments=(_cashapp_payments); end
        # The crypto_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CryptoPayments))
         }
        def crypto_payments; end
        sig {
          params(_crypto_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CryptoPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CryptoPayments))
         }
        def crypto_payments=(_crypto_payments); end
        # The eps_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::EpsPayments))
         }
        def eps_payments; end
        sig {
          params(_eps_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::EpsPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::EpsPayments))
         }
        def eps_payments=(_eps_payments); end
        # The fpx_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::FpxPayments))
         }
        def fpx_payments; end
        sig {
          params(_fpx_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::FpxPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::FpxPayments))
         }
        def fpx_payments=(_fpx_payments); end
        # The gb_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GbBankTransferPayments))
         }
        def gb_bank_transfer_payments; end
        sig {
          params(_gb_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GbBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GbBankTransferPayments))
         }
        def gb_bank_transfer_payments=(_gb_bank_transfer_payments); end
        # The giropay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GiropayPayments))
         }
        def giropay_payments; end
        sig {
          params(_giropay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GiropayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GiropayPayments))
         }
        def giropay_payments=(_giropay_payments); end
        # The grabpay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GrabpayPayments))
         }
        def grabpay_payments; end
        sig {
          params(_grabpay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GrabpayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GrabpayPayments))
         }
        def grabpay_payments=(_grabpay_payments); end
        # The ideal_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IdealPayments))
         }
        def ideal_payments; end
        sig {
          params(_ideal_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IdealPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IdealPayments))
         }
        def ideal_payments=(_ideal_payments); end
        # The india_international_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IndiaInternationalPayments))
         }
        def india_international_payments; end
        sig {
          params(_india_international_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IndiaInternationalPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IndiaInternationalPayments))
         }
        def india_international_payments=(_india_international_payments); end
        # The jcb_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JcbPayments))
         }
        def jcb_payments; end
        sig {
          params(_jcb_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JcbPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JcbPayments))
         }
        def jcb_payments=(_jcb_payments); end
        # The jp_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JpBankTransferPayments))
         }
        def jp_bank_transfer_payments; end
        sig {
          params(_jp_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JpBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JpBankTransferPayments))
         }
        def jp_bank_transfer_payments=(_jp_bank_transfer_payments); end
        # The kakao_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KakaoPayPayments))
         }
        def kakao_pay_payments; end
        sig {
          params(_kakao_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KakaoPayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KakaoPayPayments))
         }
        def kakao_pay_payments=(_kakao_pay_payments); end
        # The klarna_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KlarnaPayments))
         }
        def klarna_payments; end
        sig {
          params(_klarna_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KlarnaPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KlarnaPayments))
         }
        def klarna_payments=(_klarna_payments); end
        # The konbini_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KonbiniPayments))
         }
        def konbini_payments; end
        sig {
          params(_konbini_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KonbiniPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KonbiniPayments))
         }
        def konbini_payments=(_konbini_payments); end
        # The kr_card_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KrCardPayments))
         }
        def kr_card_payments; end
        sig {
          params(_kr_card_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KrCardPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KrCardPayments))
         }
        def kr_card_payments=(_kr_card_payments); end
        # The legacy_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LegacyPayments))
         }
        def legacy_payments; end
        sig {
          params(_legacy_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LegacyPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LegacyPayments))
         }
        def legacy_payments=(_legacy_payments); end
        # The link_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LinkPayments))
         }
        def link_payments; end
        sig {
          params(_link_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LinkPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LinkPayments))
         }
        def link_payments=(_link_payments); end
        # The mobilepay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MobilepayPayments))
         }
        def mobilepay_payments; end
        sig {
          params(_mobilepay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MobilepayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MobilepayPayments))
         }
        def mobilepay_payments=(_mobilepay_payments); end
        # The multibanco_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MultibancoPayments))
         }
        def multibanco_payments; end
        sig {
          params(_multibanco_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MultibancoPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MultibancoPayments))
         }
        def multibanco_payments=(_multibanco_payments); end
        # The mx_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MxBankTransferPayments))
         }
        def mx_bank_transfer_payments; end
        sig {
          params(_mx_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MxBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MxBankTransferPayments))
         }
        def mx_bank_transfer_payments=(_mx_bank_transfer_payments); end
        # The naver_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NaverPayPayments))
         }
        def naver_pay_payments; end
        sig {
          params(_naver_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NaverPayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NaverPayPayments))
         }
        def naver_pay_payments=(_naver_pay_payments); end
        # The nz_bank_account_becs_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NzBankAccountBecsDebitPayments))
         }
        def nz_bank_account_becs_debit_payments; end
        sig {
          params(_nz_bank_account_becs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NzBankAccountBecsDebitPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NzBankAccountBecsDebitPayments))
         }
        def nz_bank_account_becs_debit_payments=(_nz_bank_account_becs_debit_payments); end
        # The oxxo_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::OxxoPayments))
         }
        def oxxo_payments; end
        sig {
          params(_oxxo_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::OxxoPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::OxxoPayments))
         }
        def oxxo_payments=(_oxxo_payments); end
        # The p24_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::P24Payments))
         }
        def p24_payments; end
        sig {
          params(_p24_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::P24Payments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::P24Payments))
         }
        def p24_payments=(_p24_payments); end
        # The pay_by_bank_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PayByBankPayments))
         }
        def pay_by_bank_payments; end
        sig {
          params(_pay_by_bank_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PayByBankPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PayByBankPayments))
         }
        def pay_by_bank_payments=(_pay_by_bank_payments); end
        # The payco_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaycoPayments))
         }
        def payco_payments; end
        sig {
          params(_payco_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaycoPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaycoPayments))
         }
        def payco_payments=(_payco_payments); end
        # The paynow_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaynowPayments))
         }
        def paynow_payments; end
        sig {
          params(_paynow_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaynowPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaynowPayments))
         }
        def paynow_payments=(_paynow_payments); end
        # The pix_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PixPayments))
         }
        def pix_payments; end
        sig {
          params(_pix_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PixPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PixPayments))
         }
        def pix_payments=(_pix_payments); end
        # The promptpay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PromptpayPayments))
         }
        def promptpay_payments; end
        sig {
          params(_promptpay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PromptpayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PromptpayPayments))
         }
        def promptpay_payments=(_promptpay_payments); end
        # The revolut_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::RevolutPayPayments))
         }
        def revolut_pay_payments; end
        sig {
          params(_revolut_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::RevolutPayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::RevolutPayPayments))
         }
        def revolut_pay_payments=(_revolut_pay_payments); end
        # The samsung_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SamsungPayPayments))
         }
        def samsung_pay_payments; end
        sig {
          params(_samsung_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SamsungPayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SamsungPayPayments))
         }
        def samsung_pay_payments=(_samsung_pay_payments); end
        # The satispay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SatispayPayments))
         }
        def satispay_payments; end
        sig {
          params(_satispay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SatispayPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SatispayPayments))
         }
        def satispay_payments=(_satispay_payments); end
        # The sepa_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaBankTransferPayments))
         }
        def sepa_bank_transfer_payments; end
        sig {
          params(_sepa_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaBankTransferPayments))
         }
        def sepa_bank_transfer_payments=(_sepa_bank_transfer_payments); end
        # The sepa_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaDebitPayments))
         }
        def sepa_debit_payments; end
        sig {
          params(_sepa_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaDebitPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaDebitPayments))
         }
        def sepa_debit_payments=(_sepa_debit_payments); end
        # The sofort_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SofortPayments))
         }
        def sofort_payments; end
        sig {
          params(_sofort_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SofortPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SofortPayments))
         }
        def sofort_payments=(_sofort_payments); end
        # The swish_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SwishPayments))
         }
        def swish_payments; end
        sig {
          params(_swish_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SwishPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SwishPayments))
         }
        def swish_payments=(_swish_payments); end
        # The tax_reporting_us_1099_k capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099K))
         }
        def tax_reporting_us_1099_k; end
        sig {
          params(_tax_reporting_us_1099_k: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099K)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099K))
         }
        def tax_reporting_us_1099_k=(_tax_reporting_us_1099_k); end
        # The tax_reporting_us_1099_misc capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099Misc))
         }
        def tax_reporting_us_1099_misc; end
        sig {
          params(_tax_reporting_us_1099_misc: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099Misc)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099Misc))
         }
        def tax_reporting_us_1099_misc=(_tax_reporting_us_1099_misc); end
        # The transfers capability.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Transfers)) }
        def transfers; end
        sig {
          params(_transfers: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Transfers)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Transfers))
         }
        def transfers=(_transfers); end
        # The treasury capability.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Treasury)) }
        def treasury; end
        sig {
          params(_treasury: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Treasury)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Treasury))
         }
        def treasury=(_treasury); end
        # The twint_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TwintPayments))
         }
        def twint_payments; end
        sig {
          params(_twint_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TwintPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TwintPayments))
         }
        def twint_payments=(_twint_payments); end
        # The us_bank_account_ach_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankAccountAchPayments))
         }
        def us_bank_account_ach_payments; end
        sig {
          params(_us_bank_account_ach_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankAccountAchPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankAccountAchPayments))
         }
        def us_bank_account_ach_payments=(_us_bank_account_ach_payments); end
        # The us_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankTransferPayments))
         }
        def us_bank_transfer_payments; end
        sig {
          params(_us_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankTransferPayments))
         }
        def us_bank_transfer_payments=(_us_bank_transfer_payments); end
        # The zip_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::ZipPayments))
         }
        def zip_payments; end
        sig {
          params(_zip_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::ZipPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::ZipPayments))
         }
        def zip_payments=(_zip_payments); end
        sig {
          params(acss_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AcssDebitPayments), affirm_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AffirmPayments), afterpay_clearpay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AfterpayClearpayPayments), alma_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AlmaPayments), amazon_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AmazonPayPayments), au_becs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::AuBecsDebitPayments), bacs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BacsDebitPayments), bancontact_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BancontactPayments), bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BankTransferPayments), billie_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BilliePayments), blik_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BlikPayments), boleto_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::BoletoPayments), card_issuing: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardIssuing), card_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CardPayments), cartes_bancaires_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CartesBancairesPayments), cashapp_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CashappPayments), crypto_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::CryptoPayments), eps_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::EpsPayments), fpx_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::FpxPayments), gb_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GbBankTransferPayments), giropay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GiropayPayments), grabpay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::GrabpayPayments), ideal_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IdealPayments), india_international_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::IndiaInternationalPayments), jcb_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JcbPayments), jp_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::JpBankTransferPayments), kakao_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KakaoPayPayments), klarna_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KlarnaPayments), konbini_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KonbiniPayments), kr_card_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::KrCardPayments), legacy_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LegacyPayments), link_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::LinkPayments), mobilepay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MobilepayPayments), multibanco_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MultibancoPayments), mx_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::MxBankTransferPayments), naver_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NaverPayPayments), nz_bank_account_becs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::NzBankAccountBecsDebitPayments), oxxo_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::OxxoPayments), p24_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::P24Payments), pay_by_bank_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PayByBankPayments), payco_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaycoPayments), paynow_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PaynowPayments), pix_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PixPayments), promptpay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::PromptpayPayments), revolut_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::RevolutPayPayments), samsung_pay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SamsungPayPayments), satispay_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SatispayPayments), sepa_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaBankTransferPayments), sepa_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SepaDebitPayments), sofort_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SofortPayments), swish_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::SwishPayments), tax_reporting_us_1099_k: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099K), tax_reporting_us_1099_misc: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TaxReportingUs1099Misc), transfers: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Transfers), treasury: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::Treasury), twint_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::TwintPayments), us_bank_account_ach_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankAccountAchPayments), us_bank_transfer_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::UsBankTransferPayments), zip_payments: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities::ZipPayments)).void
         }
        def initialize(
          acss_debit_payments: nil,
          affirm_payments: nil,
          afterpay_clearpay_payments: nil,
          alma_payments: nil,
          amazon_pay_payments: nil,
          au_becs_debit_payments: nil,
          bacs_debit_payments: nil,
          bancontact_payments: nil,
          bank_transfer_payments: nil,
          billie_payments: nil,
          blik_payments: nil,
          boleto_payments: nil,
          card_issuing: nil,
          card_payments: nil,
          cartes_bancaires_payments: nil,
          cashapp_payments: nil,
          crypto_payments: nil,
          eps_payments: nil,
          fpx_payments: nil,
          gb_bank_transfer_payments: nil,
          giropay_payments: nil,
          grabpay_payments: nil,
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
          mobilepay_payments: nil,
          multibanco_payments: nil,
          mx_bank_transfer_payments: nil,
          naver_pay_payments: nil,
          nz_bank_account_becs_debit_payments: nil,
          oxxo_payments: nil,
          p24_payments: nil,
          pay_by_bank_payments: nil,
          payco_payments: nil,
          paynow_payments: nil,
          pix_payments: nil,
          promptpay_payments: nil,
          revolut_pay_payments: nil,
          samsung_pay_payments: nil,
          satispay_payments: nil,
          sepa_bank_transfer_payments: nil,
          sepa_debit_payments: nil,
          sofort_payments: nil,
          swish_payments: nil,
          tax_reporting_us_1099_k: nil,
          tax_reporting_us_1099_misc: nil,
          transfers: nil,
          treasury: nil,
          twint_payments: nil,
          us_bank_account_ach_payments: nil,
          us_bank_transfer_payments: nil,
          zip_payments: nil
        ); end
      end
      class Card < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        def object; end
        sig { params(_object: String).returns(String) }
        def object=(_object); end
        # Attribute for param field address_city
        sig { returns(T.nilable(String)) }
        def address_city; end
        sig { params(_address_city: T.nilable(String)).returns(T.nilable(String)) }
        def address_city=(_address_city); end
        # Attribute for param field address_country
        sig { returns(T.nilable(String)) }
        def address_country; end
        sig { params(_address_country: T.nilable(String)).returns(T.nilable(String)) }
        def address_country=(_address_country); end
        # Attribute for param field address_line1
        sig { returns(T.nilable(String)) }
        def address_line1; end
        sig { params(_address_line1: T.nilable(String)).returns(T.nilable(String)) }
        def address_line1=(_address_line1); end
        # Attribute for param field address_line2
        sig { returns(T.nilable(String)) }
        def address_line2; end
        sig { params(_address_line2: T.nilable(String)).returns(T.nilable(String)) }
        def address_line2=(_address_line2); end
        # Attribute for param field address_state
        sig { returns(T.nilable(String)) }
        def address_state; end
        sig { params(_address_state: T.nilable(String)).returns(T.nilable(String)) }
        def address_state=(_address_state); end
        # Attribute for param field address_zip
        sig { returns(T.nilable(String)) }
        def address_zip; end
        sig { params(_address_zip: T.nilable(String)).returns(T.nilable(String)) }
        def address_zip=(_address_zip); end
        # Attribute for param field currency
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # Attribute for param field cvc
        sig { returns(T.nilable(String)) }
        def cvc; end
        sig { params(_cvc: T.nilable(String)).returns(T.nilable(String)) }
        def cvc=(_cvc); end
        # Attribute for param field exp_month
        sig { returns(Integer) }
        def exp_month; end
        sig { params(_exp_month: Integer).returns(Integer) }
        def exp_month=(_exp_month); end
        # Attribute for param field exp_year
        sig { returns(Integer) }
        def exp_year; end
        sig { params(_exp_year: Integer).returns(Integer) }
        def exp_year=(_exp_year); end
        # Attribute for param field name
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Attribute for param field number
        sig { returns(String) }
        def number; end
        sig { params(_number: String).returns(String) }
        def number=(_number); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Attribute for param field default_for_currency
        sig { returns(T.nilable(T::Boolean)) }
        def default_for_currency; end
        sig { params(_default_for_currency: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def default_for_currency=(_default_for_currency); end
        sig {
          params(object: String, address_city: T.nilable(String), address_country: T.nilable(String), address_line1: T.nilable(String), address_line2: T.nilable(String), address_state: T.nilable(String), address_zip: T.nilable(String), currency: T.nilable(String), cvc: T.nilable(String), exp_month: Integer, exp_year: Integer, name: T.nilable(String), number: String, metadata: T.nilable(T::Hash[String, String]), default_for_currency: T.nilable(T::Boolean)).void
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
        def object; end
        sig { params(_object: String).returns(String) }
        def object=(_object); end
        # Attribute for param field currency
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # Attribute for param field token
        sig { returns(String) }
        def token; end
        sig { params(_token: String).returns(String) }
        def token=(_token); end
        sig { params(object: String, currency: T.nilable(String), token: String).void }
        def initialize(object: nil, currency: nil, token: nil); end
      end
      class Company < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
          sig { returns(T.nilable(Integer)) }
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the directorship declaration attestation was made.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The user agent of the browser from which the directorship declaration attestation was made.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class OwnershipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the beneficial owner attestation was made.
          sig { returns(T.nilable(Integer)) }
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the beneficial owner attestation was made.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The user agent of the browser from which the beneficial owner attestation was made.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class RegistrationDate < Stripe::RequestParams
          # The day of registration, between 1 and 31.
          sig { returns(Integer) }
          def day; end
          sig { params(_day: Integer).returns(Integer) }
          def day=(_day); end
          # The month of registration, between 1 and 12.
          sig { returns(Integer) }
          def month; end
          sig { params(_month: Integer).returns(Integer) }
          def month=(_month); end
          # The four-digit year of registration.
          sig { returns(Integer) }
          def year; end
          sig { params(_year: Integer).returns(Integer) }
          def year=(_year); end
          sig { params(day: Integer, month: Integer, year: Integer).void }
          def initialize(day: nil, month: nil, year: nil); end
        end
        class Verification < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def back; end
            sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
            def back=(_back); end
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def front; end
            sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
            def front=(_front); end
            sig { params(back: T.nilable(String), front: T.nilable(String)).void }
            def initialize(back: nil, front: nil); end
          end
          # A document verifying the business.
          sig {
            returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification::Document))
           }
          def document; end
          sig {
            params(_document: T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification::Document)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification::Document))
           }
          def document=(_document); end
          sig {
            params(document: T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification::Document)).void
           }
          def initialize(document: nil); end
        end
        # The company's primary address.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::AccountService::UpdateParams::Company::Address)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::Address))
         }
        def address=(_address); end
        # The Kana variation of the company's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKana)) }
        def address_kana; end
        sig {
          params(_address_kana: T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKana)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKana))
         }
        def address_kana=(_address_kana); end
        # The Kanji variation of the company's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKanji)) }
        def address_kanji; end
        sig {
          params(_address_kanji: T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKanji)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKanji))
         }
        def address_kanji=(_address_kanji); end
        # Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
        sig { returns(T.nilable(T::Boolean)) }
        def directors_provided; end
        sig { params(_directors_provided: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def directors_provided=(_directors_provided); end
        # This hash is used to attest that the directors information provided to Stripe is both current and correct.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::DirectorshipDeclaration))
         }
        def directorship_declaration; end
        sig {
          params(_directorship_declaration: T.nilable(::Stripe::AccountService::UpdateParams::Company::DirectorshipDeclaration)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::DirectorshipDeclaration))
         }
        def directorship_declaration=(_directorship_declaration); end
        # Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](/api/persons) for accounts with a `relationship.executive` requirement.
        sig { returns(T.nilable(T::Boolean)) }
        def executives_provided; end
        sig { params(_executives_provided: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def executives_provided=(_executives_provided); end
        # The export license ID number of the company, also referred as Import Export Code (India only).
        sig { returns(T.nilable(String)) }
        def export_license_id; end
        sig { params(_export_license_id: T.nilable(String)).returns(T.nilable(String)) }
        def export_license_id=(_export_license_id); end
        # The purpose code to use for export transactions (India only).
        sig { returns(T.nilable(String)) }
        def export_purpose_code; end
        sig { params(_export_purpose_code: T.nilable(String)).returns(T.nilable(String)) }
        def export_purpose_code=(_export_purpose_code); end
        # The company's legal name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The Kana variation of the company's legal name (Japan only).
        sig { returns(T.nilable(String)) }
        def name_kana; end
        sig { params(_name_kana: T.nilable(String)).returns(T.nilable(String)) }
        def name_kana=(_name_kana); end
        # The Kanji variation of the company's legal name (Japan only).
        sig { returns(T.nilable(String)) }
        def name_kanji; end
        sig { params(_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
        def name_kanji=(_name_kanji); end
        # Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](/api/persons) for accounts with a `relationship.owner` requirement.
        sig { returns(T.nilable(T::Boolean)) }
        def owners_provided; end
        sig { params(_owners_provided: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def owners_provided=(_owners_provided); end
        # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::OwnershipDeclaration))
         }
        def ownership_declaration; end
        sig {
          params(_ownership_declaration: T.nilable(::Stripe::AccountService::UpdateParams::Company::OwnershipDeclaration)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::OwnershipDeclaration))
         }
        def ownership_declaration=(_ownership_declaration); end
        # This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details.
        sig { returns(T.nilable(T.any(String, String))) }
        def ownership_exemption_reason; end
        sig {
          params(_ownership_exemption_reason: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
         }
        def ownership_exemption_reason=(_ownership_exemption_reason); end
        # The company's phone number (used for verification).
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # Attribute for param field registration_date
        sig {
          returns(T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Company::RegistrationDate)))
         }
        def registration_date; end
        sig {
          params(_registration_date: T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Company::RegistrationDate))).returns(T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Company::RegistrationDate)))
         }
        def registration_date=(_registration_date); end
        # The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong).
        sig { returns(T.nilable(String)) }
        def registration_number; end
        sig { params(_registration_number: T.nilable(String)).returns(T.nilable(String)) }
        def registration_number=(_registration_number); end
        # The category identifying the legal structure of the company or legal entity. See [Business structure](/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value.
        sig { returns(T.nilable(T.any(String, String))) }
        def structure; end
        sig {
          params(_structure: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
         }
        def structure=(_structure); end
        # The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.)
        sig { returns(T.nilable(String)) }
        def tax_id; end
        sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
        def tax_id=(_tax_id); end
        # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
        sig { returns(T.nilable(String)) }
        def tax_id_registrar; end
        sig { params(_tax_id_registrar: T.nilable(String)).returns(T.nilable(String)) }
        def tax_id_registrar=(_tax_id_registrar); end
        # The VAT number of the company.
        sig { returns(T.nilable(String)) }
        def vat_id; end
        sig { params(_vat_id: T.nilable(String)).returns(T.nilable(String)) }
        def vat_id=(_vat_id); end
        # Information on the verification state of the company.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification)) }
        def verification; end
        sig {
          params(_verification: T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification))
         }
        def verification=(_verification); end
        sig {
          params(address: T.nilable(::Stripe::AccountService::UpdateParams::Company::Address), address_kana: T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKana), address_kanji: T.nilable(::Stripe::AccountService::UpdateParams::Company::AddressKanji), directors_provided: T.nilable(T::Boolean), directorship_declaration: T.nilable(::Stripe::AccountService::UpdateParams::Company::DirectorshipDeclaration), executives_provided: T.nilable(T::Boolean), export_license_id: T.nilable(String), export_purpose_code: T.nilable(String), name: T.nilable(String), name_kana: T.nilable(String), name_kanji: T.nilable(String), owners_provided: T.nilable(T::Boolean), ownership_declaration: T.nilable(::Stripe::AccountService::UpdateParams::Company::OwnershipDeclaration), ownership_exemption_reason: T.nilable(T.any(String, String)), phone: T.nilable(String), registration_date: T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Company::RegistrationDate)), registration_number: T.nilable(String), structure: T.nilable(T.any(String, String)), tax_id: T.nilable(String), tax_id_registrar: T.nilable(String), vat_id: T.nilable(String), verification: T.nilable(::Stripe::AccountService::UpdateParams::Company::Verification)).void
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
          registration_date: nil,
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
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyLicense < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyMemorandumOfAssociation < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyMinisterialDecree < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyRegistrationVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyTaxIdVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class ProofOfAddress < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class ProofOfRegistration < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::BankAccountOwnershipVerification))
         }
        def bank_account_ownership_verification; end
        sig {
          params(_bank_account_ownership_verification: T.nilable(::Stripe::AccountService::UpdateParams::Documents::BankAccountOwnershipVerification)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::BankAccountOwnershipVerification))
         }
        def bank_account_ownership_verification=(_bank_account_ownership_verification); end
        # One or more documents that demonstrate proof of a company's license to operate.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyLicense))
         }
        def company_license; end
        sig {
          params(_company_license: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyLicense)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyLicense))
         }
        def company_license=(_company_license); end
        # One or more documents showing the company's Memorandum of Association.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMemorandumOfAssociation))
         }
        def company_memorandum_of_association; end
        sig {
          params(_company_memorandum_of_association: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMemorandumOfAssociation)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMemorandumOfAssociation))
         }
        def company_memorandum_of_association=(_company_memorandum_of_association); end
        # (Certain countries only) One or more documents showing the ministerial decree legalizing the company's establishment.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMinisterialDecree))
         }
        def company_ministerial_decree; end
        sig {
          params(_company_ministerial_decree: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMinisterialDecree)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMinisterialDecree))
         }
        def company_ministerial_decree=(_company_ministerial_decree); end
        # One or more documents that demonstrate proof of a company's registration with the appropriate local authorities.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyRegistrationVerification))
         }
        def company_registration_verification; end
        sig {
          params(_company_registration_verification: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyRegistrationVerification)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyRegistrationVerification))
         }
        def company_registration_verification=(_company_registration_verification); end
        # One or more documents that demonstrate proof of a company's tax ID.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyTaxIdVerification))
         }
        def company_tax_id_verification; end
        sig {
          params(_company_tax_id_verification: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyTaxIdVerification)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyTaxIdVerification))
         }
        def company_tax_id_verification=(_company_tax_id_verification); end
        # One or more documents that demonstrate proof of address.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfAddress))
         }
        def proof_of_address; end
        sig {
          params(_proof_of_address: T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfAddress)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfAddress))
         }
        def proof_of_address=(_proof_of_address); end
        # One or more documents showing the company’s proof of registration with the national business registry.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfRegistration))
         }
        def proof_of_registration; end
        sig {
          params(_proof_of_registration: T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfRegistration)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfRegistration))
         }
        def proof_of_registration=(_proof_of_registration); end
        # One or more documents that demonstrate proof of ultimate beneficial ownership.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfUltimateBeneficialOwnership))
         }
        def proof_of_ultimate_beneficial_ownership; end
        sig {
          params(_proof_of_ultimate_beneficial_ownership: T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfUltimateBeneficialOwnership)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfUltimateBeneficialOwnership))
         }
        def proof_of_ultimate_beneficial_ownership=(_proof_of_ultimate_beneficial_ownership); end
        sig {
          params(bank_account_ownership_verification: T.nilable(::Stripe::AccountService::UpdateParams::Documents::BankAccountOwnershipVerification), company_license: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyLicense), company_memorandum_of_association: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMemorandumOfAssociation), company_ministerial_decree: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyMinisterialDecree), company_registration_verification: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyRegistrationVerification), company_tax_id_verification: T.nilable(::Stripe::AccountService::UpdateParams::Documents::CompanyTaxIdVerification), proof_of_address: T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfAddress), proof_of_registration: T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfRegistration), proof_of_ultimate_beneficial_ownership: T.nilable(::Stripe::AccountService::UpdateParams::Documents::ProofOfUltimateBeneficialOwnership)).void
         }
        def initialize(
          bank_account_ownership_verification: nil,
          company_license: nil,
          company_memorandum_of_association: nil,
          company_ministerial_decree: nil,
          company_registration_verification: nil,
          company_tax_id_verification: nil,
          proof_of_address: nil,
          proof_of_registration: nil,
          proof_of_ultimate_beneficial_ownership: nil
        ); end
      end
      class Groups < Stripe::RequestParams
        # The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://stripe.com/docs/connect/platform-pricing-tools) for details.
        sig { returns(T.nilable(String)) }
        def payments_pricing; end
        sig { params(_payments_pricing: T.nilable(String)).returns(T.nilable(String)) }
        def payments_pricing=(_payments_pricing); end
        sig { params(payments_pricing: T.nilable(String)).void }
        def initialize(payments_pricing: nil); end
      end
      class Individual < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
        class RegisteredAddress < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        class Relationship < Stripe::RequestParams
          # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
          sig { returns(T.nilable(T::Boolean)) }
          def director; end
          sig { params(_director: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def director=(_director); end
          # Whether the person has significant responsibility to control, manage, or direct the organization.
          sig { returns(T.nilable(T::Boolean)) }
          def executive; end
          sig { params(_executive: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def executive=(_executive); end
          # Whether the person is an owner of the account’s legal entity.
          sig { returns(T.nilable(T::Boolean)) }
          def owner; end
          sig { params(_owner: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def owner=(_owner); end
          # The percent owned by the person of the account's legal entity.
          sig { returns(T.nilable(T.any(String, Float))) }
          def percent_ownership; end
          sig {
            params(_percent_ownership: T.nilable(T.any(String, Float))).returns(T.nilable(T.any(String, Float)))
           }
          def percent_ownership=(_percent_ownership); end
          # The person's title (e.g., CEO, Support Engineer).
          sig { returns(T.nilable(String)) }
          def title; end
          sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
          def title=(_title); end
          sig {
            params(director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(T.any(String, Float)), title: T.nilable(String)).void
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
            sig { returns(T.nilable(String)) }
            def back; end
            sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
            def back=(_back); end
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def front; end
            sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
            def front=(_front); end
            sig { params(back: T.nilable(String), front: T.nilable(String)).void }
            def initialize(back: nil, front: nil); end
          end
          class Document < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def back; end
            sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
            def back=(_back); end
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def front; end
            sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
            def front=(_front); end
            sig { params(back: T.nilable(String), front: T.nilable(String)).void }
            def initialize(back: nil, front: nil); end
          end
          # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
          sig {
            returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::AdditionalDocument))
           }
          def additional_document; end
          sig {
            params(_additional_document: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::AdditionalDocument)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::AdditionalDocument))
           }
          def additional_document=(_additional_document); end
          # An identifying document, either a passport or local ID card.
          sig {
            returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::Document))
           }
          def document; end
          sig {
            params(_document: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::Document)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::Document))
           }
          def document=(_document); end
          sig {
            params(additional_document: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::AdditionalDocument), document: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification::Document)).void
           }
          def initialize(additional_document: nil, document: nil); end
        end
        # The individual's primary address.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Address)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Address))
         }
        def address=(_address); end
        # The Kana variation of the individual's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKana)) }
        def address_kana; end
        sig {
          params(_address_kana: T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKana)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKana))
         }
        def address_kana=(_address_kana); end
        # The Kanji variation of the individual's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKanji)) }
        def address_kanji; end
        sig {
          params(_address_kanji: T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKanji)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKanji))
         }
        def address_kanji=(_address_kanji); end
        # The individual's date of birth.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Individual::Dob)))
         }
        def dob; end
        sig {
          params(_dob: T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Individual::Dob))).returns(T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Individual::Dob)))
         }
        def dob=(_dob); end
        # The individual's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # The individual's first name.
        sig { returns(T.nilable(String)) }
        def first_name; end
        sig { params(_first_name: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_first_name); end
        # The Kana variation of the individual's first name (Japan only).
        sig { returns(T.nilable(String)) }
        def first_name_kana; end
        sig { params(_first_name_kana: T.nilable(String)).returns(T.nilable(String)) }
        def first_name_kana=(_first_name_kana); end
        # The Kanji variation of the individual's first name (Japan only).
        sig { returns(T.nilable(String)) }
        def first_name_kanji; end
        sig { params(_first_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
        def first_name_kanji=(_first_name_kanji); end
        # A list of alternate names or aliases that the individual is known by.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def full_name_aliases; end
        sig {
          params(_full_name_aliases: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def full_name_aliases=(_full_name_aliases); end
        # The individual's gender
        sig { returns(T.nilable(String)) }
        def gender; end
        sig { params(_gender: T.nilable(String)).returns(T.nilable(String)) }
        def gender=(_gender); end
        # The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(T.nilable(String)) }
        def id_number; end
        sig { params(_id_number: T.nilable(String)).returns(T.nilable(String)) }
        def id_number=(_id_number); end
        # The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(T.nilable(String)) }
        def id_number_secondary; end
        sig { params(_id_number_secondary: T.nilable(String)).returns(T.nilable(String)) }
        def id_number_secondary=(_id_number_secondary); end
        # The individual's last name.
        sig { returns(T.nilable(String)) }
        def last_name; end
        sig { params(_last_name: T.nilable(String)).returns(T.nilable(String)) }
        def last_name=(_last_name); end
        # The Kana variation of the individual's last name (Japan only).
        sig { returns(T.nilable(String)) }
        def last_name_kana; end
        sig { params(_last_name_kana: T.nilable(String)).returns(T.nilable(String)) }
        def last_name_kana=(_last_name_kana); end
        # The Kanji variation of the individual's last name (Japan only).
        sig { returns(T.nilable(String)) }
        def last_name_kanji; end
        sig { params(_last_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
        def last_name_kanji=(_last_name_kanji); end
        # The individual's maiden name.
        sig { returns(T.nilable(String)) }
        def maiden_name; end
        sig { params(_maiden_name: T.nilable(String)).returns(T.nilable(String)) }
        def maiden_name=(_maiden_name); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # The individual's phone number.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
        sig { returns(T.nilable(String)) }
        def political_exposure; end
        sig { params(_political_exposure: T.nilable(String)).returns(T.nilable(String)) }
        def political_exposure=(_political_exposure); end
        # The individual's registered address.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::RegisteredAddress))
         }
        def registered_address; end
        sig {
          params(_registered_address: T.nilable(::Stripe::AccountService::UpdateParams::Individual::RegisteredAddress)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::RegisteredAddress))
         }
        def registered_address=(_registered_address); end
        # Describes the person’s relationship to the account.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Relationship)) }
        def relationship; end
        sig {
          params(_relationship: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Relationship)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Relationship))
         }
        def relationship=(_relationship); end
        # The last four digits of the individual's Social Security Number (U.S. only).
        sig { returns(T.nilable(String)) }
        def ssn_last_4; end
        sig { params(_ssn_last_4: T.nilable(String)).returns(T.nilable(String)) }
        def ssn_last_4=(_ssn_last_4); end
        # The individual's verification document information.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification)) }
        def verification; end
        sig {
          params(_verification: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification))
         }
        def verification=(_verification); end
        sig {
          params(address: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Address), address_kana: T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKana), address_kanji: T.nilable(::Stripe::AccountService::UpdateParams::Individual::AddressKanji), dob: T.nilable(T.any(String, ::Stripe::AccountService::UpdateParams::Individual::Dob)), email: T.nilable(String), first_name: T.nilable(String), first_name_kana: T.nilable(String), first_name_kanji: T.nilable(String), full_name_aliases: T.nilable(T.any(String, T::Array[String])), gender: T.nilable(String), id_number: T.nilable(String), id_number_secondary: T.nilable(String), last_name: T.nilable(String), last_name_kana: T.nilable(String), last_name_kanji: T.nilable(String), maiden_name: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), phone: T.nilable(String), political_exposure: T.nilable(String), registered_address: T.nilable(::Stripe::AccountService::UpdateParams::Individual::RegisteredAddress), relationship: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Relationship), ssn_last_4: T.nilable(String), verification: T.nilable(::Stripe::AccountService::UpdateParams::Individual::Verification)).void
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
      class Settings < Stripe::RequestParams
        class BacsDebitPayments < Stripe::RequestParams
          # The Bacs Direct Debit Display Name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
          sig { returns(T.nilable(String)) }
          def display_name; end
          sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
          def display_name=(_display_name); end
          sig { params(display_name: T.nilable(String)).void }
          def initialize(display_name: nil); end
        end
        class Branding < Stripe::RequestParams
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
          sig { returns(T.nilable(String)) }
          def icon; end
          sig { params(_icon: T.nilable(String)).returns(T.nilable(String)) }
          def icon=(_icon); end
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
          sig { returns(T.nilable(String)) }
          def logo; end
          sig { params(_logo: T.nilable(String)).returns(T.nilable(String)) }
          def logo=(_logo); end
          # A CSS hex color value representing the primary branding color for this account.
          sig { returns(T.nilable(String)) }
          def primary_color; end
          sig { params(_primary_color: T.nilable(String)).returns(T.nilable(String)) }
          def primary_color=(_primary_color); end
          # A CSS hex color value representing the secondary branding color for this account.
          sig { returns(T.nilable(String)) }
          def secondary_color; end
          sig { params(_secondary_color: T.nilable(String)).returns(T.nilable(String)) }
          def secondary_color=(_secondary_color); end
          sig {
            params(icon: T.nilable(String), logo: T.nilable(String), primary_color: T.nilable(String), secondary_color: T.nilable(String)).void
           }
          def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(T.nilable(Integer)) }
            def date; end
            sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def date=(_date); end
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def ip; end
            sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
            def ip=(_ip); end
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the [Stripe Issuing Terms and Disclosures](/issuing/connect/tos_acceptance).
          sig {
            returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing::TosAcceptance))
           }
          def tos_acceptance; end
          sig {
            params(_tos_acceptance: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing::TosAcceptance)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing::TosAcceptance))
           }
          def tos_acceptance=(_tos_acceptance); end
          sig {
            params(tos_acceptance: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing::TosAcceptance)).void
           }
          def initialize(tos_acceptance: nil); end
        end
        class CardPayments < Stripe::RequestParams
          class DeclineOn < Stripe::RequestParams
            # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
            sig { returns(T.nilable(T::Boolean)) }
            def avs_failure; end
            sig { params(_avs_failure: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def avs_failure=(_avs_failure); end
            # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
            sig { returns(T.nilable(T::Boolean)) }
            def cvc_failure; end
            sig { params(_cvc_failure: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def cvc_failure=(_cvc_failure); end
            sig {
              params(avs_failure: T.nilable(T::Boolean), cvc_failure: T.nilable(T::Boolean)).void
             }
            def initialize(avs_failure: nil, cvc_failure: nil); end
          end
          # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
          sig {
            returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments::DeclineOn))
           }
          def decline_on; end
          sig {
            params(_decline_on: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments::DeclineOn)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments::DeclineOn))
           }
          def decline_on=(_decline_on); end
          # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_prefix; end
          sig { params(_statement_descriptor_prefix: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_prefix=(_statement_descriptor_prefix); end
          # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_prefix_kana; end
          sig {
            params(_statement_descriptor_prefix_kana: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_prefix_kana=(_statement_descriptor_prefix_kana); end
          # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_prefix_kanji; end
          sig {
            params(_statement_descriptor_prefix_kanji: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_prefix_kanji=(_statement_descriptor_prefix_kanji); end
          sig {
            params(decline_on: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments::DeclineOn), statement_descriptor_prefix: T.nilable(String), statement_descriptor_prefix_kana: T.nilable(String), statement_descriptor_prefix_kanji: T.nilable(String)).void
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
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          def default_account_tax_ids; end
          sig {
            params(_default_account_tax_ids: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
           }
          def default_account_tax_ids=(_default_account_tax_ids); end
          # Whether payment methods should be saved when a payment is completed for a one-time invoices on a hosted invoice page.
          sig { returns(T.nilable(String)) }
          def hosted_payment_method_save; end
          sig { params(_hosted_payment_method_save: T.nilable(String)).returns(T.nilable(String)) }
          def hosted_payment_method_save=(_hosted_payment_method_save); end
          sig {
            params(default_account_tax_ids: T.nilable(T.any(String, T::Array[String])), hosted_payment_method_save: T.nilable(String)).void
           }
          def initialize(default_account_tax_ids: nil, hosted_payment_method_save: nil); end
        end
        class Payments < Stripe::RequestParams
          # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don't set a `statement_descriptor_prefix`, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the `statement_descriptor` text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the [account settings documentation](https://docs.stripe.com/get-started/account/statement-descriptors).
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          # The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(T.nilable(String)) }
          def statement_descriptor_kana; end
          sig { params(_statement_descriptor_kana: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_kana=(_statement_descriptor_kana); end
          # The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(T.nilable(String)) }
          def statement_descriptor_kanji; end
          sig { params(_statement_descriptor_kanji: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_kanji=(_statement_descriptor_kanji); end
          sig {
            params(statement_descriptor: T.nilable(String), statement_descriptor_kana: T.nilable(String), statement_descriptor_kanji: T.nilable(String)).void
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
            sig { returns(T.nilable(T.any(String, Integer))) }
            def delay_days; end
            sig {
              params(_delay_days: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
             }
            def delay_days=(_delay_days); end
            # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
            sig { returns(T.nilable(String)) }
            def interval; end
            sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
            def interval=(_interval); end
            # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
            sig { returns(T.nilable(Integer)) }
            def monthly_anchor; end
            sig { params(_monthly_anchor: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def monthly_anchor=(_monthly_anchor); end
            # The days of the month when available funds are paid out, specified as an array of numbers between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly` and `monthly_anchor` is not set.
            sig { returns(T.nilable(T::Array[Integer])) }
            def monthly_payout_days; end
            sig {
              params(_monthly_payout_days: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer]))
             }
            def monthly_payout_days=(_monthly_payout_days); end
            # The day of the week when available funds are paid out, specified as `monday`, `tuesday`, etc. (required and applicable only if `interval` is `weekly`.)
            sig { returns(T.nilable(String)) }
            def weekly_anchor; end
            sig { params(_weekly_anchor: T.nilable(String)).returns(T.nilable(String)) }
            def weekly_anchor=(_weekly_anchor); end
            # The days of the week when available funds are paid out, specified as an array, e.g., [`monday`, `tuesday`]. (required and applicable only if `interval` is `weekly` and `weekly_anchor` is not set.)
            sig { returns(T.nilable(T::Array[String])) }
            def weekly_payout_days; end
            sig {
              params(_weekly_payout_days: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def weekly_payout_days=(_weekly_payout_days); end
            sig {
              params(delay_days: T.nilable(T.any(String, Integer)), interval: T.nilable(String), monthly_anchor: T.nilable(Integer), monthly_payout_days: T.nilable(T::Array[Integer]), weekly_anchor: T.nilable(String), weekly_payout_days: T.nilable(T::Array[String])).void
             }
            def initialize(
              delay_days: nil,
              interval: nil,
              monthly_anchor: nil,
              monthly_payout_days: nil,
              weekly_anchor: nil,
              weekly_payout_days: nil
            ); end
          end
          # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
          sig { returns(T.nilable(T::Boolean)) }
          def debit_negative_balances; end
          sig {
            params(_debit_negative_balances: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def debit_negative_balances=(_debit_negative_balances); end
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          sig {
            returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts::Schedule))
           }
          def schedule; end
          sig {
            params(_schedule: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts::Schedule)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts::Schedule))
           }
          def schedule=(_schedule); end
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          sig {
            params(debit_negative_balances: T.nilable(T::Boolean), schedule: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts::Schedule), statement_descriptor: T.nilable(String)).void
           }
          def initialize(
            debit_negative_balances: nil,
            schedule: nil,
            statement_descriptor: nil
          ); end
        end
        class Treasury < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(T.nilable(Integer)) }
            def date; end
            sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def date=(_date); end
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def ip; end
            sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
            def ip=(_ip); end
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the Stripe Treasury Services Agreement.
          sig {
            returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury::TosAcceptance))
           }
          def tos_acceptance; end
          sig {
            params(_tos_acceptance: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury::TosAcceptance)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury::TosAcceptance))
           }
          def tos_acceptance=(_tos_acceptance); end
          sig {
            params(tos_acceptance: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury::TosAcceptance)).void
           }
          def initialize(tos_acceptance: nil); end
        end
        # Settings specific to Bacs Direct Debit payments.
        sig {
          returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::BacsDebitPayments))
         }
        def bacs_debit_payments; end
        sig {
          params(_bacs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Settings::BacsDebitPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::BacsDebitPayments))
         }
        def bacs_debit_payments=(_bacs_debit_payments); end
        # Settings used to apply the account's branding to email receipts, invoices, Checkout, and other products.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Branding)) }
        def branding; end
        sig {
          params(_branding: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Branding)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Branding))
         }
        def branding=(_branding); end
        # Settings specific to the account's use of the Card Issuing product.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing)) }
        def card_issuing; end
        sig {
          params(_card_issuing: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing))
         }
        def card_issuing=(_card_issuing); end
        # Settings specific to card charging on the account.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments)) }
        def card_payments; end
        sig {
          params(_card_payments: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments))
         }
        def card_payments=(_card_payments); end
        # Settings specific to the account's use of Invoices.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Invoices)) }
        def invoices; end
        sig {
          params(_invoices: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Invoices)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Invoices))
         }
        def invoices=(_invoices); end
        # Settings that apply across payment methods for charging on the account.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payments)) }
        def payments; end
        sig {
          params(_payments: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payments)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payments))
         }
        def payments=(_payments); end
        # Settings specific to the account's payouts.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts)) }
        def payouts; end
        sig {
          params(_payouts: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts))
         }
        def payouts=(_payouts); end
        # Settings specific to the account's Treasury FinancialAccounts.
        sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury)) }
        def treasury; end
        sig {
          params(_treasury: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury))
         }
        def treasury=(_treasury); end
        sig {
          params(bacs_debit_payments: T.nilable(::Stripe::AccountService::UpdateParams::Settings::BacsDebitPayments), branding: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Branding), card_issuing: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardIssuing), card_payments: T.nilable(::Stripe::AccountService::UpdateParams::Settings::CardPayments), invoices: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Invoices), payments: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payments), payouts: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Payouts), treasury: T.nilable(::Stripe::AccountService::UpdateParams::Settings::Treasury)).void
         }
        def initialize(
          bacs_debit_payments: nil,
          branding: nil,
          card_issuing: nil,
          card_payments: nil,
          invoices: nil,
          payments: nil,
          payouts: nil,
          treasury: nil
        ); end
      end
      class TosAcceptance < Stripe::RequestParams
        # The Unix timestamp marking when the account representative accepted their service agreement.
        sig { returns(T.nilable(Integer)) }
        def date; end
        sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def date=(_date); end
        # The IP address from which the account representative accepted their service agreement.
        sig { returns(T.nilable(String)) }
        def ip; end
        sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
        def ip=(_ip); end
        # The user's service agreement type.
        sig { returns(T.nilable(String)) }
        def service_agreement; end
        sig { params(_service_agreement: T.nilable(String)).returns(T.nilable(String)) }
        def service_agreement=(_service_agreement); end
        # The user agent of the browser from which the account representative accepted their service agreement.
        sig { returns(T.nilable(String)) }
        def user_agent; end
        sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
        def user_agent=(_user_agent); end
        sig {
          params(date: T.nilable(Integer), ip: T.nilable(String), service_agreement: T.nilable(String), user_agent: T.nilable(String)).void
         }
        def initialize(date: nil, ip: nil, service_agreement: nil, user_agent: nil); end
      end
      # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
      sig { returns(T.nilable(String)) }
      def account_token; end
      sig { params(_account_token: T.nilable(String)).returns(T.nilable(String)) }
      def account_token=(_account_token); end
      # Business information about the account.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile)) }
      def business_profile; end
      sig {
        params(_business_profile: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile)).returns(T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile))
       }
      def business_profile=(_business_profile); end
      # The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(T.nilable(String)) }
      def business_type; end
      sig { params(_business_type: T.nilable(String)).returns(T.nilable(String)) }
      def business_type=(_business_type); end
      # Each key of the dictionary represents a capability, and each capability
      # maps to its settings (for example, whether it has been requested or not). Each
      # capability is inactive until you have provided its specific
      # requirements and Stripe has verified them. An account might have some
      # of its requested capabilities be active and some be inactive.
      #
      # Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)
      # is `none`, which includes Custom accounts.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities)) }
      def capabilities; end
      sig {
        params(_capabilities: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Capabilities))
       }
      def capabilities=(_capabilities); end
      # Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Company)) }
      def company; end
      sig {
        params(_company: T.nilable(::Stripe::AccountService::UpdateParams::Company)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Company))
       }
      def company=(_company); end
      # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
      sig { returns(T.nilable(String)) }
      def default_currency; end
      sig { params(_default_currency: T.nilable(String)).returns(T.nilable(String)) }
      def default_currency=(_default_currency); end
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents)) }
      def documents; end
      sig {
        params(_documents: T.nilable(::Stripe::AccountService::UpdateParams::Documents)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Documents))
       }
      def documents=(_documents); end
      # The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
      sig { returns(T.nilable(String)) }
      def email; end
      sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_email); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig {
        returns(T.nilable(T.any(String, T.any(String, ::Stripe::AccountService::UpdateParams::BankAccount, ::Stripe::AccountService::UpdateParams::Card, ::Stripe::AccountService::UpdateParams::CardToken))))
       }
      def external_account; end
      sig {
        params(_external_account: T.nilable(T.any(String, T.any(String, ::Stripe::AccountService::UpdateParams::BankAccount, ::Stripe::AccountService::UpdateParams::Card, ::Stripe::AccountService::UpdateParams::CardToken)))).returns(T.nilable(T.any(String, T.any(String, ::Stripe::AccountService::UpdateParams::BankAccount, ::Stripe::AccountService::UpdateParams::Card, ::Stripe::AccountService::UpdateParams::CardToken))))
       }
      def external_account=(_external_account); end
      # A hash of account group type to tokens. These are account groups this account should be added to.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Groups)) }
      def groups; end
      sig {
        params(_groups: T.nilable(::Stripe::AccountService::UpdateParams::Groups)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Groups))
       }
      def groups=(_groups); end
      # Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual)) }
      def individual; end
      sig {
        params(_individual: T.nilable(::Stripe::AccountService::UpdateParams::Individual)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Individual))
       }
      def individual=(_individual); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Options for customizing how the account functions within Stripe.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings)) }
      def settings; end
      sig {
        params(_settings: T.nilable(::Stripe::AccountService::UpdateParams::Settings)).returns(T.nilable(::Stripe::AccountService::UpdateParams::Settings))
       }
      def settings=(_settings); end
      # Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
      sig { returns(T.nilable(::Stripe::AccountService::UpdateParams::TosAcceptance)) }
      def tos_acceptance; end
      sig {
        params(_tos_acceptance: T.nilable(::Stripe::AccountService::UpdateParams::TosAcceptance)).returns(T.nilable(::Stripe::AccountService::UpdateParams::TosAcceptance))
       }
      def tos_acceptance=(_tos_acceptance); end
      sig {
        params(account_token: T.nilable(String), business_profile: T.nilable(::Stripe::AccountService::UpdateParams::BusinessProfile), business_type: T.nilable(String), capabilities: T.nilable(::Stripe::AccountService::UpdateParams::Capabilities), company: T.nilable(::Stripe::AccountService::UpdateParams::Company), default_currency: T.nilable(String), documents: T.nilable(::Stripe::AccountService::UpdateParams::Documents), email: T.nilable(String), expand: T.nilable(T::Array[String]), external_account: T.nilable(T.any(String, T.any(String, ::Stripe::AccountService::UpdateParams::BankAccount, ::Stripe::AccountService::UpdateParams::Card, ::Stripe::AccountService::UpdateParams::CardToken))), groups: T.nilable(::Stripe::AccountService::UpdateParams::Groups), individual: T.nilable(::Stripe::AccountService::UpdateParams::Individual), metadata: T.nilable(T.any(String, T::Hash[String, String])), settings: T.nilable(::Stripe::AccountService::UpdateParams::Settings), tos_acceptance: T.nilable(::Stripe::AccountService::UpdateParams::TosAcceptance)).void
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
        settings: nil,
        tos_acceptance: nil
      ); end
    end
    class RetrieveCurrentParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return connected accounts that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::AccountService::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::AccountService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::AccountService::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(created: T.nilable(T.any(::Stripe::AccountService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
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
        def object; end
        sig { params(_object: String).returns(String) }
        def object=(_object); end
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        def account_holder_name; end
        sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
        def account_holder_name=(_account_holder_name); end
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        def account_holder_type; end
        sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
        def account_holder_type=(_account_holder_type); end
        # The account number for the bank account, in string form. Must be a checking account.
        sig { returns(String) }
        def account_number; end
        sig { params(_account_number: String).returns(String) }
        def account_number=(_account_number); end
        # The country in which the bank account is located.
        sig { returns(String) }
        def country; end
        sig { params(_country: String).returns(String) }
        def country=(_country); end
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required.
        sig { returns(T.nilable(String)) }
        def routing_number; end
        sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
        def routing_number=(_routing_number); end
        sig {
          params(object: String, account_holder_name: T.nilable(String), account_holder_type: T.nilable(String), account_number: String, country: String, currency: T.nilable(String), routing_number: T.nilable(String)).void
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
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
          sig { returns(String) }
          def fiscal_year_end; end
          sig { params(_fiscal_year_end: String).returns(String) }
          def fiscal_year_end=(_fiscal_year_end); end
          sig { params(amount: Integer, currency: String, fiscal_year_end: String).void }
          def initialize(amount: nil, currency: nil, fiscal_year_end: nil); end
        end
        class MonthlyEstimatedRevenue < Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          sig { params(amount: Integer, currency: String).void }
          def initialize(amount: nil, currency: nil); end
        end
        class SupportAddress < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        # The applicant's gross annual revenue for its preceding fiscal year.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::AnnualRevenue))
         }
        def annual_revenue; end
        sig {
          params(_annual_revenue: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::AnnualRevenue)).returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::AnnualRevenue))
         }
        def annual_revenue=(_annual_revenue); end
        # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
        sig { returns(T.nilable(Integer)) }
        def estimated_worker_count; end
        sig { params(_estimated_worker_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def estimated_worker_count=(_estimated_worker_count); end
        # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
        sig { returns(T.nilable(String)) }
        def mcc; end
        sig { params(_mcc: T.nilable(String)).returns(T.nilable(String)) }
        def mcc=(_mcc); end
        # Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
        sig { returns(T.nilable(T::Array[String])) }
        def minority_owned_business_designation; end
        sig {
          params(_minority_owned_business_designation: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def minority_owned_business_designation=(_minority_owned_business_designation); end
        # An estimate of the monthly revenue of the business. Only accepted for accounts in Brazil and India.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::MonthlyEstimatedRevenue))
         }
        def monthly_estimated_revenue; end
        sig {
          params(_monthly_estimated_revenue: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::MonthlyEstimatedRevenue)).returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::MonthlyEstimatedRevenue))
         }
        def monthly_estimated_revenue=(_monthly_estimated_revenue); end
        # The customer-facing business name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Internal-only description of the product sold by, or service provided by, the business. Used by Stripe for risk and underwriting purposes.
        sig { returns(T.nilable(String)) }
        def product_description; end
        sig { params(_product_description: T.nilable(String)).returns(T.nilable(String)) }
        def product_description=(_product_description); end
        # A publicly available mailing address for sending support issues to.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::SupportAddress))
         }
        def support_address; end
        sig {
          params(_support_address: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::SupportAddress)).returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::SupportAddress))
         }
        def support_address=(_support_address); end
        # A publicly available email address for sending support issues to.
        sig { returns(T.nilable(String)) }
        def support_email; end
        sig { params(_support_email: T.nilable(String)).returns(T.nilable(String)) }
        def support_email=(_support_email); end
        # A publicly available phone number to call with support issues.
        sig { returns(T.nilable(String)) }
        def support_phone; end
        sig { params(_support_phone: T.nilable(String)).returns(T.nilable(String)) }
        def support_phone=(_support_phone); end
        # A publicly available website for handling support issues.
        sig { returns(T.nilable(String)) }
        def support_url; end
        sig { params(_support_url: T.nilable(String)).returns(T.nilable(String)) }
        def support_url=(_support_url); end
        # The business's publicly available website.
        sig { returns(T.nilable(String)) }
        def url; end
        sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
        def url=(_url); end
        sig {
          params(annual_revenue: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::AnnualRevenue), estimated_worker_count: T.nilable(Integer), mcc: T.nilable(String), minority_owned_business_designation: T.nilable(T::Array[String]), monthly_estimated_revenue: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::MonthlyEstimatedRevenue), name: T.nilable(String), product_description: T.nilable(String), support_address: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile::SupportAddress), support_email: T.nilable(String), support_phone: T.nilable(String), support_url: T.nilable(String), url: T.nilable(String)).void
         }
        def initialize(
          annual_revenue: nil,
          estimated_worker_count: nil,
          mcc: nil,
          minority_owned_business_designation: nil,
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
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AffirmPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AfterpayClearpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AlmaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AmazonPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class AuBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BacsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BancontactPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BilliePayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BlikPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class BoletoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CartesBancairesPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CashappPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class CryptoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class EpsPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class FpxPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class GbBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class GiropayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class GrabpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class IdealPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class IndiaInternationalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class JcbPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class JpBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KakaoPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KlarnaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KonbiniPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class KrCardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class LegacyPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class LinkPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class MobilepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class MultibancoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class MxBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class NaverPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class NzBankAccountBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class OxxoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class P24Payments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PayByBankPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PaycoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PaynowPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PixPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class PromptpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class RevolutPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SamsungPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SatispayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SepaBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SepaDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SofortPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class SwishPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099K < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class TaxReportingUs1099Misc < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class Transfers < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class Treasury < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class TwintPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class UsBankAccountAchPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class UsBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        class ZipPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          sig { returns(T.nilable(T::Boolean)) }
          def requested; end
          sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def requested=(_requested); end
          sig { params(requested: T.nilable(T::Boolean)).void }
          def initialize(requested: nil); end
        end
        # The acss_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AcssDebitPayments))
         }
        def acss_debit_payments; end
        sig {
          params(_acss_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AcssDebitPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AcssDebitPayments))
         }
        def acss_debit_payments=(_acss_debit_payments); end
        # The affirm_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AffirmPayments))
         }
        def affirm_payments; end
        sig {
          params(_affirm_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AffirmPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AffirmPayments))
         }
        def affirm_payments=(_affirm_payments); end
        # The afterpay_clearpay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AfterpayClearpayPayments))
         }
        def afterpay_clearpay_payments; end
        sig {
          params(_afterpay_clearpay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AfterpayClearpayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AfterpayClearpayPayments))
         }
        def afterpay_clearpay_payments=(_afterpay_clearpay_payments); end
        # The alma_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AlmaPayments))
         }
        def alma_payments; end
        sig {
          params(_alma_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AlmaPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AlmaPayments))
         }
        def alma_payments=(_alma_payments); end
        # The amazon_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AmazonPayPayments))
         }
        def amazon_pay_payments; end
        sig {
          params(_amazon_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AmazonPayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AmazonPayPayments))
         }
        def amazon_pay_payments=(_amazon_pay_payments); end
        # The au_becs_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AuBecsDebitPayments))
         }
        def au_becs_debit_payments; end
        sig {
          params(_au_becs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AuBecsDebitPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AuBecsDebitPayments))
         }
        def au_becs_debit_payments=(_au_becs_debit_payments); end
        # The bacs_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BacsDebitPayments))
         }
        def bacs_debit_payments; end
        sig {
          params(_bacs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BacsDebitPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BacsDebitPayments))
         }
        def bacs_debit_payments=(_bacs_debit_payments); end
        # The bancontact_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BancontactPayments))
         }
        def bancontact_payments; end
        sig {
          params(_bancontact_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BancontactPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BancontactPayments))
         }
        def bancontact_payments=(_bancontact_payments); end
        # The bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BankTransferPayments))
         }
        def bank_transfer_payments; end
        sig {
          params(_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BankTransferPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BankTransferPayments))
         }
        def bank_transfer_payments=(_bank_transfer_payments); end
        # The billie_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BilliePayments))
         }
        def billie_payments; end
        sig {
          params(_billie_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BilliePayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BilliePayments))
         }
        def billie_payments=(_billie_payments); end
        # The blik_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BlikPayments))
         }
        def blik_payments; end
        sig {
          params(_blik_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BlikPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BlikPayments))
         }
        def blik_payments=(_blik_payments); end
        # The boleto_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BoletoPayments))
         }
        def boleto_payments; end
        sig {
          params(_boleto_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BoletoPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BoletoPayments))
         }
        def boleto_payments=(_boleto_payments); end
        # The card_issuing capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardIssuing))
         }
        def card_issuing; end
        sig {
          params(_card_issuing: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardIssuing)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardIssuing))
         }
        def card_issuing=(_card_issuing); end
        # The card_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardPayments))
         }
        def card_payments; end
        sig {
          params(_card_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardPayments))
         }
        def card_payments=(_card_payments); end
        # The cartes_bancaires_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CartesBancairesPayments))
         }
        def cartes_bancaires_payments; end
        sig {
          params(_cartes_bancaires_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CartesBancairesPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CartesBancairesPayments))
         }
        def cartes_bancaires_payments=(_cartes_bancaires_payments); end
        # The cashapp_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CashappPayments))
         }
        def cashapp_payments; end
        sig {
          params(_cashapp_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CashappPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CashappPayments))
         }
        def cashapp_payments=(_cashapp_payments); end
        # The crypto_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CryptoPayments))
         }
        def crypto_payments; end
        sig {
          params(_crypto_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CryptoPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CryptoPayments))
         }
        def crypto_payments=(_crypto_payments); end
        # The eps_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::EpsPayments))
         }
        def eps_payments; end
        sig {
          params(_eps_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::EpsPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::EpsPayments))
         }
        def eps_payments=(_eps_payments); end
        # The fpx_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::FpxPayments))
         }
        def fpx_payments; end
        sig {
          params(_fpx_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::FpxPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::FpxPayments))
         }
        def fpx_payments=(_fpx_payments); end
        # The gb_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GbBankTransferPayments))
         }
        def gb_bank_transfer_payments; end
        sig {
          params(_gb_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GbBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GbBankTransferPayments))
         }
        def gb_bank_transfer_payments=(_gb_bank_transfer_payments); end
        # The giropay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GiropayPayments))
         }
        def giropay_payments; end
        sig {
          params(_giropay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GiropayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GiropayPayments))
         }
        def giropay_payments=(_giropay_payments); end
        # The grabpay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GrabpayPayments))
         }
        def grabpay_payments; end
        sig {
          params(_grabpay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GrabpayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GrabpayPayments))
         }
        def grabpay_payments=(_grabpay_payments); end
        # The ideal_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IdealPayments))
         }
        def ideal_payments; end
        sig {
          params(_ideal_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IdealPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IdealPayments))
         }
        def ideal_payments=(_ideal_payments); end
        # The india_international_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IndiaInternationalPayments))
         }
        def india_international_payments; end
        sig {
          params(_india_international_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IndiaInternationalPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IndiaInternationalPayments))
         }
        def india_international_payments=(_india_international_payments); end
        # The jcb_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JcbPayments))
         }
        def jcb_payments; end
        sig {
          params(_jcb_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JcbPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JcbPayments))
         }
        def jcb_payments=(_jcb_payments); end
        # The jp_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JpBankTransferPayments))
         }
        def jp_bank_transfer_payments; end
        sig {
          params(_jp_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JpBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JpBankTransferPayments))
         }
        def jp_bank_transfer_payments=(_jp_bank_transfer_payments); end
        # The kakao_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KakaoPayPayments))
         }
        def kakao_pay_payments; end
        sig {
          params(_kakao_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KakaoPayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KakaoPayPayments))
         }
        def kakao_pay_payments=(_kakao_pay_payments); end
        # The klarna_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KlarnaPayments))
         }
        def klarna_payments; end
        sig {
          params(_klarna_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KlarnaPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KlarnaPayments))
         }
        def klarna_payments=(_klarna_payments); end
        # The konbini_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KonbiniPayments))
         }
        def konbini_payments; end
        sig {
          params(_konbini_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KonbiniPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KonbiniPayments))
         }
        def konbini_payments=(_konbini_payments); end
        # The kr_card_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KrCardPayments))
         }
        def kr_card_payments; end
        sig {
          params(_kr_card_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KrCardPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KrCardPayments))
         }
        def kr_card_payments=(_kr_card_payments); end
        # The legacy_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LegacyPayments))
         }
        def legacy_payments; end
        sig {
          params(_legacy_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LegacyPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LegacyPayments))
         }
        def legacy_payments=(_legacy_payments); end
        # The link_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LinkPayments))
         }
        def link_payments; end
        sig {
          params(_link_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LinkPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LinkPayments))
         }
        def link_payments=(_link_payments); end
        # The mobilepay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MobilepayPayments))
         }
        def mobilepay_payments; end
        sig {
          params(_mobilepay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MobilepayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MobilepayPayments))
         }
        def mobilepay_payments=(_mobilepay_payments); end
        # The multibanco_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MultibancoPayments))
         }
        def multibanco_payments; end
        sig {
          params(_multibanco_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MultibancoPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MultibancoPayments))
         }
        def multibanco_payments=(_multibanco_payments); end
        # The mx_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MxBankTransferPayments))
         }
        def mx_bank_transfer_payments; end
        sig {
          params(_mx_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MxBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MxBankTransferPayments))
         }
        def mx_bank_transfer_payments=(_mx_bank_transfer_payments); end
        # The naver_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NaverPayPayments))
         }
        def naver_pay_payments; end
        sig {
          params(_naver_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NaverPayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NaverPayPayments))
         }
        def naver_pay_payments=(_naver_pay_payments); end
        # The nz_bank_account_becs_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NzBankAccountBecsDebitPayments))
         }
        def nz_bank_account_becs_debit_payments; end
        sig {
          params(_nz_bank_account_becs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NzBankAccountBecsDebitPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NzBankAccountBecsDebitPayments))
         }
        def nz_bank_account_becs_debit_payments=(_nz_bank_account_becs_debit_payments); end
        # The oxxo_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::OxxoPayments))
         }
        def oxxo_payments; end
        sig {
          params(_oxxo_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::OxxoPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::OxxoPayments))
         }
        def oxxo_payments=(_oxxo_payments); end
        # The p24_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::P24Payments))
         }
        def p24_payments; end
        sig {
          params(_p24_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::P24Payments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::P24Payments))
         }
        def p24_payments=(_p24_payments); end
        # The pay_by_bank_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PayByBankPayments))
         }
        def pay_by_bank_payments; end
        sig {
          params(_pay_by_bank_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PayByBankPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PayByBankPayments))
         }
        def pay_by_bank_payments=(_pay_by_bank_payments); end
        # The payco_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaycoPayments))
         }
        def payco_payments; end
        sig {
          params(_payco_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaycoPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaycoPayments))
         }
        def payco_payments=(_payco_payments); end
        # The paynow_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaynowPayments))
         }
        def paynow_payments; end
        sig {
          params(_paynow_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaynowPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaynowPayments))
         }
        def paynow_payments=(_paynow_payments); end
        # The pix_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PixPayments))
         }
        def pix_payments; end
        sig {
          params(_pix_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PixPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PixPayments))
         }
        def pix_payments=(_pix_payments); end
        # The promptpay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PromptpayPayments))
         }
        def promptpay_payments; end
        sig {
          params(_promptpay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PromptpayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PromptpayPayments))
         }
        def promptpay_payments=(_promptpay_payments); end
        # The revolut_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::RevolutPayPayments))
         }
        def revolut_pay_payments; end
        sig {
          params(_revolut_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::RevolutPayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::RevolutPayPayments))
         }
        def revolut_pay_payments=(_revolut_pay_payments); end
        # The samsung_pay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SamsungPayPayments))
         }
        def samsung_pay_payments; end
        sig {
          params(_samsung_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SamsungPayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SamsungPayPayments))
         }
        def samsung_pay_payments=(_samsung_pay_payments); end
        # The satispay_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SatispayPayments))
         }
        def satispay_payments; end
        sig {
          params(_satispay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SatispayPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SatispayPayments))
         }
        def satispay_payments=(_satispay_payments); end
        # The sepa_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaBankTransferPayments))
         }
        def sepa_bank_transfer_payments; end
        sig {
          params(_sepa_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaBankTransferPayments))
         }
        def sepa_bank_transfer_payments=(_sepa_bank_transfer_payments); end
        # The sepa_debit_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaDebitPayments))
         }
        def sepa_debit_payments; end
        sig {
          params(_sepa_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaDebitPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaDebitPayments))
         }
        def sepa_debit_payments=(_sepa_debit_payments); end
        # The sofort_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SofortPayments))
         }
        def sofort_payments; end
        sig {
          params(_sofort_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SofortPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SofortPayments))
         }
        def sofort_payments=(_sofort_payments); end
        # The swish_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SwishPayments))
         }
        def swish_payments; end
        sig {
          params(_swish_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SwishPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SwishPayments))
         }
        def swish_payments=(_swish_payments); end
        # The tax_reporting_us_1099_k capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099K))
         }
        def tax_reporting_us_1099_k; end
        sig {
          params(_tax_reporting_us_1099_k: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099K)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099K))
         }
        def tax_reporting_us_1099_k=(_tax_reporting_us_1099_k); end
        # The tax_reporting_us_1099_misc capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099Misc))
         }
        def tax_reporting_us_1099_misc; end
        sig {
          params(_tax_reporting_us_1099_misc: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099Misc)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099Misc))
         }
        def tax_reporting_us_1099_misc=(_tax_reporting_us_1099_misc); end
        # The transfers capability.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Transfers)) }
        def transfers; end
        sig {
          params(_transfers: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Transfers)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Transfers))
         }
        def transfers=(_transfers); end
        # The treasury capability.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Treasury)) }
        def treasury; end
        sig {
          params(_treasury: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Treasury)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Treasury))
         }
        def treasury=(_treasury); end
        # The twint_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TwintPayments))
         }
        def twint_payments; end
        sig {
          params(_twint_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TwintPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TwintPayments))
         }
        def twint_payments=(_twint_payments); end
        # The us_bank_account_ach_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankAccountAchPayments))
         }
        def us_bank_account_ach_payments; end
        sig {
          params(_us_bank_account_ach_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankAccountAchPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankAccountAchPayments))
         }
        def us_bank_account_ach_payments=(_us_bank_account_ach_payments); end
        # The us_bank_transfer_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankTransferPayments))
         }
        def us_bank_transfer_payments; end
        sig {
          params(_us_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankTransferPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankTransferPayments))
         }
        def us_bank_transfer_payments=(_us_bank_transfer_payments); end
        # The zip_payments capability.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::ZipPayments))
         }
        def zip_payments; end
        sig {
          params(_zip_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::ZipPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities::ZipPayments))
         }
        def zip_payments=(_zip_payments); end
        sig {
          params(acss_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AcssDebitPayments), affirm_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AffirmPayments), afterpay_clearpay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AfterpayClearpayPayments), alma_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AlmaPayments), amazon_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AmazonPayPayments), au_becs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::AuBecsDebitPayments), bacs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BacsDebitPayments), bancontact_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BancontactPayments), bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BankTransferPayments), billie_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BilliePayments), blik_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BlikPayments), boleto_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::BoletoPayments), card_issuing: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardIssuing), card_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CardPayments), cartes_bancaires_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CartesBancairesPayments), cashapp_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CashappPayments), crypto_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::CryptoPayments), eps_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::EpsPayments), fpx_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::FpxPayments), gb_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GbBankTransferPayments), giropay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GiropayPayments), grabpay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::GrabpayPayments), ideal_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IdealPayments), india_international_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::IndiaInternationalPayments), jcb_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JcbPayments), jp_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::JpBankTransferPayments), kakao_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KakaoPayPayments), klarna_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KlarnaPayments), konbini_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KonbiniPayments), kr_card_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::KrCardPayments), legacy_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LegacyPayments), link_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::LinkPayments), mobilepay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MobilepayPayments), multibanco_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MultibancoPayments), mx_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::MxBankTransferPayments), naver_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NaverPayPayments), nz_bank_account_becs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::NzBankAccountBecsDebitPayments), oxxo_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::OxxoPayments), p24_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::P24Payments), pay_by_bank_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PayByBankPayments), payco_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaycoPayments), paynow_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PaynowPayments), pix_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PixPayments), promptpay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::PromptpayPayments), revolut_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::RevolutPayPayments), samsung_pay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SamsungPayPayments), satispay_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SatispayPayments), sepa_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaBankTransferPayments), sepa_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SepaDebitPayments), sofort_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SofortPayments), swish_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::SwishPayments), tax_reporting_us_1099_k: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099K), tax_reporting_us_1099_misc: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TaxReportingUs1099Misc), transfers: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Transfers), treasury: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::Treasury), twint_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::TwintPayments), us_bank_account_ach_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankAccountAchPayments), us_bank_transfer_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::UsBankTransferPayments), zip_payments: T.nilable(::Stripe::AccountService::CreateParams::Capabilities::ZipPayments)).void
         }
        def initialize(
          acss_debit_payments: nil,
          affirm_payments: nil,
          afterpay_clearpay_payments: nil,
          alma_payments: nil,
          amazon_pay_payments: nil,
          au_becs_debit_payments: nil,
          bacs_debit_payments: nil,
          bancontact_payments: nil,
          bank_transfer_payments: nil,
          billie_payments: nil,
          blik_payments: nil,
          boleto_payments: nil,
          card_issuing: nil,
          card_payments: nil,
          cartes_bancaires_payments: nil,
          cashapp_payments: nil,
          crypto_payments: nil,
          eps_payments: nil,
          fpx_payments: nil,
          gb_bank_transfer_payments: nil,
          giropay_payments: nil,
          grabpay_payments: nil,
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
          mobilepay_payments: nil,
          multibanco_payments: nil,
          mx_bank_transfer_payments: nil,
          naver_pay_payments: nil,
          nz_bank_account_becs_debit_payments: nil,
          oxxo_payments: nil,
          p24_payments: nil,
          pay_by_bank_payments: nil,
          payco_payments: nil,
          paynow_payments: nil,
          pix_payments: nil,
          promptpay_payments: nil,
          revolut_pay_payments: nil,
          samsung_pay_payments: nil,
          satispay_payments: nil,
          sepa_bank_transfer_payments: nil,
          sepa_debit_payments: nil,
          sofort_payments: nil,
          swish_payments: nil,
          tax_reporting_us_1099_k: nil,
          tax_reporting_us_1099_misc: nil,
          transfers: nil,
          treasury: nil,
          twint_payments: nil,
          us_bank_account_ach_payments: nil,
          us_bank_transfer_payments: nil,
          zip_payments: nil
        ); end
      end
      class Card < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        def object; end
        sig { params(_object: String).returns(String) }
        def object=(_object); end
        # Attribute for param field address_city
        sig { returns(T.nilable(String)) }
        def address_city; end
        sig { params(_address_city: T.nilable(String)).returns(T.nilable(String)) }
        def address_city=(_address_city); end
        # Attribute for param field address_country
        sig { returns(T.nilable(String)) }
        def address_country; end
        sig { params(_address_country: T.nilable(String)).returns(T.nilable(String)) }
        def address_country=(_address_country); end
        # Attribute for param field address_line1
        sig { returns(T.nilable(String)) }
        def address_line1; end
        sig { params(_address_line1: T.nilable(String)).returns(T.nilable(String)) }
        def address_line1=(_address_line1); end
        # Attribute for param field address_line2
        sig { returns(T.nilable(String)) }
        def address_line2; end
        sig { params(_address_line2: T.nilable(String)).returns(T.nilable(String)) }
        def address_line2=(_address_line2); end
        # Attribute for param field address_state
        sig { returns(T.nilable(String)) }
        def address_state; end
        sig { params(_address_state: T.nilable(String)).returns(T.nilable(String)) }
        def address_state=(_address_state); end
        # Attribute for param field address_zip
        sig { returns(T.nilable(String)) }
        def address_zip; end
        sig { params(_address_zip: T.nilable(String)).returns(T.nilable(String)) }
        def address_zip=(_address_zip); end
        # Attribute for param field currency
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # Attribute for param field cvc
        sig { returns(T.nilable(String)) }
        def cvc; end
        sig { params(_cvc: T.nilable(String)).returns(T.nilable(String)) }
        def cvc=(_cvc); end
        # Attribute for param field exp_month
        sig { returns(Integer) }
        def exp_month; end
        sig { params(_exp_month: Integer).returns(Integer) }
        def exp_month=(_exp_month); end
        # Attribute for param field exp_year
        sig { returns(Integer) }
        def exp_year; end
        sig { params(_exp_year: Integer).returns(Integer) }
        def exp_year=(_exp_year); end
        # Attribute for param field name
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Attribute for param field number
        sig { returns(String) }
        def number; end
        sig { params(_number: String).returns(String) }
        def number=(_number); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Attribute for param field default_for_currency
        sig { returns(T.nilable(T::Boolean)) }
        def default_for_currency; end
        sig { params(_default_for_currency: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def default_for_currency=(_default_for_currency); end
        sig {
          params(object: String, address_city: T.nilable(String), address_country: T.nilable(String), address_line1: T.nilable(String), address_line2: T.nilable(String), address_state: T.nilable(String), address_zip: T.nilable(String), currency: T.nilable(String), cvc: T.nilable(String), exp_month: Integer, exp_year: Integer, name: T.nilable(String), number: String, metadata: T.nilable(T::Hash[String, String]), default_for_currency: T.nilable(T::Boolean)).void
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
        def object; end
        sig { params(_object: String).returns(String) }
        def object=(_object); end
        # Attribute for param field currency
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # Attribute for param field token
        sig { returns(String) }
        def token; end
        sig { params(_token: String).returns(String) }
        def token=(_token); end
        sig { params(object: String, currency: T.nilable(String), token: String).void }
        def initialize(object: nil, currency: nil, token: nil); end
      end
      class Company < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
          sig { returns(T.nilable(Integer)) }
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the directorship declaration attestation was made.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The user agent of the browser from which the directorship declaration attestation was made.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class OwnershipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the beneficial owner attestation was made.
          sig { returns(T.nilable(Integer)) }
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the beneficial owner attestation was made.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The user agent of the browser from which the beneficial owner attestation was made.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        class RegistrationDate < Stripe::RequestParams
          # The day of registration, between 1 and 31.
          sig { returns(Integer) }
          def day; end
          sig { params(_day: Integer).returns(Integer) }
          def day=(_day); end
          # The month of registration, between 1 and 12.
          sig { returns(Integer) }
          def month; end
          sig { params(_month: Integer).returns(Integer) }
          def month=(_month); end
          # The four-digit year of registration.
          sig { returns(Integer) }
          def year; end
          sig { params(_year: Integer).returns(Integer) }
          def year=(_year); end
          sig { params(day: Integer, month: Integer, year: Integer).void }
          def initialize(day: nil, month: nil, year: nil); end
        end
        class Verification < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def back; end
            sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
            def back=(_back); end
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def front; end
            sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
            def front=(_front); end
            sig { params(back: T.nilable(String), front: T.nilable(String)).void }
            def initialize(back: nil, front: nil); end
          end
          # A document verifying the business.
          sig {
            returns(T.nilable(::Stripe::AccountService::CreateParams::Company::Verification::Document))
           }
          def document; end
          sig {
            params(_document: T.nilable(::Stripe::AccountService::CreateParams::Company::Verification::Document)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company::Verification::Document))
           }
          def document=(_document); end
          sig {
            params(document: T.nilable(::Stripe::AccountService::CreateParams::Company::Verification::Document)).void
           }
          def initialize(document: nil); end
        end
        # The company's primary address.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Company::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::AccountService::CreateParams::Company::Address)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company::Address))
         }
        def address=(_address); end
        # The Kana variation of the company's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKana)) }
        def address_kana; end
        sig {
          params(_address_kana: T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKana)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKana))
         }
        def address_kana=(_address_kana); end
        # The Kanji variation of the company's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKanji)) }
        def address_kanji; end
        sig {
          params(_address_kanji: T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKanji)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKanji))
         }
        def address_kanji=(_address_kanji); end
        # Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
        sig { returns(T.nilable(T::Boolean)) }
        def directors_provided; end
        sig { params(_directors_provided: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def directors_provided=(_directors_provided); end
        # This hash is used to attest that the directors information provided to Stripe is both current and correct.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Company::DirectorshipDeclaration))
         }
        def directorship_declaration; end
        sig {
          params(_directorship_declaration: T.nilable(::Stripe::AccountService::CreateParams::Company::DirectorshipDeclaration)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company::DirectorshipDeclaration))
         }
        def directorship_declaration=(_directorship_declaration); end
        # Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](/api/persons) for accounts with a `relationship.executive` requirement.
        sig { returns(T.nilable(T::Boolean)) }
        def executives_provided; end
        sig { params(_executives_provided: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def executives_provided=(_executives_provided); end
        # The export license ID number of the company, also referred as Import Export Code (India only).
        sig { returns(T.nilable(String)) }
        def export_license_id; end
        sig { params(_export_license_id: T.nilable(String)).returns(T.nilable(String)) }
        def export_license_id=(_export_license_id); end
        # The purpose code to use for export transactions (India only).
        sig { returns(T.nilable(String)) }
        def export_purpose_code; end
        sig { params(_export_purpose_code: T.nilable(String)).returns(T.nilable(String)) }
        def export_purpose_code=(_export_purpose_code); end
        # The company's legal name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The Kana variation of the company's legal name (Japan only).
        sig { returns(T.nilable(String)) }
        def name_kana; end
        sig { params(_name_kana: T.nilable(String)).returns(T.nilable(String)) }
        def name_kana=(_name_kana); end
        # The Kanji variation of the company's legal name (Japan only).
        sig { returns(T.nilable(String)) }
        def name_kanji; end
        sig { params(_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
        def name_kanji=(_name_kanji); end
        # Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](/api/persons) for accounts with a `relationship.owner` requirement.
        sig { returns(T.nilable(T::Boolean)) }
        def owners_provided; end
        sig { params(_owners_provided: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def owners_provided=(_owners_provided); end
        # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Company::OwnershipDeclaration))
         }
        def ownership_declaration; end
        sig {
          params(_ownership_declaration: T.nilable(::Stripe::AccountService::CreateParams::Company::OwnershipDeclaration)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company::OwnershipDeclaration))
         }
        def ownership_declaration=(_ownership_declaration); end
        # This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details.
        sig { returns(T.nilable(T.any(String, String))) }
        def ownership_exemption_reason; end
        sig {
          params(_ownership_exemption_reason: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
         }
        def ownership_exemption_reason=(_ownership_exemption_reason); end
        # The company's phone number (used for verification).
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # When the business was incorporated or registered.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Company::RegistrationDate)))
         }
        def registration_date; end
        sig {
          params(_registration_date: T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Company::RegistrationDate))).returns(T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Company::RegistrationDate)))
         }
        def registration_date=(_registration_date); end
        # The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong).
        sig { returns(T.nilable(String)) }
        def registration_number; end
        sig { params(_registration_number: T.nilable(String)).returns(T.nilable(String)) }
        def registration_number=(_registration_number); end
        # The category identifying the legal structure of the company or legal entity. See [Business structure](/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value.
        sig { returns(T.nilable(T.any(String, String))) }
        def structure; end
        sig {
          params(_structure: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
         }
        def structure=(_structure); end
        # The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.)
        sig { returns(T.nilable(String)) }
        def tax_id; end
        sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
        def tax_id=(_tax_id); end
        # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
        sig { returns(T.nilable(String)) }
        def tax_id_registrar; end
        sig { params(_tax_id_registrar: T.nilable(String)).returns(T.nilable(String)) }
        def tax_id_registrar=(_tax_id_registrar); end
        # The VAT number of the company.
        sig { returns(T.nilable(String)) }
        def vat_id; end
        sig { params(_vat_id: T.nilable(String)).returns(T.nilable(String)) }
        def vat_id=(_vat_id); end
        # Information on the verification state of the company.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Company::Verification)) }
        def verification; end
        sig {
          params(_verification: T.nilable(::Stripe::AccountService::CreateParams::Company::Verification)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company::Verification))
         }
        def verification=(_verification); end
        sig {
          params(address: T.nilable(::Stripe::AccountService::CreateParams::Company::Address), address_kana: T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKana), address_kanji: T.nilable(::Stripe::AccountService::CreateParams::Company::AddressKanji), directors_provided: T.nilable(T::Boolean), directorship_declaration: T.nilable(::Stripe::AccountService::CreateParams::Company::DirectorshipDeclaration), executives_provided: T.nilable(T::Boolean), export_license_id: T.nilable(String), export_purpose_code: T.nilable(String), name: T.nilable(String), name_kana: T.nilable(String), name_kanji: T.nilable(String), owners_provided: T.nilable(T::Boolean), ownership_declaration: T.nilable(::Stripe::AccountService::CreateParams::Company::OwnershipDeclaration), ownership_exemption_reason: T.nilable(T.any(String, String)), phone: T.nilable(String), registration_date: T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Company::RegistrationDate)), registration_number: T.nilable(String), structure: T.nilable(T.any(String, String)), tax_id: T.nilable(String), tax_id_registrar: T.nilable(String), vat_id: T.nilable(String), verification: T.nilable(::Stripe::AccountService::CreateParams::Company::Verification)).void
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
          registration_date: nil,
          registration_number: nil,
          structure: nil,
          tax_id: nil,
          tax_id_registrar: nil,
          vat_id: nil,
          verification: nil
        ); end
      end
      class Controller < Stripe::RequestParams
        class Fees < Stripe::RequestParams
          # A value indicating the responsible payer of Stripe fees on this account. Defaults to `account`. Learn more about [fee behavior on connected accounts](https://docs.stripe.com/connect/direct-charges-fee-payer-behavior).
          sig { returns(T.nilable(String)) }
          def payer; end
          sig { params(_payer: T.nilable(String)).returns(T.nilable(String)) }
          def payer=(_payer); end
          sig { params(payer: T.nilable(String)).void }
          def initialize(payer: nil); end
        end
        class Losses < Stripe::RequestParams
          # A value indicating who is liable when this account can't pay back negative balances resulting from payments. Defaults to `stripe`.
          sig { returns(T.nilable(String)) }
          def payments; end
          sig { params(_payments: T.nilable(String)).returns(T.nilable(String)) }
          def payments=(_payments); end
          sig { params(payments: T.nilable(String)).void }
          def initialize(payments: nil); end
        end
        class StripeDashboard < Stripe::RequestParams
          # Whether this account should have access to the full Stripe Dashboard (`full`), to the Express Dashboard (`express`), or to no Stripe-hosted dashboard (`none`). Defaults to `full`.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig { params(type: T.nilable(String)).void }
          def initialize(type: nil); end
        end
        # A hash of configuration for who pays Stripe fees for product usage on this account.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Controller::Fees)) }
        def fees; end
        sig {
          params(_fees: T.nilable(::Stripe::AccountService::CreateParams::Controller::Fees)).returns(T.nilable(::Stripe::AccountService::CreateParams::Controller::Fees))
         }
        def fees=(_fees); end
        # A hash of configuration for products that have negative balance liability, and whether Stripe or a Connect application is responsible for them.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Controller::Losses)) }
        def losses; end
        sig {
          params(_losses: T.nilable(::Stripe::AccountService::CreateParams::Controller::Losses)).returns(T.nilable(::Stripe::AccountService::CreateParams::Controller::Losses))
         }
        def losses=(_losses); end
        # A value indicating responsibility for collecting updated information when requirements on the account are due or change. Defaults to `stripe`.
        sig { returns(T.nilable(String)) }
        def requirement_collection; end
        sig { params(_requirement_collection: T.nilable(String)).returns(T.nilable(String)) }
        def requirement_collection=(_requirement_collection); end
        # A hash of configuration for Stripe-hosted dashboards.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Controller::StripeDashboard))
         }
        def stripe_dashboard; end
        sig {
          params(_stripe_dashboard: T.nilable(::Stripe::AccountService::CreateParams::Controller::StripeDashboard)).returns(T.nilable(::Stripe::AccountService::CreateParams::Controller::StripeDashboard))
         }
        def stripe_dashboard=(_stripe_dashboard); end
        sig {
          params(fees: T.nilable(::Stripe::AccountService::CreateParams::Controller::Fees), losses: T.nilable(::Stripe::AccountService::CreateParams::Controller::Losses), requirement_collection: T.nilable(String), stripe_dashboard: T.nilable(::Stripe::AccountService::CreateParams::Controller::StripeDashboard)).void
         }
        def initialize(
          fees: nil,
          losses: nil,
          requirement_collection: nil,
          stripe_dashboard: nil
        ); end
      end
      class Documents < Stripe::RequestParams
        class BankAccountOwnershipVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyLicense < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyMemorandumOfAssociation < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyMinisterialDecree < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyRegistrationVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class CompanyTaxIdVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class ProofOfAddress < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class ProofOfRegistration < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::BankAccountOwnershipVerification))
         }
        def bank_account_ownership_verification; end
        sig {
          params(_bank_account_ownership_verification: T.nilable(::Stripe::AccountService::CreateParams::Documents::BankAccountOwnershipVerification)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::BankAccountOwnershipVerification))
         }
        def bank_account_ownership_verification=(_bank_account_ownership_verification); end
        # One or more documents that demonstrate proof of a company's license to operate.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyLicense))
         }
        def company_license; end
        sig {
          params(_company_license: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyLicense)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyLicense))
         }
        def company_license=(_company_license); end
        # One or more documents showing the company's Memorandum of Association.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMemorandumOfAssociation))
         }
        def company_memorandum_of_association; end
        sig {
          params(_company_memorandum_of_association: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMemorandumOfAssociation)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMemorandumOfAssociation))
         }
        def company_memorandum_of_association=(_company_memorandum_of_association); end
        # (Certain countries only) One or more documents showing the ministerial decree legalizing the company's establishment.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMinisterialDecree))
         }
        def company_ministerial_decree; end
        sig {
          params(_company_ministerial_decree: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMinisterialDecree)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMinisterialDecree))
         }
        def company_ministerial_decree=(_company_ministerial_decree); end
        # One or more documents that demonstrate proof of a company's registration with the appropriate local authorities.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyRegistrationVerification))
         }
        def company_registration_verification; end
        sig {
          params(_company_registration_verification: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyRegistrationVerification)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyRegistrationVerification))
         }
        def company_registration_verification=(_company_registration_verification); end
        # One or more documents that demonstrate proof of a company's tax ID.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyTaxIdVerification))
         }
        def company_tax_id_verification; end
        sig {
          params(_company_tax_id_verification: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyTaxIdVerification)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyTaxIdVerification))
         }
        def company_tax_id_verification=(_company_tax_id_verification); end
        # One or more documents that demonstrate proof of address.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfAddress))
         }
        def proof_of_address; end
        sig {
          params(_proof_of_address: T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfAddress)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfAddress))
         }
        def proof_of_address=(_proof_of_address); end
        # One or more documents showing the company’s proof of registration with the national business registry.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfRegistration))
         }
        def proof_of_registration; end
        sig {
          params(_proof_of_registration: T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfRegistration)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfRegistration))
         }
        def proof_of_registration=(_proof_of_registration); end
        # One or more documents that demonstrate proof of ultimate beneficial ownership.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfUltimateBeneficialOwnership))
         }
        def proof_of_ultimate_beneficial_ownership; end
        sig {
          params(_proof_of_ultimate_beneficial_ownership: T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfUltimateBeneficialOwnership)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfUltimateBeneficialOwnership))
         }
        def proof_of_ultimate_beneficial_ownership=(_proof_of_ultimate_beneficial_ownership); end
        sig {
          params(bank_account_ownership_verification: T.nilable(::Stripe::AccountService::CreateParams::Documents::BankAccountOwnershipVerification), company_license: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyLicense), company_memorandum_of_association: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMemorandumOfAssociation), company_ministerial_decree: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyMinisterialDecree), company_registration_verification: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyRegistrationVerification), company_tax_id_verification: T.nilable(::Stripe::AccountService::CreateParams::Documents::CompanyTaxIdVerification), proof_of_address: T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfAddress), proof_of_registration: T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfRegistration), proof_of_ultimate_beneficial_ownership: T.nilable(::Stripe::AccountService::CreateParams::Documents::ProofOfUltimateBeneficialOwnership)).void
         }
        def initialize(
          bank_account_ownership_verification: nil,
          company_license: nil,
          company_memorandum_of_association: nil,
          company_ministerial_decree: nil,
          company_registration_verification: nil,
          company_tax_id_verification: nil,
          proof_of_address: nil,
          proof_of_registration: nil,
          proof_of_ultimate_beneficial_ownership: nil
        ); end
      end
      class Groups < Stripe::RequestParams
        # The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://stripe.com/docs/connect/platform-pricing-tools) for details.
        sig { returns(T.nilable(String)) }
        def payments_pricing; end
        sig { params(_payments_pricing: T.nilable(String)).returns(T.nilable(String)) }
        def payments_pricing=(_payments_pricing); end
        sig { params(payments_pricing: T.nilable(String)).void }
        def initialize(payments_pricing: nil); end
      end
      class Individual < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        class AddressKana < Stripe::RequestParams
          # City or ward.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Block or building number.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Building details.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # Postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # Prefecture.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          def town; end
          sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
          def town=(_town); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
        class RegisteredAddress < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
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
        class Relationship < Stripe::RequestParams
          # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
          sig { returns(T.nilable(T::Boolean)) }
          def director; end
          sig { params(_director: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def director=(_director); end
          # Whether the person has significant responsibility to control, manage, or direct the organization.
          sig { returns(T.nilable(T::Boolean)) }
          def executive; end
          sig { params(_executive: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def executive=(_executive); end
          # Whether the person is an owner of the account’s legal entity.
          sig { returns(T.nilable(T::Boolean)) }
          def owner; end
          sig { params(_owner: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def owner=(_owner); end
          # The percent owned by the person of the account's legal entity.
          sig { returns(T.nilable(T.any(String, Float))) }
          def percent_ownership; end
          sig {
            params(_percent_ownership: T.nilable(T.any(String, Float))).returns(T.nilable(T.any(String, Float)))
           }
          def percent_ownership=(_percent_ownership); end
          # The person's title (e.g., CEO, Support Engineer).
          sig { returns(T.nilable(String)) }
          def title; end
          sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
          def title=(_title); end
          sig {
            params(director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(T.any(String, Float)), title: T.nilable(String)).void
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
            sig { returns(T.nilable(String)) }
            def back; end
            sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
            def back=(_back); end
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def front; end
            sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
            def front=(_front); end
            sig { params(back: T.nilable(String), front: T.nilable(String)).void }
            def initialize(back: nil, front: nil); end
          end
          class Document < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def back; end
            sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
            def back=(_back); end
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            sig { returns(T.nilable(String)) }
            def front; end
            sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
            def front=(_front); end
            sig { params(back: T.nilable(String), front: T.nilable(String)).void }
            def initialize(back: nil, front: nil); end
          end
          # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
          sig {
            returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::AdditionalDocument))
           }
          def additional_document; end
          sig {
            params(_additional_document: T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::AdditionalDocument)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::AdditionalDocument))
           }
          def additional_document=(_additional_document); end
          # An identifying document, either a passport or local ID card.
          sig {
            returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::Document))
           }
          def document; end
          sig {
            params(_document: T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::Document)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::Document))
           }
          def document=(_document); end
          sig {
            params(additional_document: T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::AdditionalDocument), document: T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification::Document)).void
           }
          def initialize(additional_document: nil, document: nil); end
        end
        # The individual's primary address.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::AccountService::CreateParams::Individual::Address)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Address))
         }
        def address=(_address); end
        # The Kana variation of the individual's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKana)) }
        def address_kana; end
        sig {
          params(_address_kana: T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKana)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKana))
         }
        def address_kana=(_address_kana); end
        # The Kanji variation of the individual's primary address (Japan only).
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKanji)) }
        def address_kanji; end
        sig {
          params(_address_kanji: T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKanji)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKanji))
         }
        def address_kanji=(_address_kanji); end
        # The individual's date of birth.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Individual::Dob)))
         }
        def dob; end
        sig {
          params(_dob: T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Individual::Dob))).returns(T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Individual::Dob)))
         }
        def dob=(_dob); end
        # The individual's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # The individual's first name.
        sig { returns(T.nilable(String)) }
        def first_name; end
        sig { params(_first_name: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_first_name); end
        # The Kana variation of the individual's first name (Japan only).
        sig { returns(T.nilable(String)) }
        def first_name_kana; end
        sig { params(_first_name_kana: T.nilable(String)).returns(T.nilable(String)) }
        def first_name_kana=(_first_name_kana); end
        # The Kanji variation of the individual's first name (Japan only).
        sig { returns(T.nilable(String)) }
        def first_name_kanji; end
        sig { params(_first_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
        def first_name_kanji=(_first_name_kanji); end
        # A list of alternate names or aliases that the individual is known by.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def full_name_aliases; end
        sig {
          params(_full_name_aliases: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def full_name_aliases=(_full_name_aliases); end
        # The individual's gender
        sig { returns(T.nilable(String)) }
        def gender; end
        sig { params(_gender: T.nilable(String)).returns(T.nilable(String)) }
        def gender=(_gender); end
        # The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(T.nilable(String)) }
        def id_number; end
        sig { params(_id_number: T.nilable(String)).returns(T.nilable(String)) }
        def id_number=(_id_number); end
        # The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        sig { returns(T.nilable(String)) }
        def id_number_secondary; end
        sig { params(_id_number_secondary: T.nilable(String)).returns(T.nilable(String)) }
        def id_number_secondary=(_id_number_secondary); end
        # The individual's last name.
        sig { returns(T.nilable(String)) }
        def last_name; end
        sig { params(_last_name: T.nilable(String)).returns(T.nilable(String)) }
        def last_name=(_last_name); end
        # The Kana variation of the individual's last name (Japan only).
        sig { returns(T.nilable(String)) }
        def last_name_kana; end
        sig { params(_last_name_kana: T.nilable(String)).returns(T.nilable(String)) }
        def last_name_kana=(_last_name_kana); end
        # The Kanji variation of the individual's last name (Japan only).
        sig { returns(T.nilable(String)) }
        def last_name_kanji; end
        sig { params(_last_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
        def last_name_kanji=(_last_name_kanji); end
        # The individual's maiden name.
        sig { returns(T.nilable(String)) }
        def maiden_name; end
        sig { params(_maiden_name: T.nilable(String)).returns(T.nilable(String)) }
        def maiden_name=(_maiden_name); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # The individual's phone number.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
        sig { returns(T.nilable(String)) }
        def political_exposure; end
        sig { params(_political_exposure: T.nilable(String)).returns(T.nilable(String)) }
        def political_exposure=(_political_exposure); end
        # The individual's registered address.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::RegisteredAddress))
         }
        def registered_address; end
        sig {
          params(_registered_address: T.nilable(::Stripe::AccountService::CreateParams::Individual::RegisteredAddress)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::RegisteredAddress))
         }
        def registered_address=(_registered_address); end
        # Describes the person’s relationship to the account.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Relationship)) }
        def relationship; end
        sig {
          params(_relationship: T.nilable(::Stripe::AccountService::CreateParams::Individual::Relationship)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Relationship))
         }
        def relationship=(_relationship); end
        # The last four digits of the individual's Social Security Number (U.S. only).
        sig { returns(T.nilable(String)) }
        def ssn_last_4; end
        sig { params(_ssn_last_4: T.nilable(String)).returns(T.nilable(String)) }
        def ssn_last_4=(_ssn_last_4); end
        # The individual's verification document information.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification)) }
        def verification; end
        sig {
          params(_verification: T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification))
         }
        def verification=(_verification); end
        sig {
          params(address: T.nilable(::Stripe::AccountService::CreateParams::Individual::Address), address_kana: T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKana), address_kanji: T.nilable(::Stripe::AccountService::CreateParams::Individual::AddressKanji), dob: T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::Individual::Dob)), email: T.nilable(String), first_name: T.nilable(String), first_name_kana: T.nilable(String), first_name_kanji: T.nilable(String), full_name_aliases: T.nilable(T.any(String, T::Array[String])), gender: T.nilable(String), id_number: T.nilable(String), id_number_secondary: T.nilable(String), last_name: T.nilable(String), last_name_kana: T.nilable(String), last_name_kanji: T.nilable(String), maiden_name: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), phone: T.nilable(String), political_exposure: T.nilable(String), registered_address: T.nilable(::Stripe::AccountService::CreateParams::Individual::RegisteredAddress), relationship: T.nilable(::Stripe::AccountService::CreateParams::Individual::Relationship), ssn_last_4: T.nilable(String), verification: T.nilable(::Stripe::AccountService::CreateParams::Individual::Verification)).void
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
      class Settings < Stripe::RequestParams
        class BacsDebitPayments < Stripe::RequestParams
          # The Bacs Direct Debit Display Name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
          sig { returns(T.nilable(String)) }
          def display_name; end
          sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
          def display_name=(_display_name); end
          sig { params(display_name: T.nilable(String)).void }
          def initialize(display_name: nil); end
        end
        class Branding < Stripe::RequestParams
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
          sig { returns(T.nilable(String)) }
          def icon; end
          sig { params(_icon: T.nilable(String)).returns(T.nilable(String)) }
          def icon=(_icon); end
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
          sig { returns(T.nilable(String)) }
          def logo; end
          sig { params(_logo: T.nilable(String)).returns(T.nilable(String)) }
          def logo=(_logo); end
          # A CSS hex color value representing the primary branding color for this account.
          sig { returns(T.nilable(String)) }
          def primary_color; end
          sig { params(_primary_color: T.nilable(String)).returns(T.nilable(String)) }
          def primary_color=(_primary_color); end
          # A CSS hex color value representing the secondary branding color for this account.
          sig { returns(T.nilable(String)) }
          def secondary_color; end
          sig { params(_secondary_color: T.nilable(String)).returns(T.nilable(String)) }
          def secondary_color=(_secondary_color); end
          sig {
            params(icon: T.nilable(String), logo: T.nilable(String), primary_color: T.nilable(String), secondary_color: T.nilable(String)).void
           }
          def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil); end
        end
        class CardIssuing < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(T.nilable(Integer)) }
            def date; end
            sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def date=(_date); end
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def ip; end
            sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
            def ip=(_ip); end
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the [Stripe Issuing Terms and Disclosures](/issuing/connect/tos_acceptance).
          sig {
            returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing::TosAcceptance))
           }
          def tos_acceptance; end
          sig {
            params(_tos_acceptance: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing::TosAcceptance)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing::TosAcceptance))
           }
          def tos_acceptance=(_tos_acceptance); end
          sig {
            params(tos_acceptance: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing::TosAcceptance)).void
           }
          def initialize(tos_acceptance: nil); end
        end
        class CardPayments < Stripe::RequestParams
          class DeclineOn < Stripe::RequestParams
            # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
            sig { returns(T.nilable(T::Boolean)) }
            def avs_failure; end
            sig { params(_avs_failure: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def avs_failure=(_avs_failure); end
            # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
            sig { returns(T.nilable(T::Boolean)) }
            def cvc_failure; end
            sig { params(_cvc_failure: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def cvc_failure=(_cvc_failure); end
            sig {
              params(avs_failure: T.nilable(T::Boolean), cvc_failure: T.nilable(T::Boolean)).void
             }
            def initialize(avs_failure: nil, cvc_failure: nil); end
          end
          # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
          sig {
            returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments::DeclineOn))
           }
          def decline_on; end
          sig {
            params(_decline_on: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments::DeclineOn)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments::DeclineOn))
           }
          def decline_on=(_decline_on); end
          # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_prefix; end
          sig { params(_statement_descriptor_prefix: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_prefix=(_statement_descriptor_prefix); end
          # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_prefix_kana; end
          sig {
            params(_statement_descriptor_prefix_kana: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_prefix_kana=(_statement_descriptor_prefix_kana); end
          # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_prefix_kanji; end
          sig {
            params(_statement_descriptor_prefix_kanji: T.nilable(String)).returns(T.nilable(String))
           }
          def statement_descriptor_prefix_kanji=(_statement_descriptor_prefix_kanji); end
          sig {
            params(decline_on: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments::DeclineOn), statement_descriptor_prefix: T.nilable(String), statement_descriptor_prefix_kana: T.nilable(String), statement_descriptor_prefix_kanji: T.nilable(String)).void
           }
          def initialize(
            decline_on: nil,
            statement_descriptor_prefix: nil,
            statement_descriptor_prefix_kana: nil,
            statement_descriptor_prefix_kanji: nil
          ); end
        end
        class Invoices < Stripe::RequestParams
          # Whether payment methods should be saved when a payment is completed for a one-time invoices on a hosted invoice page.
          sig { returns(T.nilable(String)) }
          def hosted_payment_method_save; end
          sig { params(_hosted_payment_method_save: T.nilable(String)).returns(T.nilable(String)) }
          def hosted_payment_method_save=(_hosted_payment_method_save); end
          sig { params(hosted_payment_method_save: T.nilable(String)).void }
          def initialize(hosted_payment_method_save: nil); end
        end
        class Payments < Stripe::RequestParams
          # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don't set a `statement_descriptor_prefix`, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the `statement_descriptor` text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the [account settings documentation](https://docs.stripe.com/get-started/account/statement-descriptors).
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          # The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(T.nilable(String)) }
          def statement_descriptor_kana; end
          sig { params(_statement_descriptor_kana: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_kana=(_statement_descriptor_kana); end
          # The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          sig { returns(T.nilable(String)) }
          def statement_descriptor_kanji; end
          sig { params(_statement_descriptor_kanji: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_kanji=(_statement_descriptor_kanji); end
          sig {
            params(statement_descriptor: T.nilable(String), statement_descriptor_kana: T.nilable(String), statement_descriptor_kanji: T.nilable(String)).void
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
            sig { returns(T.nilable(T.any(String, Integer))) }
            def delay_days; end
            sig {
              params(_delay_days: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
             }
            def delay_days=(_delay_days); end
            # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
            sig { returns(T.nilable(String)) }
            def interval; end
            sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
            def interval=(_interval); end
            # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
            sig { returns(T.nilable(Integer)) }
            def monthly_anchor; end
            sig { params(_monthly_anchor: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def monthly_anchor=(_monthly_anchor); end
            # The days of the month when available funds are paid out, specified as an array of numbers between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly` and `monthly_anchor` is not set.
            sig { returns(T.nilable(T::Array[Integer])) }
            def monthly_payout_days; end
            sig {
              params(_monthly_payout_days: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer]))
             }
            def monthly_payout_days=(_monthly_payout_days); end
            # The day of the week when available funds are paid out, specified as `monday`, `tuesday`, etc. (required and applicable only if `interval` is `weekly`.)
            sig { returns(T.nilable(String)) }
            def weekly_anchor; end
            sig { params(_weekly_anchor: T.nilable(String)).returns(T.nilable(String)) }
            def weekly_anchor=(_weekly_anchor); end
            # The days of the week when available funds are paid out, specified as an array, e.g., [`monday`, `tuesday`]. (required and applicable only if `interval` is `weekly` and `weekly_anchor` is not set.)
            sig { returns(T.nilable(T::Array[String])) }
            def weekly_payout_days; end
            sig {
              params(_weekly_payout_days: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def weekly_payout_days=(_weekly_payout_days); end
            sig {
              params(delay_days: T.nilable(T.any(String, Integer)), interval: T.nilable(String), monthly_anchor: T.nilable(Integer), monthly_payout_days: T.nilable(T::Array[Integer]), weekly_anchor: T.nilable(String), weekly_payout_days: T.nilable(T::Array[String])).void
             }
            def initialize(
              delay_days: nil,
              interval: nil,
              monthly_anchor: nil,
              monthly_payout_days: nil,
              weekly_anchor: nil,
              weekly_payout_days: nil
            ); end
          end
          # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
          sig { returns(T.nilable(T::Boolean)) }
          def debit_negative_balances; end
          sig {
            params(_debit_negative_balances: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def debit_negative_balances=(_debit_negative_balances); end
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          sig {
            returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts::Schedule))
           }
          def schedule; end
          sig {
            params(_schedule: T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts::Schedule)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts::Schedule))
           }
          def schedule=(_schedule); end
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          sig {
            params(debit_negative_balances: T.nilable(T::Boolean), schedule: T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts::Schedule), statement_descriptor: T.nilable(String)).void
           }
          def initialize(
            debit_negative_balances: nil,
            schedule: nil,
            statement_descriptor: nil
          ); end
        end
        class Treasury < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            sig { returns(T.nilable(Integer)) }
            def date; end
            sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def date=(_date); end
            # The IP address from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def ip; end
            sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
            def ip=(_ip); end
            # The user agent of the browser from which the account representative accepted the service agreement.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # Details on the account's acceptance of the Stripe Treasury Services Agreement.
          sig {
            returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury::TosAcceptance))
           }
          def tos_acceptance; end
          sig {
            params(_tos_acceptance: T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury::TosAcceptance)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury::TosAcceptance))
           }
          def tos_acceptance=(_tos_acceptance); end
          sig {
            params(tos_acceptance: T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury::TosAcceptance)).void
           }
          def initialize(tos_acceptance: nil); end
        end
        # Settings specific to Bacs Direct Debit.
        sig {
          returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::BacsDebitPayments))
         }
        def bacs_debit_payments; end
        sig {
          params(_bacs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Settings::BacsDebitPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::BacsDebitPayments))
         }
        def bacs_debit_payments=(_bacs_debit_payments); end
        # Settings used to apply the account's branding to email receipts, invoices, Checkout, and other products.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Branding)) }
        def branding; end
        sig {
          params(_branding: T.nilable(::Stripe::AccountService::CreateParams::Settings::Branding)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Branding))
         }
        def branding=(_branding); end
        # Settings specific to the account's use of the Card Issuing product.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing)) }
        def card_issuing; end
        sig {
          params(_card_issuing: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing))
         }
        def card_issuing=(_card_issuing); end
        # Settings specific to card charging on the account.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments)) }
        def card_payments; end
        sig {
          params(_card_payments: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments))
         }
        def card_payments=(_card_payments); end
        # Settings specific to the account’s use of Invoices.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Invoices)) }
        def invoices; end
        sig {
          params(_invoices: T.nilable(::Stripe::AccountService::CreateParams::Settings::Invoices)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Invoices))
         }
        def invoices=(_invoices); end
        # Settings that apply across payment methods for charging on the account.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Payments)) }
        def payments; end
        sig {
          params(_payments: T.nilable(::Stripe::AccountService::CreateParams::Settings::Payments)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Payments))
         }
        def payments=(_payments); end
        # Settings specific to the account's payouts.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts)) }
        def payouts; end
        sig {
          params(_payouts: T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts))
         }
        def payouts=(_payouts); end
        # Settings specific to the account's Treasury FinancialAccounts.
        sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury)) }
        def treasury; end
        sig {
          params(_treasury: T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury))
         }
        def treasury=(_treasury); end
        sig {
          params(bacs_debit_payments: T.nilable(::Stripe::AccountService::CreateParams::Settings::BacsDebitPayments), branding: T.nilable(::Stripe::AccountService::CreateParams::Settings::Branding), card_issuing: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardIssuing), card_payments: T.nilable(::Stripe::AccountService::CreateParams::Settings::CardPayments), invoices: T.nilable(::Stripe::AccountService::CreateParams::Settings::Invoices), payments: T.nilable(::Stripe::AccountService::CreateParams::Settings::Payments), payouts: T.nilable(::Stripe::AccountService::CreateParams::Settings::Payouts), treasury: T.nilable(::Stripe::AccountService::CreateParams::Settings::Treasury)).void
         }
        def initialize(
          bacs_debit_payments: nil,
          branding: nil,
          card_issuing: nil,
          card_payments: nil,
          invoices: nil,
          payments: nil,
          payouts: nil,
          treasury: nil
        ); end
      end
      class TosAcceptance < Stripe::RequestParams
        # The Unix timestamp marking when the account representative accepted their service agreement.
        sig { returns(T.nilable(Integer)) }
        def date; end
        sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def date=(_date); end
        # The IP address from which the account representative accepted their service agreement.
        sig { returns(T.nilable(String)) }
        def ip; end
        sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
        def ip=(_ip); end
        # The user's service agreement type.
        sig { returns(T.nilable(String)) }
        def service_agreement; end
        sig { params(_service_agreement: T.nilable(String)).returns(T.nilable(String)) }
        def service_agreement=(_service_agreement); end
        # The user agent of the browser from which the account representative accepted their service agreement.
        sig { returns(T.nilable(String)) }
        def user_agent; end
        sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
        def user_agent=(_user_agent); end
        sig {
          params(date: T.nilable(Integer), ip: T.nilable(String), service_agreement: T.nilable(String), user_agent: T.nilable(String)).void
         }
        def initialize(date: nil, ip: nil, service_agreement: nil, user_agent: nil); end
      end
      # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
      sig { returns(T.nilable(String)) }
      def account_token; end
      sig { params(_account_token: T.nilable(String)).returns(T.nilable(String)) }
      def account_token=(_account_token); end
      # Business information about the account.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile)) }
      def business_profile; end
      sig {
        params(_business_profile: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile)).returns(T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile))
       }
      def business_profile=(_business_profile); end
      # The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(T.nilable(String)) }
      def business_type; end
      sig { params(_business_type: T.nilable(String)).returns(T.nilable(String)) }
      def business_type=(_business_type); end
      # Each key of the dictionary represents a capability, and each capability
      # maps to its settings (for example, whether it has been requested or not). Each
      # capability is inactive until you have provided its specific
      # requirements and Stripe has verified them. An account might have some
      # of its requested capabilities be active and some be inactive.
      #
      # Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)
      # is `none`, which includes Custom accounts.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities)) }
      def capabilities; end
      sig {
        params(_capabilities: T.nilable(::Stripe::AccountService::CreateParams::Capabilities)).returns(T.nilable(::Stripe::AccountService::CreateParams::Capabilities))
       }
      def capabilities=(_capabilities); end
      # Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Company)) }
      def company; end
      sig {
        params(_company: T.nilable(::Stripe::AccountService::CreateParams::Company)).returns(T.nilable(::Stripe::AccountService::CreateParams::Company))
       }
      def company=(_company); end
      # A hash of configuration describing the account controller's attributes.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Controller)) }
      def controller; end
      sig {
        params(_controller: T.nilable(::Stripe::AccountService::CreateParams::Controller)).returns(T.nilable(::Stripe::AccountService::CreateParams::Controller))
       }
      def controller=(_controller); end
      # The country in which the account holder resides, or in which the business is legally established. This should be an ISO 3166-1 alpha-2 country code. For example, if you are in the United States and the business for which you're creating an account is legally represented in Canada, you would use `CA` as the country for the account being created. Available countries include [Stripe's global markets](https://stripe.com/global) as well as countries where [cross-border payouts](https://stripe.com/docs/connect/cross-border-payouts) are supported.
      sig { returns(T.nilable(String)) }
      def country; end
      sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
      def country=(_country); end
      # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
      sig { returns(T.nilable(String)) }
      def default_currency; end
      sig { params(_default_currency: T.nilable(String)).returns(T.nilable(String)) }
      def default_currency=(_default_currency); end
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Documents)) }
      def documents; end
      sig {
        params(_documents: T.nilable(::Stripe::AccountService::CreateParams::Documents)).returns(T.nilable(::Stripe::AccountService::CreateParams::Documents))
       }
      def documents=(_documents); end
      # The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
      sig { returns(T.nilable(String)) }
      def email; end
      sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_email); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::BankAccount, ::Stripe::AccountService::CreateParams::Card, ::Stripe::AccountService::CreateParams::CardToken)))
       }
      def external_account; end
      sig {
        params(_external_account: T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::BankAccount, ::Stripe::AccountService::CreateParams::Card, ::Stripe::AccountService::CreateParams::CardToken))).returns(T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::BankAccount, ::Stripe::AccountService::CreateParams::Card, ::Stripe::AccountService::CreateParams::CardToken)))
       }
      def external_account=(_external_account); end
      # A hash of account group type to tokens. These are account groups this account should be added to.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Groups)) }
      def groups; end
      sig {
        params(_groups: T.nilable(::Stripe::AccountService::CreateParams::Groups)).returns(T.nilable(::Stripe::AccountService::CreateParams::Groups))
       }
      def groups=(_groups); end
      # Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Individual)) }
      def individual; end
      sig {
        params(_individual: T.nilable(::Stripe::AccountService::CreateParams::Individual)).returns(T.nilable(::Stripe::AccountService::CreateParams::Individual))
       }
      def individual=(_individual); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Options for customizing how the account functions within Stripe.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::Settings)) }
      def settings; end
      sig {
        params(_settings: T.nilable(::Stripe::AccountService::CreateParams::Settings)).returns(T.nilable(::Stripe::AccountService::CreateParams::Settings))
       }
      def settings=(_settings); end
      # Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
      sig { returns(T.nilable(::Stripe::AccountService::CreateParams::TosAcceptance)) }
      def tos_acceptance; end
      sig {
        params(_tos_acceptance: T.nilable(::Stripe::AccountService::CreateParams::TosAcceptance)).returns(T.nilable(::Stripe::AccountService::CreateParams::TosAcceptance))
       }
      def tos_acceptance=(_tos_acceptance); end
      # The type of Stripe account to create. May be one of `custom`, `express` or `standard`.
      sig { returns(T.nilable(String)) }
      def type; end
      sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
      def type=(_type); end
      sig {
        params(account_token: T.nilable(String), business_profile: T.nilable(::Stripe::AccountService::CreateParams::BusinessProfile), business_type: T.nilable(String), capabilities: T.nilable(::Stripe::AccountService::CreateParams::Capabilities), company: T.nilable(::Stripe::AccountService::CreateParams::Company), controller: T.nilable(::Stripe::AccountService::CreateParams::Controller), country: T.nilable(String), default_currency: T.nilable(String), documents: T.nilable(::Stripe::AccountService::CreateParams::Documents), email: T.nilable(String), expand: T.nilable(T::Array[String]), external_account: T.nilable(T.any(String, ::Stripe::AccountService::CreateParams::BankAccount, ::Stripe::AccountService::CreateParams::Card, ::Stripe::AccountService::CreateParams::CardToken)), groups: T.nilable(::Stripe::AccountService::CreateParams::Groups), individual: T.nilable(::Stripe::AccountService::CreateParams::Individual), metadata: T.nilable(T.any(String, T::Hash[String, String])), settings: T.nilable(::Stripe::AccountService::CreateParams::Settings), tos_acceptance: T.nilable(::Stripe::AccountService::CreateParams::TosAcceptance), type: T.nilable(String)).void
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
        settings: nil,
        tos_acceptance: nil,
        type: nil
      ); end
    end
    class RejectParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The reason for rejecting the account. Can be `fraud`, `terms_of_service`, or `other`.
      sig { returns(String) }
      def reason; end
      sig { params(_reason: String).returns(String) }
      def reason=(_reason); end
      sig { params(expand: T.nilable(T::Array[String]), reason: String).void }
      def initialize(expand: nil, reason: nil); end
    end
    # With [Connect](https://docs.stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://docs.stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    sig {
      params(params: T.any(::Stripe::AccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def create(params = {}, opts = {}); end

    # With [Connect](https://docs.stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts that have access to the standard dashboard and Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. All other Live-mode accounts, can be deleted when all [balances](https://docs.stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    sig {
      params(account: String, params: T.any(::Stripe::AccountService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def delete(account, params = {}, opts = {}); end

    # Returns a list of accounts connected to your platform via [Connect](https://docs.stripe.com/docs/connect). If you're not a platform, the list is empty.
    sig {
      params(params: T.any(::Stripe::AccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # With [Connect](https://docs.stripe.com/connect), you can reject accounts that you have flagged as suspicious.
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

    # Updates a [connected account](https://docs.stripe.com/connect/accounts) by setting the values of the parameters passed. Any parameters not provided are
    # left unchanged.
    #
    # For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is application, which includes Custom accounts, you can update any information on the account.
    #
    # For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is stripe, which includes Standard and Express accounts, you can update all information until you create
    # an [Account Link or <a href="/api/account_sessions">Account Session](https://docs.stripe.com/api/account_links) to start Connect onboarding,
    # after which some properties can no longer be updated.
    #
    # To update your own account, use the [Dashboard](https://dashboard.stripe.com/settings/account). Refer to our
    # [Connect](https://docs.stripe.com/docs/connect/updating-accounts) documentation to learn more about updating accounts.
    sig {
      params(account: String, params: T.any(::Stripe::AccountService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Account)
     }
    def update(account, params = {}, opts = {}); end
  end
end