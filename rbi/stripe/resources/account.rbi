# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This is an object representing a Stripe account. You can retrieve it to see
  # properties on the account like its current requirements or if the account is
  # enabled to make live charges or receive payouts.
  #
  # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  # is `application`, which includes Custom accounts, the properties below are always
  # returned.
  #
  # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  # is `stripe`, which includes Standard and Express accounts, some properties are only returned
  # until you create an [Account Link](https://stripe.com/api/account_links) or [Account Session](https://stripe.com/api/account_sessions)
  # to start Connect Onboarding. Learn about the [differences between accounts](https://stripe.com/connect/accounts).
  class Account < APIResource
    class BusinessProfile < Stripe::StripeObject
      class AnnualRevenue < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        sig { returns(T.nilable(String)) }
        attr_reader :fiscal_year_end
      end
      class MonthlyEstimatedRevenue < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(String) }
        attr_reader :currency
      end
      class SupportAddress < Stripe::StripeObject
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
      sig { returns(T.nilable(AnnualRevenue)) }
      attr_reader :annual_revenue
      sig { returns(T.nilable(Integer)) }
      attr_reader :estimated_worker_count
      sig { returns(T.nilable(String)) }
      attr_reader :mcc
      sig { returns(MonthlyEstimatedRevenue) }
      attr_reader :monthly_estimated_revenue
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :product_description
      sig { returns(T.nilable(SupportAddress)) }
      attr_reader :support_address
      sig { returns(T.nilable(String)) }
      attr_reader :support_email
      sig { returns(T.nilable(String)) }
      attr_reader :support_phone
      sig { returns(T.nilable(String)) }
      attr_reader :support_url
      sig { returns(T.nilable(String)) }
      attr_reader :url
    end
    class Capabilities < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :acss_debit_payments
      sig { returns(String) }
      attr_reader :affirm_payments
      sig { returns(String) }
      attr_reader :afterpay_clearpay_payments
      sig { returns(String) }
      attr_reader :alma_payments
      sig { returns(String) }
      attr_reader :amazon_pay_payments
      sig { returns(String) }
      attr_reader :au_becs_debit_payments
      sig { returns(String) }
      attr_reader :bacs_debit_payments
      sig { returns(String) }
      attr_reader :bancontact_payments
      sig { returns(String) }
      attr_reader :bank_transfer_payments
      sig { returns(String) }
      attr_reader :blik_payments
      sig { returns(String) }
      attr_reader :boleto_payments
      sig { returns(String) }
      attr_reader :card_issuing
      sig { returns(String) }
      attr_reader :card_payments
      sig { returns(String) }
      attr_reader :cartes_bancaires_payments
      sig { returns(String) }
      attr_reader :cashapp_payments
      sig { returns(String) }
      attr_reader :eps_payments
      sig { returns(String) }
      attr_reader :fpx_payments
      sig { returns(String) }
      attr_reader :gb_bank_transfer_payments
      sig { returns(String) }
      attr_reader :giropay_payments
      sig { returns(String) }
      attr_reader :gopay_payments
      sig { returns(String) }
      attr_reader :grabpay_payments
      sig { returns(String) }
      attr_reader :id_bank_transfer_payments
      sig { returns(String) }
      attr_reader :id_bank_transfer_payments_bca
      sig { returns(String) }
      attr_reader :ideal_payments
      sig { returns(String) }
      attr_reader :india_international_payments
      sig { returns(String) }
      attr_reader :jcb_payments
      sig { returns(String) }
      attr_reader :jp_bank_transfer_payments
      sig { returns(String) }
      attr_reader :kakao_pay_payments
      sig { returns(String) }
      attr_reader :klarna_payments
      sig { returns(String) }
      attr_reader :konbini_payments
      sig { returns(String) }
      attr_reader :kr_card_payments
      sig { returns(String) }
      attr_reader :legacy_payments
      sig { returns(String) }
      attr_reader :link_payments
      sig { returns(String) }
      attr_reader :mb_way_payments
      sig { returns(String) }
      attr_reader :mobilepay_payments
      sig { returns(String) }
      attr_reader :multibanco_payments
      sig { returns(String) }
      attr_reader :mx_bank_transfer_payments
      sig { returns(String) }
      attr_reader :naver_pay_payments
      sig { returns(String) }
      attr_reader :oxxo_payments
      sig { returns(String) }
      attr_reader :p24_payments
      sig { returns(String) }
      attr_reader :payco_payments
      sig { returns(String) }
      attr_reader :paynow_payments
      sig { returns(String) }
      attr_reader :paypal_payments
      sig { returns(String) }
      attr_reader :payto_payments
      sig { returns(String) }
      attr_reader :promptpay_payments
      sig { returns(String) }
      attr_reader :qris_payments
      sig { returns(String) }
      attr_reader :rechnung_payments
      sig { returns(String) }
      attr_reader :revolut_pay_payments
      sig { returns(String) }
      attr_reader :samsung_pay_payments
      sig { returns(String) }
      attr_reader :sepa_bank_transfer_payments
      sig { returns(String) }
      attr_reader :sepa_debit_payments
      sig { returns(String) }
      attr_reader :shopeepay_payments
      sig { returns(String) }
      attr_reader :sofort_payments
      sig { returns(String) }
      attr_reader :swish_payments
      sig { returns(String) }
      attr_reader :tax_reporting_us_1099_k
      sig { returns(String) }
      attr_reader :tax_reporting_us_1099_misc
      sig { returns(String) }
      attr_reader :transfers
      sig { returns(String) }
      attr_reader :treasury
      sig { returns(String) }
      attr_reader :treasury_evolve
      sig { returns(String) }
      attr_reader :treasury_fifth_third
      sig { returns(String) }
      attr_reader :treasury_goldman_sachs
      sig { returns(String) }
      attr_reader :twint_payments
      sig { returns(String) }
      attr_reader :us_bank_account_ach_payments
      sig { returns(String) }
      attr_reader :us_bank_transfer_payments
      sig { returns(String) }
      attr_reader :zip_payments
    end
    class Company < Stripe::StripeObject
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
      class AddressKana < Stripe::StripeObject
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
        sig { returns(T.nilable(String)) }
        attr_reader :town
      end
      class AddressKanji < Stripe::StripeObject
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
        sig { returns(T.nilable(String)) }
        attr_reader :town
      end
      class OwnershipDeclaration < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :date
        sig { returns(T.nilable(String)) }
        attr_reader :ip
        sig { returns(T.nilable(String)) }
        attr_reader :user_agent
      end
      class Verification < Stripe::StripeObject
        class Document < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :back
          sig { returns(T.nilable(String)) }
          attr_reader :details
          sig { returns(T.nilable(String)) }
          attr_reader :details_code
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :front
        end
        sig { returns(Document) }
        attr_reader :document
      end
      sig { returns(Address) }
      attr_reader :address
      sig { returns(T.nilable(AddressKana)) }
      attr_reader :address_kana
      sig { returns(T.nilable(AddressKanji)) }
      attr_reader :address_kanji
      sig { returns(T::Boolean) }
      attr_reader :directors_provided
      sig { returns(T::Boolean) }
      attr_reader :executives_provided
      sig { returns(String) }
      attr_reader :export_license_id
      sig { returns(String) }
      attr_reader :export_purpose_code
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :name_kana
      sig { returns(T.nilable(String)) }
      attr_reader :name_kanji
      sig { returns(T::Boolean) }
      attr_reader :owners_provided
      sig { returns(T.nilable(OwnershipDeclaration)) }
      attr_reader :ownership_declaration
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      sig { returns(String) }
      attr_reader :structure
      sig { returns(T::Boolean) }
      attr_reader :tax_id_provided
      sig { returns(String) }
      attr_reader :tax_id_registrar
      sig { returns(T::Boolean) }
      attr_reader :vat_id_provided
      sig { returns(T.nilable(Verification)) }
      attr_reader :verification
    end
    class Controller < Stripe::StripeObject
      class Application < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :loss_liable
        sig { returns(T::Boolean) }
        attr_reader :onboarding_owner
        sig { returns(T::Boolean) }
        attr_reader :pricing_controls
      end
      class Dashboard < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :type
      end
      class Fees < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :payer
      end
      class Losses < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :payments
      end
      class StripeDashboard < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(Application) }
      attr_reader :application
      sig { returns(Dashboard) }
      attr_reader :dashboard
      sig { returns(Fees) }
      attr_reader :fees
      sig { returns(T::Boolean) }
      attr_reader :is_controller
      sig { returns(Losses) }
      attr_reader :losses
      sig { returns(String) }
      attr_reader :requirement_collection
      sig { returns(StripeDashboard) }
      attr_reader :stripe_dashboard
      sig { returns(String) }
      attr_reader :type
    end
    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_deadline
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due
      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason
      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :eventually_due
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end
    class Groups < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :payments_pricing
    end
    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_deadline
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due
      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason
      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :eventually_due
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end
    class RiskControls < Stripe::StripeObject
      class Charges < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :pause_requested
      end
      class Payouts < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :pause_requested
      end
      sig { returns(Charges) }
      attr_reader :charges
      sig { returns(Payouts) }
      attr_reader :payouts
    end
    class Settings < Stripe::StripeObject
      class BacsDebitPayments < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :display_name
        sig { returns(T.nilable(String)) }
        attr_reader :service_user_number
      end
      class BankBcaOnboarding < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :account_holder_name
        sig { returns(String) }
        attr_reader :business_account_number
      end
      class Branding < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :icon
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :logo
        sig { returns(T.nilable(String)) }
        attr_reader :primary_color
        sig { returns(T.nilable(String)) }
        attr_reader :secondary_color
      end
      class Capital < Stripe::StripeObject
        sig { returns(T::Hash[String, String]) }
        attr_reader :payout_destination
        sig { returns(T::Hash[String, T::Array[String]]) }
        attr_reader :payout_destination_selector
      end
      class CardIssuing < Stripe::StripeObject
        class TosAcceptance < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :date
          sig { returns(T.nilable(String)) }
          attr_reader :ip
          sig { returns(String) }
          attr_reader :user_agent
        end
        sig { returns(TosAcceptance) }
        attr_reader :tos_acceptance
      end
      class CardPayments < Stripe::StripeObject
        class DeclineOn < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :avs_failure
          sig { returns(T::Boolean) }
          attr_reader :cvc_failure
        end
        sig { returns(DeclineOn) }
        attr_reader :decline_on
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_prefix
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_prefix_kana
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_prefix_kanji
      end
      class Dashboard < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :display_name
        sig { returns(T.nilable(String)) }
        attr_reader :timezone
      end
      class Invoices < Stripe::StripeObject
        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :default_account_tax_ids
      end
      class Payments < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_kana
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_kanji
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_prefix_kana
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_prefix_kanji
      end
      class Payouts < Stripe::StripeObject
        class Schedule < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :delay_days
          sig { returns(String) }
          attr_reader :interval
          sig { returns(Integer) }
          attr_reader :monthly_anchor
          sig { returns(String) }
          attr_reader :weekly_anchor
        end
        sig { returns(T::Boolean) }
        attr_reader :debit_negative_balances
        sig { returns(Schedule) }
        attr_reader :schedule
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor
      end
      class SepaDebitPayments < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :creditor_id
      end
      class TaxForms < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :consented_to_paperless_delivery
      end
      class Treasury < Stripe::StripeObject
        class TosAcceptance < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :date
          sig { returns(T.nilable(String)) }
          attr_reader :ip
          sig { returns(String) }
          attr_reader :user_agent
        end
        sig { returns(TosAcceptance) }
        attr_reader :tos_acceptance
      end
      sig { returns(BacsDebitPayments) }
      attr_reader :bacs_debit_payments
      sig { returns(BankBcaOnboarding) }
      attr_reader :bank_bca_onboarding
      sig { returns(Branding) }
      attr_reader :branding
      sig { returns(Capital) }
      attr_reader :capital
      sig { returns(CardIssuing) }
      attr_reader :card_issuing
      sig { returns(CardPayments) }
      attr_reader :card_payments
      sig { returns(Dashboard) }
      attr_reader :dashboard
      sig { returns(Invoices) }
      attr_reader :invoices
      sig { returns(Payments) }
      attr_reader :payments
      sig { returns(Payouts) }
      attr_reader :payouts
      sig { returns(SepaDebitPayments) }
      attr_reader :sepa_debit_payments
      sig { returns(TaxForms) }
      attr_reader :tax_forms
      sig { returns(Treasury) }
      attr_reader :treasury
    end
    class TosAcceptance < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :date
      sig { returns(T.nilable(String)) }
      attr_reader :ip
      sig { returns(String) }
      attr_reader :service_agreement
      sig { returns(T.nilable(String)) }
      attr_reader :user_agent
    end
    sig { returns(T.nilable(BusinessProfile)) }
    # Business information about the account.
    attr_reader :business_profile
    sig { returns(T.nilable(String)) }
    # The business type. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property is only returned for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    attr_reader :business_type
    sig { returns(Capabilities) }
    # Attribute for field capabilities
    attr_reader :capabilities
    sig { returns(T::Boolean) }
    # Whether the account can process charges.
    attr_reader :charges_enabled
    sig { returns(Company) }
    # Attribute for field company
    attr_reader :company
    sig { returns(Controller) }
    # Attribute for field controller
    attr_reader :controller
    sig { returns(String) }
    # The account's country.
    attr_reader :country
    sig { returns(Integer) }
    # Time at which the account was connected. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    attr_reader :default_currency
    sig { returns(T::Boolean) }
    # Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](/connect/onboarding) to finish submitting account details.
    attr_reader :details_submitted
    sig { returns(T.nilable(String)) }
    # An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform.
    attr_reader :email
    sig { returns(Stripe::ListObject) }
    # External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true.
    attr_reader :external_accounts
    sig { returns(FutureRequirements) }
    # Attribute for field future_requirements
    attr_reader :future_requirements
    sig { returns(T.nilable(Groups)) }
    # The groups associated with the account.
    attr_reader :groups
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(Stripe::Person) }
    # This is an object representing a person associated with a Stripe account.
    #
    # A platform cannot access a person for an account where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.
    #
    # See the [Standard onboarding](/connect/standard-accounts) or [Express onboarding](/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](/connect/handling-api-verification#person-information).
    attr_reader :individual
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Boolean) }
    # Whether the funds in this account can be paid out.
    attr_reader :payouts_enabled
    sig { returns(Requirements) }
    # Attribute for field requirements
    attr_reader :requirements
    sig { returns(RiskControls) }
    # Attribute for field risk_controls
    attr_reader :risk_controls
    sig { returns(T.nilable(Settings)) }
    # Options for customizing how the account functions within Stripe.
    attr_reader :settings
    sig { returns(TosAcceptance) }
    # Attribute for field tos_acceptance
    attr_reader :tos_acceptance
    sig { returns(String) }
    # The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
    attr_reader :type
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end