# File generated from our OpenAPI spec
# frozen_string_literal: true

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
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "account"
    def self.object_name
      "account"
    end

    nested_resource_class_methods :capability,
                                  operations: %i[retrieve update list],
                                  resource_plural: "capabilities"
    nested_resource_class_methods :external_account,
                                  operations: %i[create retrieve update delete list]
    nested_resource_class_methods :login_link, operations: %i[create]
    nested_resource_class_methods :person, operations: %i[create retrieve update delete list]

    class BusinessProfile < Stripe::StripeObject
      class AnnualRevenue < Stripe::StripeObject
        # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
        attr_reader :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
        attr_reader :fiscal_year_end
      end

      class MonthlyEstimatedRevenue < Stripe::StripeObject
        # A non-negative integer representing how much to charge in the [smallest currency unit](/currencies#zero-decimal).
        attr_reader :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
      end

      class SupportAddress < Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region.
        attr_reader :state
      end
      # The applicant's gross annual revenue for its preceding fiscal year.
      attr_reader :annual_revenue
      # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
      attr_reader :estimated_worker_count
      # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
      attr_reader :mcc
      # Attribute for field monthly_estimated_revenue
      attr_reader :monthly_estimated_revenue
      # The customer-facing business name.
      attr_reader :name
      # Internal-only description of the product sold or service provided by the business. It's used by Stripe for risk and underwriting purposes.
      attr_reader :product_description
      # A publicly available mailing address for sending support issues to.
      attr_reader :support_address
      # A publicly available email address for sending support issues to.
      attr_reader :support_email
      # A publicly available phone number to call with support issues.
      attr_reader :support_phone
      # A publicly available website for handling support issues.
      attr_reader :support_url
      # The business's publicly available website.
      attr_reader :url
    end

    class Capabilities < Stripe::StripeObject
      # The status of the Canadian pre-authorized debits payments capability of the account, or whether the account can directly process Canadian pre-authorized debits charges.
      attr_reader :acss_debit_payments
      # The status of the Affirm capability of the account, or whether the account can directly process Affirm charges.
      attr_reader :affirm_payments
      # The status of the Afterpay Clearpay capability of the account, or whether the account can directly process Afterpay Clearpay charges.
      attr_reader :afterpay_clearpay_payments
      # The status of the Alma capability of the account, or whether the account can directly process Alma payments.
      attr_reader :alma_payments
      # The status of the AmazonPay capability of the account, or whether the account can directly process AmazonPay payments.
      attr_reader :amazon_pay_payments
      # The status of the BECS Direct Debit (AU) payments capability of the account, or whether the account can directly process BECS Direct Debit (AU) charges.
      attr_reader :au_becs_debit_payments
      # The status of the Bacs Direct Debits payments capability of the account, or whether the account can directly process Bacs Direct Debits charges.
      attr_reader :bacs_debit_payments
      # The status of the Bancontact payments capability of the account, or whether the account can directly process Bancontact charges.
      attr_reader :bancontact_payments
      # The status of the customer_balance payments capability of the account, or whether the account can directly process customer_balance charges.
      attr_reader :bank_transfer_payments
      # The status of the blik payments capability of the account, or whether the account can directly process blik charges.
      attr_reader :blik_payments
      # The status of the boleto payments capability of the account, or whether the account can directly process boleto charges.
      attr_reader :boleto_payments
      # The status of the card issuing capability of the account, or whether you can use Issuing to distribute funds on cards
      attr_reader :card_issuing
      # The status of the card payments capability of the account, or whether the account can directly process credit and debit card charges.
      attr_reader :card_payments
      # The status of the Cartes Bancaires payments capability of the account, or whether the account can directly process Cartes Bancaires card charges in EUR currency.
      attr_reader :cartes_bancaires_payments
      # The status of the Cash App Pay capability of the account, or whether the account can directly process Cash App Pay payments.
      attr_reader :cashapp_payments
      # The status of the EPS payments capability of the account, or whether the account can directly process EPS charges.
      attr_reader :eps_payments
      # The status of the FPX payments capability of the account, or whether the account can directly process FPX charges.
      attr_reader :fpx_payments
      # The status of the GB customer_balance payments (GBP currency) capability of the account, or whether the account can directly process GB customer_balance charges.
      attr_reader :gb_bank_transfer_payments
      # The status of the giropay payments capability of the account, or whether the account can directly process giropay charges.
      attr_reader :giropay_payments
      # The status of the Gopay capability of the account, or whether the account can directly process Gopay payments.
      attr_reader :gopay_payments
      # The status of the GrabPay payments capability of the account, or whether the account can directly process GrabPay charges.
      attr_reader :grabpay_payments
      # The status of the Indonesia Bank Transfer payments capability of the account, or whether the account can directly process Indonesia Bank Transfer charges.
      attr_reader :id_bank_transfer_payments
      # The status of Bank BCA onboarding of the account.
      attr_reader :id_bank_transfer_payments_bca
      # The status of the iDEAL payments capability of the account, or whether the account can directly process iDEAL charges.
      attr_reader :ideal_payments
      # The status of the india_international_payments capability of the account, or whether the account can process international charges (non INR) in India.
      attr_reader :india_international_payments
      # The status of the JCB payments capability of the account, or whether the account (Japan only) can directly process JCB credit card charges in JPY currency.
      attr_reader :jcb_payments
      # The status of the Japanese customer_balance payments (JPY currency) capability of the account, or whether the account can directly process Japanese customer_balance charges.
      attr_reader :jp_bank_transfer_payments
      # The status of the KakaoPay capability of the account, or whether the account can directly process KakaoPay payments.
      attr_reader :kakao_pay_payments
      # The status of the Klarna payments capability of the account, or whether the account can directly process Klarna charges.
      attr_reader :klarna_payments
      # The status of the konbini payments capability of the account, or whether the account can directly process konbini charges.
      attr_reader :konbini_payments
      # The status of the KrCard capability of the account, or whether the account can directly process KrCard payments.
      attr_reader :kr_card_payments
      # The status of the legacy payments capability of the account.
      attr_reader :legacy_payments
      # The status of the link_payments capability of the account, or whether the account can directly process Link charges.
      attr_reader :link_payments
      # The status of the MB WAY payments capability of the account, or whether the account can directly process MB WAY charges.
      attr_reader :mb_way_payments
      # The status of the MobilePay capability of the account, or whether the account can directly process MobilePay charges.
      attr_reader :mobilepay_payments
      # The status of the Multibanco payments capability of the account, or whether the account can directly process Multibanco charges.
      attr_reader :multibanco_payments
      # The status of the Mexican customer_balance payments (MXN currency) capability of the account, or whether the account can directly process Mexican customer_balance charges.
      attr_reader :mx_bank_transfer_payments
      # The status of the NaverPay capability of the account, or whether the account can directly process NaverPay payments.
      attr_reader :naver_pay_payments
      # The status of the OXXO payments capability of the account, or whether the account can directly process OXXO charges.
      attr_reader :oxxo_payments
      # The status of the P24 payments capability of the account, or whether the account can directly process P24 charges.
      attr_reader :p24_payments
      # The status of the Payco capability of the account, or whether the account can directly process Payco payments.
      attr_reader :payco_payments
      # The status of the paynow payments capability of the account, or whether the account can directly process paynow charges.
      attr_reader :paynow_payments
      # The status of the PayPal payments capability of the account, or whether the account can directly process PayPal charges.
      attr_reader :paypal_payments
      # The status of the PayTo capability of the account, or whether the account can directly process PayTo charges.
      attr_reader :payto_payments
      # The status of the promptpay payments capability of the account, or whether the account can directly process promptpay charges.
      attr_reader :promptpay_payments
      # The status of the Qris capability of the account, or whether the account can directly process Qris payments.
      attr_reader :qris_payments
      # The status of the Rechnung capability of the account, or whether the account can directly process Rechnung payments.
      attr_reader :rechnung_payments
      # The status of the RevolutPay capability of the account, or whether the account can directly process RevolutPay payments.
      attr_reader :revolut_pay_payments
      # The status of the SamsungPay capability of the account, or whether the account can directly process SamsungPay payments.
      attr_reader :samsung_pay_payments
      # The status of the SEPA customer_balance payments (EUR currency) capability of the account, or whether the account can directly process SEPA customer_balance charges.
      attr_reader :sepa_bank_transfer_payments
      # The status of the SEPA Direct Debits payments capability of the account, or whether the account can directly process SEPA Direct Debits charges.
      attr_reader :sepa_debit_payments
      # The status of the ShopeePay capability of the account, or whether the account can directly process ShopeePay payments.
      attr_reader :shopeepay_payments
      # The status of the Sofort payments capability of the account, or whether the account can directly process Sofort charges.
      attr_reader :sofort_payments
      # The status of the Swish capability of the account, or whether the account can directly process Swish payments.
      attr_reader :swish_payments
      # The status of the tax reporting 1099-K (US) capability of the account.
      attr_reader :tax_reporting_us_1099_k
      # The status of the tax reporting 1099-MISC (US) capability of the account.
      attr_reader :tax_reporting_us_1099_misc
      # The status of the transfers capability of the account, or whether your platform can transfer funds to the account.
      attr_reader :transfers
      # The status of the banking capability, or whether the account can have bank accounts.
      attr_reader :treasury
      # The status of the treasury_evolve capability of the account.
      attr_reader :treasury_evolve
      # The status of the treasury_fifth_third capability of the account.
      attr_reader :treasury_fifth_third
      # The status of the treasury_goldman_sachs capability of the account.
      attr_reader :treasury_goldman_sachs
      # The status of the TWINT capability of the account, or whether the account can directly process TWINT charges.
      attr_reader :twint_payments
      # The status of the US bank account ACH payments capability of the account, or whether the account can directly process US bank account charges.
      attr_reader :us_bank_account_ach_payments
      # The status of the US customer_balance payments (USD currency) capability of the account, or whether the account can directly process US customer_balance charges.
      attr_reader :us_bank_transfer_payments
      # The status of the Zip capability of the account, or whether the account can directly process Zip charges.
      attr_reader :zip_payments
    end

    class Company < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region.
        attr_reader :state
      end

      class AddressKana < Stripe::StripeObject
        # City/Ward.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Block/Building number.
        attr_reader :line1
        # Building details.
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # Prefecture.
        attr_reader :state
        # Town/cho-me.
        attr_reader :town
      end

      class AddressKanji < Stripe::StripeObject
        # City/Ward.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Block/Building number.
        attr_reader :line1
        # Building details.
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # Prefecture.
        attr_reader :state
        # Town/cho-me.
        attr_reader :town
      end

      class OwnershipDeclaration < Stripe::StripeObject
        # The Unix timestamp marking when the beneficial owner attestation was made.
        attr_reader :date
        # The IP address from which the beneficial owner attestation was made.
        attr_reader :ip
        # The user-agent string from the browser where the beneficial owner attestation was made.
        attr_reader :user_agent
      end

      class Verification < Stripe::StripeObject
        class Document < Stripe::StripeObject
          # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`.
          attr_reader :back
          # A user-displayable string describing the verification state of this document.
          attr_reader :details
          # One of `document_corrupt`, `document_expired`, `document_failed_copy`, `document_failed_greyscale`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_not_readable`, `document_not_uploaded`, `document_type_not_supported`, or `document_too_large`. A machine-readable code specifying the verification state for this document.
          attr_reader :details_code
          # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`.
          attr_reader :front
        end
        # Attribute for field document
        attr_reader :document
      end
      # Attribute for field address
      attr_reader :address
      # The Kana variation of the company's primary address (Japan only).
      attr_reader :address_kana
      # The Kanji variation of the company's primary address (Japan only).
      attr_reader :address_kanji
      # Whether the company's directors have been provided. This Boolean will be `true` if you've manually indicated that all directors are provided via [the `directors_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-directors_provided).
      attr_reader :directors_provided
      # Whether the company's executives have been provided. This Boolean will be `true` if you've manually indicated that all executives are provided via [the `executives_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-executives_provided), or if Stripe determined that sufficient executives were provided.
      attr_reader :executives_provided
      # The export license ID number of the company, also referred as Import Export Code (India only).
      attr_reader :export_license_id
      # The purpose code to use for export transactions (India only).
      attr_reader :export_purpose_code
      # The company's legal name.
      attr_reader :name
      # The Kana variation of the company's legal name (Japan only).
      attr_reader :name_kana
      # The Kanji variation of the company's legal name (Japan only).
      attr_reader :name_kanji
      # Whether the company's owners have been provided. This Boolean will be `true` if you've manually indicated that all owners are provided via [the `owners_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-owners_provided), or if Stripe determined that sufficient owners were provided. Stripe determines ownership requirements using both the number of owners provided and their total percent ownership (calculated by adding the `percent_ownership` of each owner together).
      attr_reader :owners_provided
      # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
      attr_reader :ownership_declaration
      # The company's phone number (used for verification).
      attr_reader :phone
      # The category identifying the legal structure of the company or legal entity. See [Business structure](https://stripe.com/docs/connect/identity-verification#business-structure) for more details.
      attr_reader :structure
      # Whether the company's business ID number was provided.
      attr_reader :tax_id_provided
      # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
      attr_reader :tax_id_registrar
      # Whether the company's business VAT number was provided.
      attr_reader :vat_id_provided
      # Information on the verification state of the company.
      attr_reader :verification
    end

    class Controller < Stripe::StripeObject
      class Application < Stripe::StripeObject
        # `true` if the Connect application is responsible for negative balances and should manage credit and fraud risk on the account.
        attr_reader :loss_liable
        # `true` if the Connect application is responsible for onboarding the account.
        attr_reader :onboarding_owner
        # `true` if the Connect application is responsible for paying Stripe fees on pricing-control eligible products.
        attr_reader :pricing_controls
      end

      class Dashboard < Stripe::StripeObject
        # Whether this account has access to the full Stripe dashboard (`full`), to the Express dashboard (`express`), or to no dashboard (`none`).
        attr_reader :type
      end

      class Fees < Stripe::StripeObject
        # A value indicating the responsible payer of a bundle of Stripe fees for pricing-control eligible products on this account. Learn more about [fee behavior on connected accounts](https://docs.stripe.com/connect/direct-charges-fee-payer-behavior).
        attr_reader :payer
      end

      class Losses < Stripe::StripeObject
        # A value indicating who is liable when this account can't pay back negative balances from payments.
        attr_reader :payments
      end

      class StripeDashboard < Stripe::StripeObject
        # A value indicating the Stripe dashboard this account has access to independent of the Connect application.
        attr_reader :type
      end
      # Attribute for field application
      attr_reader :application
      # Attribute for field dashboard
      attr_reader :dashboard
      # Attribute for field fees
      attr_reader :fees
      # `true` if the Connect application retrieving the resource controls the account and can therefore exercise [platform controls](https://stripe.com/docs/connect/platform-controls-for-standard-accounts). Otherwise, this field is null.
      attr_reader :is_controller
      # Attribute for field losses
      attr_reader :losses
      # A value indicating responsibility for collecting requirements on this account. Only returned when the Connect application retrieving the resource controls the account.
      attr_reader :requirement_collection
      # Attribute for field stripe_dashboard
      attr_reader :stripe_dashboard
      # The controller type. Can be `application`, if a Connect application controls the account, or `account`, if the account controls itself.
      attr_reader :type
    end

    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        # Fields that can be provided to satisfy all fields in `original_fields_due`.
        attr_reader :alternative_fields_due
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        attr_reader :original_fields_due
      end

      class Error < Stripe::StripeObject
        # The code for the type of error.
        attr_reader :code
        # An informative message that indicates the error type and provides additional details about the error.
        attr_reader :reason
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        attr_reader :requirement
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      attr_reader :alternatives
      # Date on which `future_requirements` becomes the main `requirements` hash and `future_requirements` becomes empty. After the transition, `currently_due` requirements may immediately become `past_due`, but the account may also be given a grace period depending on its enablement state prior to transitioning.
      attr_reader :current_deadline
      # Fields that need to be collected to keep the account enabled. If not collected by `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash.
      attr_reader :currently_due
      # This is typed as an enum for consistency with `requirements.disabled_reason`.
      attr_reader :disabled_reason
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      attr_reader :errors
      # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well.
      attr_reader :eventually_due
      # Fields that weren't collected by `requirements.current_deadline`. These fields need to be collected to enable the capability on the account. New fields will never appear here; `future_requirements.past_due` will always be a subset of `requirements.past_due`.
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due` or `currently_due`. Fields might appear in `eventually_due` or `currently_due` and in `pending_verification` if verification fails but another verification is still pending.
      attr_reader :pending_verification
    end

    class Groups < Stripe::StripeObject
      # The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://stripe.com/docs/connect/platform-pricing-tools) for details.
      attr_reader :payments_pricing
    end

    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        # Fields that can be provided to satisfy all fields in `original_fields_due`.
        attr_reader :alternative_fields_due
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        attr_reader :original_fields_due
      end

      class Error < Stripe::StripeObject
        # The code for the type of error.
        attr_reader :code
        # An informative message that indicates the error type and provides additional details about the error.
        attr_reader :reason
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        attr_reader :requirement
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      attr_reader :alternatives
      # Date by which the fields in `currently_due` must be collected to keep the account enabled. These fields may disable the account sooner if the next threshold is reached before they are collected.
      attr_reader :current_deadline
      # Fields that need to be collected to keep the account enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the account is disabled.
      attr_reader :currently_due
      # If the account is disabled, this enum describes why. [Learn more about handling verification issues](https://stripe.com/docs/connect/handling-api-verification).
      attr_reader :disabled_reason
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      attr_reader :errors
      # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
      attr_reader :eventually_due
      # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the account.
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
      attr_reader :pending_verification
    end

    class RiskControls < Stripe::StripeObject
      class Charges < Stripe::StripeObject
        # Whether a pause of the risk control has been requested.
        attr_reader :pause_requested
      end

      class Payouts < Stripe::StripeObject
        # Whether a pause of the risk control has been requested.
        attr_reader :pause_requested
      end
      # Attribute for field charges
      attr_reader :charges
      # Attribute for field payouts
      attr_reader :payouts
    end

    class Settings < Stripe::StripeObject
      class BacsDebitPayments < Stripe::StripeObject
        # The Bacs Direct Debit display name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. The fee appears 5 business days after requesting Bacs. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
        attr_reader :display_name
        # The Bacs Direct Debit Service user number for this account. For payments made with Bacs Direct Debit, this number is a unique identifier of the account with our banking partners.
        attr_reader :service_user_number
      end

      class BankBcaOnboarding < Stripe::StripeObject
        # Bank BCA business account holder name.
        attr_reader :account_holder_name
        # Bank BCA business account number.
        attr_reader :business_account_number
      end

      class Branding < Stripe::StripeObject
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
        attr_reader :icon
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
        attr_reader :logo
        # A CSS hex color value representing the primary branding color for this account
        attr_reader :primary_color
        # A CSS hex color value representing the secondary branding color for this account
        attr_reader :secondary_color
      end

      class Capital < Stripe::StripeObject
        # Per-currency mapping of user-selected destination accounts used to pay out loans.
        attr_reader :payout_destination
        # Per-currency mapping of all destination accounts eligible to receive loan payouts.
        attr_reader :payout_destination_selector
      end

      class CardIssuing < Stripe::StripeObject
        class TosAcceptance < Stripe::StripeObject
          # The Unix timestamp marking when the account representative accepted the service agreement.
          attr_reader :date
          # The IP address from which the account representative accepted the service agreement.
          attr_reader :ip
          # The user agent of the browser from which the account representative accepted the service agreement.
          attr_reader :user_agent
        end
        # Attribute for field tos_acceptance
        attr_reader :tos_acceptance
      end

      class CardPayments < Stripe::StripeObject
        class DeclineOn < Stripe::StripeObject
          # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
          attr_reader :avs_failure
          # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
          attr_reader :cvc_failure
        end
        # Attribute for field decline_on
        attr_reader :decline_on
        # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
        attr_reader :statement_descriptor_prefix
        # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
        attr_reader :statement_descriptor_prefix_kana
        # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
        attr_reader :statement_descriptor_prefix_kanji
      end

      class Dashboard < Stripe::StripeObject
        # The display name for this account. This is used on the Stripe Dashboard to differentiate between accounts.
        attr_reader :display_name
        # The timezone used in the Stripe Dashboard for this account. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones).
        attr_reader :timezone
      end

      class Invoices < Stripe::StripeObject
        # The list of default Account Tax IDs to automatically include on invoices. Account Tax IDs get added when an invoice is finalized.
        attr_reader :default_account_tax_ids
      end

      class Payments < Stripe::StripeObject
        # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge.
        attr_reader :statement_descriptor
        # The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
        attr_reader :statement_descriptor_kana
        # The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
        attr_reader :statement_descriptor_kanji
        # The Kana variation of `statement_descriptor_prefix` used for card charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
        attr_reader :statement_descriptor_prefix_kana
        # The Kanji variation of `statement_descriptor_prefix` used for card charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
        attr_reader :statement_descriptor_prefix_kanji
      end

      class Payouts < Stripe::StripeObject
        class Schedule < Stripe::StripeObject
          # The number of days charges for the account will be held before being paid out.
          attr_reader :delay_days
          # How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
          attr_reader :interval
          # The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
          attr_reader :monthly_anchor
          # The day of the week funds will be paid out, of the style 'monday', 'tuesday', etc. Only shown if `interval` is weekly.
          attr_reader :weekly_anchor
        end
        # A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
        attr_reader :debit_negative_balances
        # Attribute for field schedule
        attr_reader :schedule
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        attr_reader :statement_descriptor
      end

      class SepaDebitPayments < Stripe::StripeObject
        # SEPA creditor identifier that identifies the company making the payment.
        attr_reader :creditor_id
      end

      class TaxForms < Stripe::StripeObject
        # Whether the account opted out of receiving their tax forms by postal delivery.
        attr_reader :consented_to_paperless_delivery
      end

      class Treasury < Stripe::StripeObject
        class TosAcceptance < Stripe::StripeObject
          # The Unix timestamp marking when the account representative accepted the service agreement.
          attr_reader :date
          # The IP address from which the account representative accepted the service agreement.
          attr_reader :ip
          # The user agent of the browser from which the account representative accepted the service agreement.
          attr_reader :user_agent
        end
        # Attribute for field tos_acceptance
        attr_reader :tos_acceptance
      end
      # Attribute for field bacs_debit_payments
      attr_reader :bacs_debit_payments
      # Attribute for field bank_bca_onboarding
      attr_reader :bank_bca_onboarding
      # Attribute for field branding
      attr_reader :branding
      # Attribute for field capital
      attr_reader :capital
      # Attribute for field card_issuing
      attr_reader :card_issuing
      # Attribute for field card_payments
      attr_reader :card_payments
      # Attribute for field dashboard
      attr_reader :dashboard
      # Attribute for field invoices
      attr_reader :invoices
      # Attribute for field payments
      attr_reader :payments
      # Attribute for field payouts
      attr_reader :payouts
      # Attribute for field sepa_debit_payments
      attr_reader :sepa_debit_payments
      # Attribute for field tax_forms
      attr_reader :tax_forms
      # Attribute for field treasury
      attr_reader :treasury
    end

    class TosAcceptance < Stripe::StripeObject
      # The Unix timestamp marking when the account representative accepted their service agreement
      attr_reader :date
      # The IP address from which the account representative accepted their service agreement
      attr_reader :ip
      # The user's service agreement type
      attr_reader :service_agreement
      # The user agent of the browser from which the account representative accepted their service agreement
      attr_reader :user_agent
    end
    # Business information about the account.
    attr_reader :business_profile

    # The business type. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property is only returned for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    attr_reader :business_type

    # Attribute for field capabilities
    attr_reader :capabilities

    # Whether the account can process charges.
    attr_reader :charges_enabled

    # Attribute for field company
    attr_reader :company

    # Attribute for field controller
    attr_reader :controller

    # The account's country.
    attr_reader :country

    # Time at which the account was connected. Measured in seconds since the Unix epoch.
    attr_reader :created

    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    attr_reader :default_currency

    # Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](/connect/onboarding) to finish submitting account details.
    attr_reader :details_submitted

    # An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform.
    attr_reader :email

    # External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true.
    attr_reader :external_accounts

    # Attribute for field future_requirements
    attr_reader :future_requirements

    # The groups associated with the account.
    attr_reader :groups

    # Unique identifier for the object.
    attr_reader :id

    # This is an object representing a person associated with a Stripe account.
    #
    # A platform cannot access a person for an account where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.
    #
    # See the [Standard onboarding](/connect/standard-accounts) or [Express onboarding](/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](/connect/handling-api-verification#person-information).
    attr_reader :individual

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Whether the funds in this account can be paid out.
    attr_reader :payouts_enabled

    # Attribute for field requirements
    attr_reader :requirements

    # Attribute for field risk_controls
    attr_reader :risk_controls

    # Options for customizing how the account functions within Stripe.
    attr_reader :settings

    # Attribute for field tos_acceptance
    attr_reader :tos_acceptance

    # The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
    attr_reader :type

    # Always true for a deleted object
    attr_reader :deleted

    # With [Connect](https://stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/accounts", params: params, opts: opts)
    end

    # With [Connect](https://stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts where Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. Live-mode accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be deleted when all [balances](https://stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts where Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. Live-mode accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be deleted when all [balances](https://stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of accounts connected to your platform via [Connect](https://stripe.com/docs/connect). If you're not a platform, the list is empty.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/accounts", params: filters, opts: opts)
    end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def persons(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def self.persons(account, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/accounts/%<account>s/persons", { account: CGI.escape(account) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/connect), you can reject accounts that you have flagged as suspicious.
    #
    # Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.
    def reject(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<account>s/reject", { account: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://stripe.com/connect), you can reject accounts that you have flagged as suspicious.
    #
    # Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.
    def self.reject(account, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<account>s/reject", { account: CGI.escape(account) }),
        params: params,
        opts: opts
      )
    end

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
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    save_nested_resource :external_account

    def resource_url
      if self["id"]
        super
      else
        "/v1/account"
      end
    end

    # @override To make id optional
    def self.retrieve(id = nil, opts = {})
      Util.check_string_argument!(id) if id

      # Account used to be a singleton, where this method's signature was
      # `(opts={})`. For the sake of not breaking folks who pass in an OAuth
      # key in opts, let's lurkily string match for it.
      if opts == {} && id.is_a?(String) && id.start_with?("sk_")
        # `super` properly assumes a String opts is the apiKey and normalizes
        # as expected.
        opts = id
        id = nil
      end
      super(id, opts)
    end

    # We are not adding a helper for capabilities here as the Account object
    # already has a capabilities property which is a hash and not the sub-list
    # of capabilities.

    # Somewhat unfortunately, we attempt to do a special encoding trick when
    # serializing `additional_owners` under an account: when updating a value,
    # we actually send the update parameters up as an integer-indexed hash
    # rather than an array. So instead of this:
    #
    #     field[]=item1&field[]=item2&field[]=item3
    #
    # We send this:
    #
    #     field[0]=item1&field[1]=item2&field[2]=item3
    #
    # There are two major problems with this technique:
    #
    #     * Entities are addressed by array index, which is not stable and can
    #       easily result in unexpected results between two different requests.
    #
    #     * A replacement of the array's contents is ambiguous with setting a
    #       subset of the array. Because of this, the only way to shorten an
    #       array is to unset it completely by making sure it goes into the
    #       server as an empty string, then setting its contents again.
    #
    # We're trying to get this overturned on the server side, but for now,
    # patch in a special allowance.
    def serialize_params(options = {})
      serialize_params_account(self, super, options)
    end

    def serialize_params_account(_obj, update_hash, options = {})
      if (entity = @values[:legal_entity]) && (owners = entity[:additional_owners])
        entity_update = update_hash[:legal_entity] ||= {}
        entity_update[:additional_owners] =
          serialize_additional_owners(entity, owners)
      end
      if (individual = @values[:individual]) && (individual.is_a?(Person) && !update_hash.key?(:individual))
        update_hash[:individual] = individual.serialize_params(options)
      end
      update_hash
    end

    def self.protected_fields
      [:legal_entity]
    end

    def legal_entity
      self["legal_entity"]
    end

    def legal_entity=(_legal_entity)
      raise NoMethodError,
            "Overriding legal_entity can cause serious issues. Instead, set " \
            "the individual fields of legal_entity like " \
            "`account.legal_entity.first_name = 'Blah'`"
    end

    def deauthorize(client_id = nil, opts = {})
      params = {
        client_id: client_id,
        stripe_user_id: id,
      }
      opts = @opts.merge(Util.normalize_opts(opts))
      OAuth.deauthorize(params, opts)
    end

    private def serialize_additional_owners(legal_entity, additional_owners)
      original_value =
        legal_entity
        .instance_variable_get(:@original_values)[:additional_owners]
      if original_value && original_value.length > additional_owners.length
        # url params provide no mechanism for deleting an item in an array,
        # just overwriting the whole array or adding new items. So let's not
        # allow deleting without a full overwrite until we have a solution.
        raise ArgumentError,
              "You cannot delete an item from an array, you must instead " \
              "set a new array"
      end

      update_hash = {}
      additional_owners.each_with_index do |v, i|
        # We will almost always see a StripeObject except in the case of a Hash
        # that's been appended to an array of `additional_owners`. We may be
        # able to normalize that ugliness by using an array proxy object with
        # StripeObjects that can detect appends and replace a hash with a
        # StripeObject.
        update = v.is_a?(StripeObject) ? v.serialize_params : v

        next unless update != {} && (!original_value ||
          update != legal_entity.serialize_params_value(original_value[i], nil,
                                                        false, true))

        update_hash[i.to_s] = update
      end
      update_hash
    end
  end
end
