# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing a Stripe account. You can retrieve it to see
  # properties on the account like its current requirements or if the account is
  # enabled to make live charges or receive payouts.
  #
  # For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  # is `application`, which includes Custom accounts, the properties below are always
  # returned.
  #
  # For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  # is `stripe`, which includes Standard and Express accounts, some properties are only returned
  # until you create an [Account Link](https://docs.stripe.com/api/account_links) or [Account Session](https://docs.stripe.com/api/account_sessions)
  # to start Connect Onboarding. Learn about the [differences between accounts](https://docs.stripe.com/connect/accounts).
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
      # Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
      attr_reader :minority_owned_business_designation
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
      # The status of the Billie capability of the account, or whether the account can directly process Billie payments.
      attr_reader :billie_payments
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
      # The status of the Crypto capability of the account, or whether the account can directly process Crypto payments.
      attr_reader :crypto_payments
      # The status of the EPS payments capability of the account, or whether the account can directly process EPS charges.
      attr_reader :eps_payments
      # The status of the FPX payments capability of the account, or whether the account can directly process FPX charges.
      attr_reader :fpx_payments
      # The status of the GB customer_balance payments (GBP currency) capability of the account, or whether the account can directly process GB customer_balance charges.
      attr_reader :gb_bank_transfer_payments
      # The status of the giropay payments capability of the account, or whether the account can directly process giropay charges.
      attr_reader :giropay_payments
      # The status of the GrabPay payments capability of the account, or whether the account can directly process GrabPay charges.
      attr_reader :grabpay_payments
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
      # The status of the MobilePay capability of the account, or whether the account can directly process MobilePay charges.
      attr_reader :mobilepay_payments
      # The status of the Multibanco payments capability of the account, or whether the account can directly process Multibanco charges.
      attr_reader :multibanco_payments
      # The status of the Mexican customer_balance payments (MXN currency) capability of the account, or whether the account can directly process Mexican customer_balance charges.
      attr_reader :mx_bank_transfer_payments
      # The status of the NaverPay capability of the account, or whether the account can directly process NaverPay payments.
      attr_reader :naver_pay_payments
      # The status of the New Zealand BECS Direct Debit payments capability of the account, or whether the account can directly process New Zealand BECS Direct Debit charges.
      attr_reader :nz_bank_account_becs_debit_payments
      # The status of the OXXO payments capability of the account, or whether the account can directly process OXXO charges.
      attr_reader :oxxo_payments
      # The status of the P24 payments capability of the account, or whether the account can directly process P24 charges.
      attr_reader :p24_payments
      # The status of the pay_by_bank payments capability of the account, or whether the account can directly process pay_by_bank charges.
      attr_reader :pay_by_bank_payments
      # The status of the Payco capability of the account, or whether the account can directly process Payco payments.
      attr_reader :payco_payments
      # The status of the paynow payments capability of the account, or whether the account can directly process paynow charges.
      attr_reader :paynow_payments
      # The status of the pix payments capability of the account, or whether the account can directly process pix charges.
      attr_reader :pix_payments
      # The status of the promptpay payments capability of the account, or whether the account can directly process promptpay charges.
      attr_reader :promptpay_payments
      # The status of the RevolutPay capability of the account, or whether the account can directly process RevolutPay payments.
      attr_reader :revolut_pay_payments
      # The status of the SamsungPay capability of the account, or whether the account can directly process SamsungPay payments.
      attr_reader :samsung_pay_payments
      # The status of the Satispay capability of the account, or whether the account can directly process Satispay payments.
      attr_reader :satispay_payments
      # The status of the SEPA customer_balance payments (EUR currency) capability of the account, or whether the account can directly process SEPA customer_balance charges.
      attr_reader :sepa_bank_transfer_payments
      # The status of the SEPA Direct Debits payments capability of the account, or whether the account can directly process SEPA Direct Debits charges.
      attr_reader :sepa_debit_payments
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

      class DirectorshipDeclaration < Stripe::StripeObject
        # The Unix timestamp marking when the directorship declaration attestation was made.
        attr_reader :date
        # The IP address from which the directorship declaration attestation was made.
        attr_reader :ip
        # The user-agent string from the browser where the directorship declaration attestation was made.
        attr_reader :user_agent
      end

      class OwnershipDeclaration < Stripe::StripeObject
        # The Unix timestamp marking when the beneficial owner attestation was made.
        attr_reader :date
        # The IP address from which the beneficial owner attestation was made.
        attr_reader :ip
        # The user-agent string from the browser where the beneficial owner attestation was made.
        attr_reader :user_agent
      end

      class RegistrationDate < Stripe::StripeObject
        # The day of registration, between 1 and 31.
        attr_reader :day
        # The month of registration, between 1 and 12.
        attr_reader :month
        # The four-digit year of registration.
        attr_reader :year
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
      # This hash is used to attest that the director information provided to Stripe is both current and correct.
      attr_reader :directorship_declaration
      # Whether the company's executives have been provided. This Boolean will be `true` if you've manually indicated that all executives are provided via [the `executives_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-executives_provided), or if Stripe determined that sufficient executives were provided.
      attr_reader :executives_provided
      # The export license ID number of the company, also referred as Import Export Code (India only).
      attr_reader :export_license_id
      # The purpose code to use for export transactions (India only).
      attr_reader :export_purpose_code
      # The company's legal name. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
      attr_reader :name
      # The Kana variation of the company's legal name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
      attr_reader :name_kana
      # The Kanji variation of the company's legal name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
      attr_reader :name_kanji
      # Whether the company's owners have been provided. This Boolean will be `true` if you've manually indicated that all owners are provided via [the `owners_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-owners_provided), or if Stripe determined that sufficient owners were provided. Stripe determines ownership requirements using both the number of owners provided and their total percent ownership (calculated by adding the `percent_ownership` of each owner together).
      attr_reader :owners_provided
      # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
      attr_reader :ownership_declaration
      # This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details.
      attr_reader :ownership_exemption_reason
      # The company's phone number (used for verification).
      attr_reader :phone
      # Attribute for field registration_date
      attr_reader :registration_date
      # The category identifying the legal structure of the company or legal entity. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. See [Business structure](https://stripe.com/docs/connect/identity-verification#business-structure) for more details.
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
      # Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well.
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
      # Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
      attr_reader :eventually_due
      # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the account.
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
      attr_reader :pending_verification
    end

    class Settings < Stripe::StripeObject
      class BacsDebitPayments < Stripe::StripeObject
        # The Bacs Direct Debit display name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. The fee appears 5 business days after requesting Bacs. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
        attr_reader :display_name
        # The Bacs Direct Debit Service user number for this account. For payments made with Bacs Direct Debit, this number is a unique identifier of the account with our banking partners.
        attr_reader :service_user_number
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
        # Whether payment methods should be saved when a payment is completed for a one-time invoices on a hosted invoice page.
        attr_reader :hosted_payment_method_save
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
          # The days of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
          attr_reader :monthly_payout_days
          # The day of the week funds will be paid out, of the style 'monday', 'tuesday', etc. Only shown if `interval` is weekly.
          attr_reader :weekly_anchor
          # The days of the week when available funds are paid out, specified as an array, for example, [`monday`, `tuesday`]. Only shown if `interval` is weekly.
          attr_reader :weekly_payout_days
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
      # Attribute for field branding
      attr_reader :branding
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

    class DeleteParams < Stripe::RequestParams; end

    class UpdateParams < Stripe::RequestParams
      class BankAccount < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        attr_accessor :account_holder_name
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        attr_accessor :account_holder_type
        # The account number for the bank account, in string form. Must be a checking account.
        attr_accessor :account_number
        # The country in which the bank account is located.
        attr_accessor :country
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        attr_accessor :currency
        # The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required.
        attr_accessor :routing_number

        def initialize(
          object: nil,
          account_holder_name: nil,
          account_holder_type: nil,
          account_number: nil,
          country: nil,
          currency: nil,
          routing_number: nil
        )
          @object = object
          @account_holder_name = account_holder_name
          @account_holder_type = account_holder_type
          @account_number = account_number
          @country = country
          @currency = currency
          @routing_number = routing_number
        end
      end

      class BusinessProfile < Stripe::RequestParams
        class AnnualRevenue < Stripe::RequestParams
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
          attr_accessor :fiscal_year_end

          def initialize(amount: nil, currency: nil, fiscal_year_end: nil)
            @amount = amount
            @currency = currency
            @fiscal_year_end = fiscal_year_end
          end
        end

        class MonthlyEstimatedRevenue < Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](/currencies#zero-decimal).
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency

          def initialize(amount: nil, currency: nil)
            @amount = amount
            @currency = currency
          end
        end

        class SupportAddress < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end
        # The applicant's gross annual revenue for its preceding fiscal year.
        attr_accessor :annual_revenue
        # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
        attr_accessor :estimated_worker_count
        # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
        attr_accessor :mcc
        # Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
        attr_accessor :minority_owned_business_designation
        # An estimate of the monthly revenue of the business. Only accepted for accounts in Brazil and India.
        attr_accessor :monthly_estimated_revenue
        # The customer-facing business name.
        attr_accessor :name
        # Internal-only description of the product sold by, or service provided by, the business. Used by Stripe for risk and underwriting purposes.
        attr_accessor :product_description
        # A publicly available mailing address for sending support issues to.
        attr_accessor :support_address
        # A publicly available email address for sending support issues to.
        attr_accessor :support_email
        # A publicly available phone number to call with support issues.
        attr_accessor :support_phone
        # A publicly available website for handling support issues.
        attr_accessor :support_url
        # The business's publicly available website.
        attr_accessor :url

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
        )
          @annual_revenue = annual_revenue
          @estimated_worker_count = estimated_worker_count
          @mcc = mcc
          @minority_owned_business_designation = minority_owned_business_designation
          @monthly_estimated_revenue = monthly_estimated_revenue
          @name = name
          @product_description = product_description
          @support_address = support_address
          @support_email = support_email
          @support_phone = support_phone
          @support_url = support_url
          @url = url
        end
      end

      class Capabilities < Stripe::RequestParams
        class AcssDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AffirmPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AfterpayClearpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AlmaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AmazonPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AuBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BacsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BancontactPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BilliePayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BlikPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BoletoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CardIssuing < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CartesBancairesPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CashappPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CryptoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class EpsPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class FpxPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class GbBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class GiropayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class GrabpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class IdealPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class IndiaInternationalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class JcbPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class JpBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KakaoPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KlarnaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KonbiniPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KrCardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class LegacyPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class LinkPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class MobilepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class MultibancoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class MxBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class NaverPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class NzBankAccountBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class OxxoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class P24Payments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PayByBankPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PaycoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PaynowPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PixPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PromptpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class RevolutPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SamsungPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SatispayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SepaBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SepaDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SofortPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SwishPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class TaxReportingUs1099K < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class TaxReportingUs1099Misc < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class Transfers < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class Treasury < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class TwintPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class UsBankAccountAchPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class UsBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class ZipPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end
        # The acss_debit_payments capability.
        attr_accessor :acss_debit_payments
        # The affirm_payments capability.
        attr_accessor :affirm_payments
        # The afterpay_clearpay_payments capability.
        attr_accessor :afterpay_clearpay_payments
        # The alma_payments capability.
        attr_accessor :alma_payments
        # The amazon_pay_payments capability.
        attr_accessor :amazon_pay_payments
        # The au_becs_debit_payments capability.
        attr_accessor :au_becs_debit_payments
        # The bacs_debit_payments capability.
        attr_accessor :bacs_debit_payments
        # The bancontact_payments capability.
        attr_accessor :bancontact_payments
        # The bank_transfer_payments capability.
        attr_accessor :bank_transfer_payments
        # The billie_payments capability.
        attr_accessor :billie_payments
        # The blik_payments capability.
        attr_accessor :blik_payments
        # The boleto_payments capability.
        attr_accessor :boleto_payments
        # The card_issuing capability.
        attr_accessor :card_issuing
        # The card_payments capability.
        attr_accessor :card_payments
        # The cartes_bancaires_payments capability.
        attr_accessor :cartes_bancaires_payments
        # The cashapp_payments capability.
        attr_accessor :cashapp_payments
        # The crypto_payments capability.
        attr_accessor :crypto_payments
        # The eps_payments capability.
        attr_accessor :eps_payments
        # The fpx_payments capability.
        attr_accessor :fpx_payments
        # The gb_bank_transfer_payments capability.
        attr_accessor :gb_bank_transfer_payments
        # The giropay_payments capability.
        attr_accessor :giropay_payments
        # The grabpay_payments capability.
        attr_accessor :grabpay_payments
        # The ideal_payments capability.
        attr_accessor :ideal_payments
        # The india_international_payments capability.
        attr_accessor :india_international_payments
        # The jcb_payments capability.
        attr_accessor :jcb_payments
        # The jp_bank_transfer_payments capability.
        attr_accessor :jp_bank_transfer_payments
        # The kakao_pay_payments capability.
        attr_accessor :kakao_pay_payments
        # The klarna_payments capability.
        attr_accessor :klarna_payments
        # The konbini_payments capability.
        attr_accessor :konbini_payments
        # The kr_card_payments capability.
        attr_accessor :kr_card_payments
        # The legacy_payments capability.
        attr_accessor :legacy_payments
        # The link_payments capability.
        attr_accessor :link_payments
        # The mobilepay_payments capability.
        attr_accessor :mobilepay_payments
        # The multibanco_payments capability.
        attr_accessor :multibanco_payments
        # The mx_bank_transfer_payments capability.
        attr_accessor :mx_bank_transfer_payments
        # The naver_pay_payments capability.
        attr_accessor :naver_pay_payments
        # The nz_bank_account_becs_debit_payments capability.
        attr_accessor :nz_bank_account_becs_debit_payments
        # The oxxo_payments capability.
        attr_accessor :oxxo_payments
        # The p24_payments capability.
        attr_accessor :p24_payments
        # The pay_by_bank_payments capability.
        attr_accessor :pay_by_bank_payments
        # The payco_payments capability.
        attr_accessor :payco_payments
        # The paynow_payments capability.
        attr_accessor :paynow_payments
        # The pix_payments capability.
        attr_accessor :pix_payments
        # The promptpay_payments capability.
        attr_accessor :promptpay_payments
        # The revolut_pay_payments capability.
        attr_accessor :revolut_pay_payments
        # The samsung_pay_payments capability.
        attr_accessor :samsung_pay_payments
        # The satispay_payments capability.
        attr_accessor :satispay_payments
        # The sepa_bank_transfer_payments capability.
        attr_accessor :sepa_bank_transfer_payments
        # The sepa_debit_payments capability.
        attr_accessor :sepa_debit_payments
        # The sofort_payments capability.
        attr_accessor :sofort_payments
        # The swish_payments capability.
        attr_accessor :swish_payments
        # The tax_reporting_us_1099_k capability.
        attr_accessor :tax_reporting_us_1099_k
        # The tax_reporting_us_1099_misc capability.
        attr_accessor :tax_reporting_us_1099_misc
        # The transfers capability.
        attr_accessor :transfers
        # The treasury capability.
        attr_accessor :treasury
        # The twint_payments capability.
        attr_accessor :twint_payments
        # The us_bank_account_ach_payments capability.
        attr_accessor :us_bank_account_ach_payments
        # The us_bank_transfer_payments capability.
        attr_accessor :us_bank_transfer_payments
        # The zip_payments capability.
        attr_accessor :zip_payments

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
        )
          @acss_debit_payments = acss_debit_payments
          @affirm_payments = affirm_payments
          @afterpay_clearpay_payments = afterpay_clearpay_payments
          @alma_payments = alma_payments
          @amazon_pay_payments = amazon_pay_payments
          @au_becs_debit_payments = au_becs_debit_payments
          @bacs_debit_payments = bacs_debit_payments
          @bancontact_payments = bancontact_payments
          @bank_transfer_payments = bank_transfer_payments
          @billie_payments = billie_payments
          @blik_payments = blik_payments
          @boleto_payments = boleto_payments
          @card_issuing = card_issuing
          @card_payments = card_payments
          @cartes_bancaires_payments = cartes_bancaires_payments
          @cashapp_payments = cashapp_payments
          @crypto_payments = crypto_payments
          @eps_payments = eps_payments
          @fpx_payments = fpx_payments
          @gb_bank_transfer_payments = gb_bank_transfer_payments
          @giropay_payments = giropay_payments
          @grabpay_payments = grabpay_payments
          @ideal_payments = ideal_payments
          @india_international_payments = india_international_payments
          @jcb_payments = jcb_payments
          @jp_bank_transfer_payments = jp_bank_transfer_payments
          @kakao_pay_payments = kakao_pay_payments
          @klarna_payments = klarna_payments
          @konbini_payments = konbini_payments
          @kr_card_payments = kr_card_payments
          @legacy_payments = legacy_payments
          @link_payments = link_payments
          @mobilepay_payments = mobilepay_payments
          @multibanco_payments = multibanco_payments
          @mx_bank_transfer_payments = mx_bank_transfer_payments
          @naver_pay_payments = naver_pay_payments
          @nz_bank_account_becs_debit_payments = nz_bank_account_becs_debit_payments
          @oxxo_payments = oxxo_payments
          @p24_payments = p24_payments
          @pay_by_bank_payments = pay_by_bank_payments
          @payco_payments = payco_payments
          @paynow_payments = paynow_payments
          @pix_payments = pix_payments
          @promptpay_payments = promptpay_payments
          @revolut_pay_payments = revolut_pay_payments
          @samsung_pay_payments = samsung_pay_payments
          @satispay_payments = satispay_payments
          @sepa_bank_transfer_payments = sepa_bank_transfer_payments
          @sepa_debit_payments = sepa_debit_payments
          @sofort_payments = sofort_payments
          @swish_payments = swish_payments
          @tax_reporting_us_1099_k = tax_reporting_us_1099_k
          @tax_reporting_us_1099_misc = tax_reporting_us_1099_misc
          @transfers = transfers
          @treasury = treasury
          @twint_payments = twint_payments
          @us_bank_account_ach_payments = us_bank_account_ach_payments
          @us_bank_transfer_payments = us_bank_transfer_payments
          @zip_payments = zip_payments
        end
      end

      class Card < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # Attribute for param field address_city
        attr_accessor :address_city
        # Attribute for param field address_country
        attr_accessor :address_country
        # Attribute for param field address_line1
        attr_accessor :address_line1
        # Attribute for param field address_line2
        attr_accessor :address_line2
        # Attribute for param field address_state
        attr_accessor :address_state
        # Attribute for param field address_zip
        attr_accessor :address_zip
        # Attribute for param field currency
        attr_accessor :currency
        # Attribute for param field cvc
        attr_accessor :cvc
        # Attribute for param field exp_month
        attr_accessor :exp_month
        # Attribute for param field exp_year
        attr_accessor :exp_year
        # Attribute for param field name
        attr_accessor :name
        # Attribute for param field number
        attr_accessor :number
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # Attribute for param field default_for_currency
        attr_accessor :default_for_currency

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
        )
          @object = object
          @address_city = address_city
          @address_country = address_country
          @address_line1 = address_line1
          @address_line2 = address_line2
          @address_state = address_state
          @address_zip = address_zip
          @currency = currency
          @cvc = cvc
          @exp_month = exp_month
          @exp_year = exp_year
          @name = name
          @number = number
          @metadata = metadata
          @default_for_currency = default_for_currency
        end
      end

      class CardToken < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # Attribute for param field currency
        attr_accessor :currency
        # Attribute for param field token
        attr_accessor :token

        def initialize(object: nil, currency: nil, token: nil)
          @object = object
          @currency = currency
          @token = token
        end
      end

      class Company < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end

        class AddressKana < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class AddressKanji < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class DirectorshipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the directorship declaration attestation was made.
          attr_accessor :date
          # The IP address from which the directorship declaration attestation was made.
          attr_accessor :ip
          # The user agent of the browser from which the directorship declaration attestation was made.
          attr_accessor :user_agent

          def initialize(date: nil, ip: nil, user_agent: nil)
            @date = date
            @ip = ip
            @user_agent = user_agent
          end
        end

        class OwnershipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the beneficial owner attestation was made.
          attr_accessor :date
          # The IP address from which the beneficial owner attestation was made.
          attr_accessor :ip
          # The user agent of the browser from which the beneficial owner attestation was made.
          attr_accessor :user_agent

          def initialize(date: nil, ip: nil, user_agent: nil)
            @date = date
            @ip = ip
            @user_agent = user_agent
          end
        end

        class RegistrationDate < Stripe::RequestParams
          # The day of registration, between 1 and 31.
          attr_accessor :day
          # The month of registration, between 1 and 12.
          attr_accessor :month
          # The four-digit year of registration.
          attr_accessor :year

          def initialize(day: nil, month: nil, year: nil)
            @day = day
            @month = month
            @year = year
          end
        end

        class Verification < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :back
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :front

            def initialize(back: nil, front: nil)
              @back = back
              @front = front
            end
          end
          # A document verifying the business.
          attr_accessor :document

          def initialize(document: nil)
            @document = document
          end
        end
        # The company's primary address.
        attr_accessor :address
        # The Kana variation of the company's primary address (Japan only).
        attr_accessor :address_kana
        # The Kanji variation of the company's primary address (Japan only).
        attr_accessor :address_kanji
        # Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
        attr_accessor :directors_provided
        # This hash is used to attest that the directors information provided to Stripe is both current and correct.
        attr_accessor :directorship_declaration
        # Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](/api/persons) for accounts with a `relationship.executive` requirement.
        attr_accessor :executives_provided
        # The export license ID number of the company, also referred as Import Export Code (India only).
        attr_accessor :export_license_id
        # The purpose code to use for export transactions (India only).
        attr_accessor :export_purpose_code
        # The company's legal name.
        attr_accessor :name
        # The Kana variation of the company's legal name (Japan only).
        attr_accessor :name_kana
        # The Kanji variation of the company's legal name (Japan only).
        attr_accessor :name_kanji
        # Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](/api/persons) for accounts with a `relationship.owner` requirement.
        attr_accessor :owners_provided
        # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
        attr_accessor :ownership_declaration
        # This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details.
        attr_accessor :ownership_exemption_reason
        # The company's phone number (used for verification).
        attr_accessor :phone
        # Attribute for param field registration_date
        attr_accessor :registration_date
        # The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong).
        attr_accessor :registration_number
        # The category identifying the legal structure of the company or legal entity. See [Business structure](/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value.
        attr_accessor :structure
        # The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.)
        attr_accessor :tax_id
        # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
        attr_accessor :tax_id_registrar
        # The VAT number of the company.
        attr_accessor :vat_id
        # Information on the verification state of the company.
        attr_accessor :verification

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
        )
          @address = address
          @address_kana = address_kana
          @address_kanji = address_kanji
          @directors_provided = directors_provided
          @directorship_declaration = directorship_declaration
          @executives_provided = executives_provided
          @export_license_id = export_license_id
          @export_purpose_code = export_purpose_code
          @name = name
          @name_kana = name_kana
          @name_kanji = name_kanji
          @owners_provided = owners_provided
          @ownership_declaration = ownership_declaration
          @ownership_exemption_reason = ownership_exemption_reason
          @phone = phone
          @registration_date = registration_date
          @registration_number = registration_number
          @structure = structure
          @tax_id = tax_id
          @tax_id_registrar = tax_id_registrar
          @vat_id = vat_id
          @verification = verification
        end
      end

      class Documents < Stripe::RequestParams
        class BankAccountOwnershipVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyLicense < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyMemorandumOfAssociation < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyMinisterialDecree < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyRegistrationVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyTaxIdVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class ProofOfAddress < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class ProofOfRegistration < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
        attr_accessor :bank_account_ownership_verification
        # One or more documents that demonstrate proof of a company's license to operate.
        attr_accessor :company_license
        # One or more documents showing the company's Memorandum of Association.
        attr_accessor :company_memorandum_of_association
        # (Certain countries only) One or more documents showing the ministerial decree legalizing the company's establishment.
        attr_accessor :company_ministerial_decree
        # One or more documents that demonstrate proof of a company's registration with the appropriate local authorities.
        attr_accessor :company_registration_verification
        # One or more documents that demonstrate proof of a company's tax ID.
        attr_accessor :company_tax_id_verification
        # One or more documents that demonstrate proof of address.
        attr_accessor :proof_of_address
        # One or more documents showing the company’s proof of registration with the national business registry.
        attr_accessor :proof_of_registration
        # One or more documents that demonstrate proof of ultimate beneficial ownership.
        attr_accessor :proof_of_ultimate_beneficial_ownership

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
        )
          @bank_account_ownership_verification = bank_account_ownership_verification
          @company_license = company_license
          @company_memorandum_of_association = company_memorandum_of_association
          @company_ministerial_decree = company_ministerial_decree
          @company_registration_verification = company_registration_verification
          @company_tax_id_verification = company_tax_id_verification
          @proof_of_address = proof_of_address
          @proof_of_registration = proof_of_registration
          @proof_of_ultimate_beneficial_ownership = proof_of_ultimate_beneficial_ownership
        end
      end

      class Groups < Stripe::RequestParams
        # The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://stripe.com/docs/connect/platform-pricing-tools) for details.
        attr_accessor :payments_pricing

        def initialize(payments_pricing: nil)
          @payments_pricing = payments_pricing
        end
      end

      class Individual < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end

        class AddressKana < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class AddressKanji < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class Dob < Stripe::RequestParams
          # The day of birth, between 1 and 31.
          attr_accessor :day
          # The month of birth, between 1 and 12.
          attr_accessor :month
          # The four-digit year of birth.
          attr_accessor :year

          def initialize(day: nil, month: nil, year: nil)
            @day = day
            @month = month
            @year = year
          end
        end

        class RegisteredAddress < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end

        class Relationship < Stripe::RequestParams
          # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
          attr_accessor :director
          # Whether the person has significant responsibility to control, manage, or direct the organization.
          attr_accessor :executive
          # Whether the person is an owner of the account’s legal entity.
          attr_accessor :owner
          # The percent owned by the person of the account's legal entity.
          attr_accessor :percent_ownership
          # The person's title (e.g., CEO, Support Engineer).
          attr_accessor :title

          def initialize(
            director: nil,
            executive: nil,
            owner: nil,
            percent_ownership: nil,
            title: nil
          )
            @director = director
            @executive = executive
            @owner = owner
            @percent_ownership = percent_ownership
            @title = title
          end
        end

        class Verification < Stripe::RequestParams
          class AdditionalDocument < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :front

            def initialize(back: nil, front: nil)
              @back = back
              @front = front
            end
          end

          class Document < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :front

            def initialize(back: nil, front: nil)
              @back = back
              @front = front
            end
          end
          # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
          attr_accessor :additional_document
          # An identifying document, either a passport or local ID card.
          attr_accessor :document

          def initialize(additional_document: nil, document: nil)
            @additional_document = additional_document
            @document = document
          end
        end
        # The individual's primary address.
        attr_accessor :address
        # The Kana variation of the individual's primary address (Japan only).
        attr_accessor :address_kana
        # The Kanji variation of the individual's primary address (Japan only).
        attr_accessor :address_kanji
        # The individual's date of birth.
        attr_accessor :dob
        # The individual's email address.
        attr_accessor :email
        # The individual's first name.
        attr_accessor :first_name
        # The Kana variation of the individual's first name (Japan only).
        attr_accessor :first_name_kana
        # The Kanji variation of the individual's first name (Japan only).
        attr_accessor :first_name_kanji
        # A list of alternate names or aliases that the individual is known by.
        attr_accessor :full_name_aliases
        # The individual's gender
        attr_accessor :gender
        # The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        attr_accessor :id_number
        # The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        attr_accessor :id_number_secondary
        # The individual's last name.
        attr_accessor :last_name
        # The Kana variation of the individual's last name (Japan only).
        attr_accessor :last_name_kana
        # The Kanji variation of the individual's last name (Japan only).
        attr_accessor :last_name_kanji
        # The individual's maiden name.
        attr_accessor :maiden_name
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The individual's phone number.
        attr_accessor :phone
        # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
        attr_accessor :political_exposure
        # The individual's registered address.
        attr_accessor :registered_address
        # Describes the person’s relationship to the account.
        attr_accessor :relationship
        # The last four digits of the individual's Social Security Number (U.S. only).
        attr_accessor :ssn_last_4
        # The individual's verification document information.
        attr_accessor :verification

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
        )
          @address = address
          @address_kana = address_kana
          @address_kanji = address_kanji
          @dob = dob
          @email = email
          @first_name = first_name
          @first_name_kana = first_name_kana
          @first_name_kanji = first_name_kanji
          @full_name_aliases = full_name_aliases
          @gender = gender
          @id_number = id_number
          @id_number_secondary = id_number_secondary
          @last_name = last_name
          @last_name_kana = last_name_kana
          @last_name_kanji = last_name_kanji
          @maiden_name = maiden_name
          @metadata = metadata
          @phone = phone
          @political_exposure = political_exposure
          @registered_address = registered_address
          @relationship = relationship
          @ssn_last_4 = ssn_last_4
          @verification = verification
        end
      end

      class Settings < Stripe::RequestParams
        class BacsDebitPayments < Stripe::RequestParams
          # The Bacs Direct Debit Display Name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
          attr_accessor :display_name

          def initialize(display_name: nil)
            @display_name = display_name
          end
        end

        class Branding < Stripe::RequestParams
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
          attr_accessor :icon
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
          attr_accessor :logo
          # A CSS hex color value representing the primary branding color for this account.
          attr_accessor :primary_color
          # A CSS hex color value representing the secondary branding color for this account.
          attr_accessor :secondary_color

          def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil)
            @icon = icon
            @logo = logo
            @primary_color = primary_color
            @secondary_color = secondary_color
          end
        end

        class CardIssuing < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            attr_accessor :user_agent

            def initialize(date: nil, ip: nil, user_agent: nil)
              @date = date
              @ip = ip
              @user_agent = user_agent
            end
          end
          # Details on the account's acceptance of the [Stripe Issuing Terms and Disclosures](/issuing/connect/tos_acceptance).
          attr_accessor :tos_acceptance

          def initialize(tos_acceptance: nil)
            @tos_acceptance = tos_acceptance
          end
        end

        class CardPayments < Stripe::RequestParams
          class DeclineOn < Stripe::RequestParams
            # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
            attr_accessor :avs_failure
            # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
            attr_accessor :cvc_failure

            def initialize(avs_failure: nil, cvc_failure: nil)
              @avs_failure = avs_failure
              @cvc_failure = cvc_failure
            end
          end
          # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
          attr_accessor :decline_on
          # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
          attr_accessor :statement_descriptor_prefix
          # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
          attr_accessor :statement_descriptor_prefix_kana
          # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
          attr_accessor :statement_descriptor_prefix_kanji

          def initialize(
            decline_on: nil,
            statement_descriptor_prefix: nil,
            statement_descriptor_prefix_kana: nil,
            statement_descriptor_prefix_kanji: nil
          )
            @decline_on = decline_on
            @statement_descriptor_prefix = statement_descriptor_prefix
            @statement_descriptor_prefix_kana = statement_descriptor_prefix_kana
            @statement_descriptor_prefix_kanji = statement_descriptor_prefix_kanji
          end
        end

        class Invoices < Stripe::RequestParams
          # The list of default Account Tax IDs to automatically include on invoices. Account Tax IDs get added when an invoice is finalized.
          attr_accessor :default_account_tax_ids
          # Whether payment methods should be saved when a payment is completed for a one-time invoices on a hosted invoice page.
          attr_accessor :hosted_payment_method_save

          def initialize(default_account_tax_ids: nil, hosted_payment_method_save: nil)
            @default_account_tax_ids = default_account_tax_ids
            @hosted_payment_method_save = hosted_payment_method_save
          end
        end

        class Payments < Stripe::RequestParams
          # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don't set a `statement_descriptor_prefix`, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the `statement_descriptor` text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the [account settings documentation](https://docs.stripe.com/get-started/account/statement-descriptors).
          attr_accessor :statement_descriptor
          # The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          attr_accessor :statement_descriptor_kana
          # The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          attr_accessor :statement_descriptor_kanji

          def initialize(
            statement_descriptor: nil,
            statement_descriptor_kana: nil,
            statement_descriptor_kanji: nil
          )
            @statement_descriptor = statement_descriptor
            @statement_descriptor_kana = statement_descriptor_kana
            @statement_descriptor_kanji = statement_descriptor_kanji
          end
        end

        class Payouts < Stripe::RequestParams
          class Schedule < Stripe::RequestParams
            # The number of days charge funds are held before being paid out. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
            attr_accessor :delay_days
            # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
            attr_accessor :interval
            # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
            attr_accessor :monthly_anchor
            # The days of the month when available funds are paid out, specified as an array of numbers between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly` and `monthly_anchor` is not set.
            attr_accessor :monthly_payout_days
            # The day of the week when available funds are paid out, specified as `monday`, `tuesday`, etc. (required and applicable only if `interval` is `weekly`.)
            attr_accessor :weekly_anchor
            # The days of the week when available funds are paid out, specified as an array, e.g., [`monday`, `tuesday`]. (required and applicable only if `interval` is `weekly` and `weekly_anchor` is not set.)
            attr_accessor :weekly_payout_days

            def initialize(
              delay_days: nil,
              interval: nil,
              monthly_anchor: nil,
              monthly_payout_days: nil,
              weekly_anchor: nil,
              weekly_payout_days: nil
            )
              @delay_days = delay_days
              @interval = interval
              @monthly_anchor = monthly_anchor
              @monthly_payout_days = monthly_payout_days
              @weekly_anchor = weekly_anchor
              @weekly_payout_days = weekly_payout_days
            end
          end
          # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
          attr_accessor :debit_negative_balances
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          attr_accessor :schedule
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          attr_accessor :statement_descriptor

          def initialize(debit_negative_balances: nil, schedule: nil, statement_descriptor: nil)
            @debit_negative_balances = debit_negative_balances
            @schedule = schedule
            @statement_descriptor = statement_descriptor
          end
        end

        class Treasury < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            attr_accessor :user_agent

            def initialize(date: nil, ip: nil, user_agent: nil)
              @date = date
              @ip = ip
              @user_agent = user_agent
            end
          end
          # Details on the account's acceptance of the Stripe Treasury Services Agreement.
          attr_accessor :tos_acceptance

          def initialize(tos_acceptance: nil)
            @tos_acceptance = tos_acceptance
          end
        end
        # Settings specific to Bacs Direct Debit payments.
        attr_accessor :bacs_debit_payments
        # Settings used to apply the account's branding to email receipts, invoices, Checkout, and other products.
        attr_accessor :branding
        # Settings specific to the account's use of the Card Issuing product.
        attr_accessor :card_issuing
        # Settings specific to card charging on the account.
        attr_accessor :card_payments
        # Settings specific to the account's use of Invoices.
        attr_accessor :invoices
        # Settings that apply across payment methods for charging on the account.
        attr_accessor :payments
        # Settings specific to the account's payouts.
        attr_accessor :payouts
        # Settings specific to the account's Treasury FinancialAccounts.
        attr_accessor :treasury

        def initialize(
          bacs_debit_payments: nil,
          branding: nil,
          card_issuing: nil,
          card_payments: nil,
          invoices: nil,
          payments: nil,
          payouts: nil,
          treasury: nil
        )
          @bacs_debit_payments = bacs_debit_payments
          @branding = branding
          @card_issuing = card_issuing
          @card_payments = card_payments
          @invoices = invoices
          @payments = payments
          @payouts = payouts
          @treasury = treasury
        end
      end

      class TosAcceptance < Stripe::RequestParams
        # The Unix timestamp marking when the account representative accepted their service agreement.
        attr_accessor :date
        # The IP address from which the account representative accepted their service agreement.
        attr_accessor :ip
        # The user's service agreement type.
        attr_accessor :service_agreement
        # The user agent of the browser from which the account representative accepted their service agreement.
        attr_accessor :user_agent

        def initialize(date: nil, ip: nil, service_agreement: nil, user_agent: nil)
          @date = date
          @ip = ip
          @service_agreement = service_agreement
          @user_agent = user_agent
        end
      end
      # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
      attr_accessor :account_token
      # Business information about the account.
      attr_accessor :business_profile
      # The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :business_type
      # Each key of the dictionary represents a capability, and each capability
      # maps to its settings (for example, whether it has been requested or not). Each
      # capability is inactive until you have provided its specific
      # requirements and Stripe has verified them. An account might have some
      # of its requested capabilities be active and some be inactive.
      #
      # Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)
      # is `none`, which includes Custom accounts.
      attr_accessor :capabilities
      # Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :company
      # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
      attr_accessor :default_currency
      # Documents that may be submitted to satisfy various informational requests.
      attr_accessor :documents
      # The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :external_account
      # A hash of account group type to tokens. These are account groups this account should be added to.
      attr_accessor :groups
      # Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :individual
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Options for customizing how the account functions within Stripe.
      attr_accessor :settings
      # Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
      attr_accessor :tos_acceptance

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
      )
        @account_token = account_token
        @business_profile = business_profile
        @business_type = business_type
        @capabilities = capabilities
        @company = company
        @default_currency = default_currency
        @documents = documents
        @email = email
        @expand = expand
        @external_account = external_account
        @groups = groups
        @individual = individual
        @metadata = metadata
        @settings = settings
        @tos_acceptance = tos_acceptance
      end
    end

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return connected accounts that were created during the given date interval.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(created: nil, ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class BankAccount < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        attr_accessor :account_holder_name
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        attr_accessor :account_holder_type
        # The account number for the bank account, in string form. Must be a checking account.
        attr_accessor :account_number
        # The country in which the bank account is located.
        attr_accessor :country
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        attr_accessor :currency
        # The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required.
        attr_accessor :routing_number

        def initialize(
          object: nil,
          account_holder_name: nil,
          account_holder_type: nil,
          account_number: nil,
          country: nil,
          currency: nil,
          routing_number: nil
        )
          @object = object
          @account_holder_name = account_holder_name
          @account_holder_type = account_holder_type
          @account_number = account_number
          @country = country
          @currency = currency
          @routing_number = routing_number
        end
      end

      class BusinessProfile < Stripe::RequestParams
        class AnnualRevenue < Stripe::RequestParams
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
          attr_accessor :fiscal_year_end

          def initialize(amount: nil, currency: nil, fiscal_year_end: nil)
            @amount = amount
            @currency = currency
            @fiscal_year_end = fiscal_year_end
          end
        end

        class MonthlyEstimatedRevenue < Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](/currencies#zero-decimal).
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency

          def initialize(amount: nil, currency: nil)
            @amount = amount
            @currency = currency
          end
        end

        class SupportAddress < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end
        # The applicant's gross annual revenue for its preceding fiscal year.
        attr_accessor :annual_revenue
        # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
        attr_accessor :estimated_worker_count
        # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
        attr_accessor :mcc
        # Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
        attr_accessor :minority_owned_business_designation
        # An estimate of the monthly revenue of the business. Only accepted for accounts in Brazil and India.
        attr_accessor :monthly_estimated_revenue
        # The customer-facing business name.
        attr_accessor :name
        # Internal-only description of the product sold by, or service provided by, the business. Used by Stripe for risk and underwriting purposes.
        attr_accessor :product_description
        # A publicly available mailing address for sending support issues to.
        attr_accessor :support_address
        # A publicly available email address for sending support issues to.
        attr_accessor :support_email
        # A publicly available phone number to call with support issues.
        attr_accessor :support_phone
        # A publicly available website for handling support issues.
        attr_accessor :support_url
        # The business's publicly available website.
        attr_accessor :url

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
        )
          @annual_revenue = annual_revenue
          @estimated_worker_count = estimated_worker_count
          @mcc = mcc
          @minority_owned_business_designation = minority_owned_business_designation
          @monthly_estimated_revenue = monthly_estimated_revenue
          @name = name
          @product_description = product_description
          @support_address = support_address
          @support_email = support_email
          @support_phone = support_phone
          @support_url = support_url
          @url = url
        end
      end

      class Capabilities < Stripe::RequestParams
        class AcssDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AffirmPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AfterpayClearpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AlmaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AmazonPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class AuBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BacsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BancontactPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BilliePayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BlikPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class BoletoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CardIssuing < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CartesBancairesPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CashappPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class CryptoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class EpsPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class FpxPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class GbBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class GiropayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class GrabpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class IdealPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class IndiaInternationalPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class JcbPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class JpBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KakaoPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KlarnaPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KonbiniPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class KrCardPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class LegacyPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class LinkPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class MobilepayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class MultibancoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class MxBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class NaverPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class NzBankAccountBecsDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class OxxoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class P24Payments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PayByBankPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PaycoPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PaynowPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PixPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class PromptpayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class RevolutPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SamsungPayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SatispayPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SepaBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SepaDebitPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SofortPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class SwishPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class TaxReportingUs1099K < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class TaxReportingUs1099Misc < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class Transfers < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class Treasury < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class TwintPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class UsBankAccountAchPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class UsBankTransferPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end

        class ZipPayments < Stripe::RequestParams
          # Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the `requirements` arrays.
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end
        # The acss_debit_payments capability.
        attr_accessor :acss_debit_payments
        # The affirm_payments capability.
        attr_accessor :affirm_payments
        # The afterpay_clearpay_payments capability.
        attr_accessor :afterpay_clearpay_payments
        # The alma_payments capability.
        attr_accessor :alma_payments
        # The amazon_pay_payments capability.
        attr_accessor :amazon_pay_payments
        # The au_becs_debit_payments capability.
        attr_accessor :au_becs_debit_payments
        # The bacs_debit_payments capability.
        attr_accessor :bacs_debit_payments
        # The bancontact_payments capability.
        attr_accessor :bancontact_payments
        # The bank_transfer_payments capability.
        attr_accessor :bank_transfer_payments
        # The billie_payments capability.
        attr_accessor :billie_payments
        # The blik_payments capability.
        attr_accessor :blik_payments
        # The boleto_payments capability.
        attr_accessor :boleto_payments
        # The card_issuing capability.
        attr_accessor :card_issuing
        # The card_payments capability.
        attr_accessor :card_payments
        # The cartes_bancaires_payments capability.
        attr_accessor :cartes_bancaires_payments
        # The cashapp_payments capability.
        attr_accessor :cashapp_payments
        # The crypto_payments capability.
        attr_accessor :crypto_payments
        # The eps_payments capability.
        attr_accessor :eps_payments
        # The fpx_payments capability.
        attr_accessor :fpx_payments
        # The gb_bank_transfer_payments capability.
        attr_accessor :gb_bank_transfer_payments
        # The giropay_payments capability.
        attr_accessor :giropay_payments
        # The grabpay_payments capability.
        attr_accessor :grabpay_payments
        # The ideal_payments capability.
        attr_accessor :ideal_payments
        # The india_international_payments capability.
        attr_accessor :india_international_payments
        # The jcb_payments capability.
        attr_accessor :jcb_payments
        # The jp_bank_transfer_payments capability.
        attr_accessor :jp_bank_transfer_payments
        # The kakao_pay_payments capability.
        attr_accessor :kakao_pay_payments
        # The klarna_payments capability.
        attr_accessor :klarna_payments
        # The konbini_payments capability.
        attr_accessor :konbini_payments
        # The kr_card_payments capability.
        attr_accessor :kr_card_payments
        # The legacy_payments capability.
        attr_accessor :legacy_payments
        # The link_payments capability.
        attr_accessor :link_payments
        # The mobilepay_payments capability.
        attr_accessor :mobilepay_payments
        # The multibanco_payments capability.
        attr_accessor :multibanco_payments
        # The mx_bank_transfer_payments capability.
        attr_accessor :mx_bank_transfer_payments
        # The naver_pay_payments capability.
        attr_accessor :naver_pay_payments
        # The nz_bank_account_becs_debit_payments capability.
        attr_accessor :nz_bank_account_becs_debit_payments
        # The oxxo_payments capability.
        attr_accessor :oxxo_payments
        # The p24_payments capability.
        attr_accessor :p24_payments
        # The pay_by_bank_payments capability.
        attr_accessor :pay_by_bank_payments
        # The payco_payments capability.
        attr_accessor :payco_payments
        # The paynow_payments capability.
        attr_accessor :paynow_payments
        # The pix_payments capability.
        attr_accessor :pix_payments
        # The promptpay_payments capability.
        attr_accessor :promptpay_payments
        # The revolut_pay_payments capability.
        attr_accessor :revolut_pay_payments
        # The samsung_pay_payments capability.
        attr_accessor :samsung_pay_payments
        # The satispay_payments capability.
        attr_accessor :satispay_payments
        # The sepa_bank_transfer_payments capability.
        attr_accessor :sepa_bank_transfer_payments
        # The sepa_debit_payments capability.
        attr_accessor :sepa_debit_payments
        # The sofort_payments capability.
        attr_accessor :sofort_payments
        # The swish_payments capability.
        attr_accessor :swish_payments
        # The tax_reporting_us_1099_k capability.
        attr_accessor :tax_reporting_us_1099_k
        # The tax_reporting_us_1099_misc capability.
        attr_accessor :tax_reporting_us_1099_misc
        # The transfers capability.
        attr_accessor :transfers
        # The treasury capability.
        attr_accessor :treasury
        # The twint_payments capability.
        attr_accessor :twint_payments
        # The us_bank_account_ach_payments capability.
        attr_accessor :us_bank_account_ach_payments
        # The us_bank_transfer_payments capability.
        attr_accessor :us_bank_transfer_payments
        # The zip_payments capability.
        attr_accessor :zip_payments

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
        )
          @acss_debit_payments = acss_debit_payments
          @affirm_payments = affirm_payments
          @afterpay_clearpay_payments = afterpay_clearpay_payments
          @alma_payments = alma_payments
          @amazon_pay_payments = amazon_pay_payments
          @au_becs_debit_payments = au_becs_debit_payments
          @bacs_debit_payments = bacs_debit_payments
          @bancontact_payments = bancontact_payments
          @bank_transfer_payments = bank_transfer_payments
          @billie_payments = billie_payments
          @blik_payments = blik_payments
          @boleto_payments = boleto_payments
          @card_issuing = card_issuing
          @card_payments = card_payments
          @cartes_bancaires_payments = cartes_bancaires_payments
          @cashapp_payments = cashapp_payments
          @crypto_payments = crypto_payments
          @eps_payments = eps_payments
          @fpx_payments = fpx_payments
          @gb_bank_transfer_payments = gb_bank_transfer_payments
          @giropay_payments = giropay_payments
          @grabpay_payments = grabpay_payments
          @ideal_payments = ideal_payments
          @india_international_payments = india_international_payments
          @jcb_payments = jcb_payments
          @jp_bank_transfer_payments = jp_bank_transfer_payments
          @kakao_pay_payments = kakao_pay_payments
          @klarna_payments = klarna_payments
          @konbini_payments = konbini_payments
          @kr_card_payments = kr_card_payments
          @legacy_payments = legacy_payments
          @link_payments = link_payments
          @mobilepay_payments = mobilepay_payments
          @multibanco_payments = multibanco_payments
          @mx_bank_transfer_payments = mx_bank_transfer_payments
          @naver_pay_payments = naver_pay_payments
          @nz_bank_account_becs_debit_payments = nz_bank_account_becs_debit_payments
          @oxxo_payments = oxxo_payments
          @p24_payments = p24_payments
          @pay_by_bank_payments = pay_by_bank_payments
          @payco_payments = payco_payments
          @paynow_payments = paynow_payments
          @pix_payments = pix_payments
          @promptpay_payments = promptpay_payments
          @revolut_pay_payments = revolut_pay_payments
          @samsung_pay_payments = samsung_pay_payments
          @satispay_payments = satispay_payments
          @sepa_bank_transfer_payments = sepa_bank_transfer_payments
          @sepa_debit_payments = sepa_debit_payments
          @sofort_payments = sofort_payments
          @swish_payments = swish_payments
          @tax_reporting_us_1099_k = tax_reporting_us_1099_k
          @tax_reporting_us_1099_misc = tax_reporting_us_1099_misc
          @transfers = transfers
          @treasury = treasury
          @twint_payments = twint_payments
          @us_bank_account_ach_payments = us_bank_account_ach_payments
          @us_bank_transfer_payments = us_bank_transfer_payments
          @zip_payments = zip_payments
        end
      end

      class Card < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # Attribute for param field address_city
        attr_accessor :address_city
        # Attribute for param field address_country
        attr_accessor :address_country
        # Attribute for param field address_line1
        attr_accessor :address_line1
        # Attribute for param field address_line2
        attr_accessor :address_line2
        # Attribute for param field address_state
        attr_accessor :address_state
        # Attribute for param field address_zip
        attr_accessor :address_zip
        # Attribute for param field currency
        attr_accessor :currency
        # Attribute for param field cvc
        attr_accessor :cvc
        # Attribute for param field exp_month
        attr_accessor :exp_month
        # Attribute for param field exp_year
        attr_accessor :exp_year
        # Attribute for param field name
        attr_accessor :name
        # Attribute for param field number
        attr_accessor :number
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # Attribute for param field default_for_currency
        attr_accessor :default_for_currency

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
        )
          @object = object
          @address_city = address_city
          @address_country = address_country
          @address_line1 = address_line1
          @address_line2 = address_line2
          @address_state = address_state
          @address_zip = address_zip
          @currency = currency
          @cvc = cvc
          @exp_month = exp_month
          @exp_year = exp_year
          @name = name
          @number = number
          @metadata = metadata
          @default_for_currency = default_for_currency
        end
      end

      class CardToken < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # Attribute for param field currency
        attr_accessor :currency
        # Attribute for param field token
        attr_accessor :token

        def initialize(object: nil, currency: nil, token: nil)
          @object = object
          @currency = currency
          @token = token
        end
      end

      class Company < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end

        class AddressKana < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class AddressKanji < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class DirectorshipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the directorship declaration attestation was made.
          attr_accessor :date
          # The IP address from which the directorship declaration attestation was made.
          attr_accessor :ip
          # The user agent of the browser from which the directorship declaration attestation was made.
          attr_accessor :user_agent

          def initialize(date: nil, ip: nil, user_agent: nil)
            @date = date
            @ip = ip
            @user_agent = user_agent
          end
        end

        class OwnershipDeclaration < Stripe::RequestParams
          # The Unix timestamp marking when the beneficial owner attestation was made.
          attr_accessor :date
          # The IP address from which the beneficial owner attestation was made.
          attr_accessor :ip
          # The user agent of the browser from which the beneficial owner attestation was made.
          attr_accessor :user_agent

          def initialize(date: nil, ip: nil, user_agent: nil)
            @date = date
            @ip = ip
            @user_agent = user_agent
          end
        end

        class RegistrationDate < Stripe::RequestParams
          # The day of registration, between 1 and 31.
          attr_accessor :day
          # The month of registration, between 1 and 12.
          attr_accessor :month
          # The four-digit year of registration.
          attr_accessor :year

          def initialize(day: nil, month: nil, year: nil)
            @day = day
            @month = month
            @year = year
          end
        end

        class Verification < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :back
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :front

            def initialize(back: nil, front: nil)
              @back = back
              @front = front
            end
          end
          # A document verifying the business.
          attr_accessor :document

          def initialize(document: nil)
            @document = document
          end
        end
        # The company's primary address.
        attr_accessor :address
        # The Kana variation of the company's primary address (Japan only).
        attr_accessor :address_kana
        # The Kanji variation of the company's primary address (Japan only).
        attr_accessor :address_kanji
        # Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
        attr_accessor :directors_provided
        # This hash is used to attest that the directors information provided to Stripe is both current and correct.
        attr_accessor :directorship_declaration
        # Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](/api/persons) for accounts with a `relationship.executive` requirement.
        attr_accessor :executives_provided
        # The export license ID number of the company, also referred as Import Export Code (India only).
        attr_accessor :export_license_id
        # The purpose code to use for export transactions (India only).
        attr_accessor :export_purpose_code
        # The company's legal name.
        attr_accessor :name
        # The Kana variation of the company's legal name (Japan only).
        attr_accessor :name_kana
        # The Kanji variation of the company's legal name (Japan only).
        attr_accessor :name_kanji
        # Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](/api/persons) for accounts with a `relationship.owner` requirement.
        attr_accessor :owners_provided
        # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
        attr_accessor :ownership_declaration
        # This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details.
        attr_accessor :ownership_exemption_reason
        # The company's phone number (used for verification).
        attr_accessor :phone
        # When the business was incorporated or registered.
        attr_accessor :registration_date
        # The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong).
        attr_accessor :registration_number
        # The category identifying the legal structure of the company or legal entity. See [Business structure](/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value.
        attr_accessor :structure
        # The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.)
        attr_accessor :tax_id
        # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
        attr_accessor :tax_id_registrar
        # The VAT number of the company.
        attr_accessor :vat_id
        # Information on the verification state of the company.
        attr_accessor :verification

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
        )
          @address = address
          @address_kana = address_kana
          @address_kanji = address_kanji
          @directors_provided = directors_provided
          @directorship_declaration = directorship_declaration
          @executives_provided = executives_provided
          @export_license_id = export_license_id
          @export_purpose_code = export_purpose_code
          @name = name
          @name_kana = name_kana
          @name_kanji = name_kanji
          @owners_provided = owners_provided
          @ownership_declaration = ownership_declaration
          @ownership_exemption_reason = ownership_exemption_reason
          @phone = phone
          @registration_date = registration_date
          @registration_number = registration_number
          @structure = structure
          @tax_id = tax_id
          @tax_id_registrar = tax_id_registrar
          @vat_id = vat_id
          @verification = verification
        end
      end

      class Controller < Stripe::RequestParams
        class Fees < Stripe::RequestParams
          # A value indicating the responsible payer of Stripe fees on this account. Defaults to `account`. Learn more about [fee behavior on connected accounts](https://docs.stripe.com/connect/direct-charges-fee-payer-behavior).
          attr_accessor :payer

          def initialize(payer: nil)
            @payer = payer
          end
        end

        class Losses < Stripe::RequestParams
          # A value indicating who is liable when this account can't pay back negative balances resulting from payments. Defaults to `stripe`.
          attr_accessor :payments

          def initialize(payments: nil)
            @payments = payments
          end
        end

        class StripeDashboard < Stripe::RequestParams
          # Whether this account should have access to the full Stripe Dashboard (`full`), to the Express Dashboard (`express`), or to no Stripe-hosted dashboard (`none`). Defaults to `full`.
          attr_accessor :type

          def initialize(type: nil)
            @type = type
          end
        end
        # A hash of configuration for who pays Stripe fees for product usage on this account.
        attr_accessor :fees
        # A hash of configuration for products that have negative balance liability, and whether Stripe or a Connect application is responsible for them.
        attr_accessor :losses
        # A value indicating responsibility for collecting updated information when requirements on the account are due or change. Defaults to `stripe`.
        attr_accessor :requirement_collection
        # A hash of configuration for Stripe-hosted dashboards.
        attr_accessor :stripe_dashboard

        def initialize(fees: nil, losses: nil, requirement_collection: nil, stripe_dashboard: nil)
          @fees = fees
          @losses = losses
          @requirement_collection = requirement_collection
          @stripe_dashboard = stripe_dashboard
        end
      end

      class Documents < Stripe::RequestParams
        class BankAccountOwnershipVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyLicense < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyMemorandumOfAssociation < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyMinisterialDecree < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyRegistrationVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class CompanyTaxIdVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class ProofOfAddress < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class ProofOfRegistration < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end

        class ProofOfUltimateBeneficialOwnership < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
        attr_accessor :bank_account_ownership_verification
        # One or more documents that demonstrate proof of a company's license to operate.
        attr_accessor :company_license
        # One or more documents showing the company's Memorandum of Association.
        attr_accessor :company_memorandum_of_association
        # (Certain countries only) One or more documents showing the ministerial decree legalizing the company's establishment.
        attr_accessor :company_ministerial_decree
        # One or more documents that demonstrate proof of a company's registration with the appropriate local authorities.
        attr_accessor :company_registration_verification
        # One or more documents that demonstrate proof of a company's tax ID.
        attr_accessor :company_tax_id_verification
        # One or more documents that demonstrate proof of address.
        attr_accessor :proof_of_address
        # One or more documents showing the company’s proof of registration with the national business registry.
        attr_accessor :proof_of_registration
        # One or more documents that demonstrate proof of ultimate beneficial ownership.
        attr_accessor :proof_of_ultimate_beneficial_ownership

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
        )
          @bank_account_ownership_verification = bank_account_ownership_verification
          @company_license = company_license
          @company_memorandum_of_association = company_memorandum_of_association
          @company_ministerial_decree = company_ministerial_decree
          @company_registration_verification = company_registration_verification
          @company_tax_id_verification = company_tax_id_verification
          @proof_of_address = proof_of_address
          @proof_of_registration = proof_of_registration
          @proof_of_ultimate_beneficial_ownership = proof_of_ultimate_beneficial_ownership
        end
      end

      class Groups < Stripe::RequestParams
        # The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://stripe.com/docs/connect/platform-pricing-tools) for details.
        attr_accessor :payments_pricing

        def initialize(payments_pricing: nil)
          @payments_pricing = payments_pricing
        end
      end

      class Individual < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end

        class AddressKana < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class AddressKanji < Stripe::RequestParams
          # City or ward.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Block or building number.
          attr_accessor :line1
          # Building details.
          attr_accessor :line2
          # Postal code.
          attr_accessor :postal_code
          # Prefecture.
          attr_accessor :state
          # Town or cho-me.
          attr_accessor :town

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil,
            town: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
            @town = town
          end
        end

        class Dob < Stripe::RequestParams
          # The day of birth, between 1 and 31.
          attr_accessor :day
          # The month of birth, between 1 and 12.
          attr_accessor :month
          # The four-digit year of birth.
          attr_accessor :year

          def initialize(day: nil, month: nil, year: nil)
            @day = day
            @month = month
            @year = year
          end
        end

        class RegisteredAddress < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end

        class Relationship < Stripe::RequestParams
          # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
          attr_accessor :director
          # Whether the person has significant responsibility to control, manage, or direct the organization.
          attr_accessor :executive
          # Whether the person is an owner of the account’s legal entity.
          attr_accessor :owner
          # The percent owned by the person of the account's legal entity.
          attr_accessor :percent_ownership
          # The person's title (e.g., CEO, Support Engineer).
          attr_accessor :title

          def initialize(
            director: nil,
            executive: nil,
            owner: nil,
            percent_ownership: nil,
            title: nil
          )
            @director = director
            @executive = executive
            @owner = owner
            @percent_ownership = percent_ownership
            @title = title
          end
        end

        class Verification < Stripe::RequestParams
          class AdditionalDocument < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :front

            def initialize(back: nil, front: nil)
              @back = back
              @front = front
            end
          end

          class Document < Stripe::RequestParams
            # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :back
            # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
            attr_accessor :front

            def initialize(back: nil, front: nil)
              @back = back
              @front = front
            end
          end
          # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
          attr_accessor :additional_document
          # An identifying document, either a passport or local ID card.
          attr_accessor :document

          def initialize(additional_document: nil, document: nil)
            @additional_document = additional_document
            @document = document
          end
        end
        # The individual's primary address.
        attr_accessor :address
        # The Kana variation of the individual's primary address (Japan only).
        attr_accessor :address_kana
        # The Kanji variation of the individual's primary address (Japan only).
        attr_accessor :address_kanji
        # The individual's date of birth.
        attr_accessor :dob
        # The individual's email address.
        attr_accessor :email
        # The individual's first name.
        attr_accessor :first_name
        # The Kana variation of the individual's first name (Japan only).
        attr_accessor :first_name_kana
        # The Kanji variation of the individual's first name (Japan only).
        attr_accessor :first_name_kanji
        # A list of alternate names or aliases that the individual is known by.
        attr_accessor :full_name_aliases
        # The individual's gender
        attr_accessor :gender
        # The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        attr_accessor :id_number
        # The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
        attr_accessor :id_number_secondary
        # The individual's last name.
        attr_accessor :last_name
        # The Kana variation of the individual's last name (Japan only).
        attr_accessor :last_name_kana
        # The Kanji variation of the individual's last name (Japan only).
        attr_accessor :last_name_kanji
        # The individual's maiden name.
        attr_accessor :maiden_name
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The individual's phone number.
        attr_accessor :phone
        # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
        attr_accessor :political_exposure
        # The individual's registered address.
        attr_accessor :registered_address
        # Describes the person’s relationship to the account.
        attr_accessor :relationship
        # The last four digits of the individual's Social Security Number (U.S. only).
        attr_accessor :ssn_last_4
        # The individual's verification document information.
        attr_accessor :verification

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
        )
          @address = address
          @address_kana = address_kana
          @address_kanji = address_kanji
          @dob = dob
          @email = email
          @first_name = first_name
          @first_name_kana = first_name_kana
          @first_name_kanji = first_name_kanji
          @full_name_aliases = full_name_aliases
          @gender = gender
          @id_number = id_number
          @id_number_secondary = id_number_secondary
          @last_name = last_name
          @last_name_kana = last_name_kana
          @last_name_kanji = last_name_kanji
          @maiden_name = maiden_name
          @metadata = metadata
          @phone = phone
          @political_exposure = political_exposure
          @registered_address = registered_address
          @relationship = relationship
          @ssn_last_4 = ssn_last_4
          @verification = verification
        end
      end

      class Settings < Stripe::RequestParams
        class BacsDebitPayments < Stripe::RequestParams
          # The Bacs Direct Debit Display Name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
          attr_accessor :display_name

          def initialize(display_name: nil)
            @display_name = display_name
          end
        end

        class Branding < Stripe::RequestParams
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
          attr_accessor :icon
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
          attr_accessor :logo
          # A CSS hex color value representing the primary branding color for this account.
          attr_accessor :primary_color
          # A CSS hex color value representing the secondary branding color for this account.
          attr_accessor :secondary_color

          def initialize(icon: nil, logo: nil, primary_color: nil, secondary_color: nil)
            @icon = icon
            @logo = logo
            @primary_color = primary_color
            @secondary_color = secondary_color
          end
        end

        class CardIssuing < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            attr_accessor :user_agent

            def initialize(date: nil, ip: nil, user_agent: nil)
              @date = date
              @ip = ip
              @user_agent = user_agent
            end
          end
          # Details on the account's acceptance of the [Stripe Issuing Terms and Disclosures](/issuing/connect/tos_acceptance).
          attr_accessor :tos_acceptance

          def initialize(tos_acceptance: nil)
            @tos_acceptance = tos_acceptance
          end
        end

        class CardPayments < Stripe::RequestParams
          class DeclineOn < Stripe::RequestParams
            # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
            attr_accessor :avs_failure
            # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
            attr_accessor :cvc_failure

            def initialize(avs_failure: nil, cvc_failure: nil)
              @avs_failure = avs_failure
              @cvc_failure = cvc_failure
            end
          end
          # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
          attr_accessor :decline_on
          # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
          attr_accessor :statement_descriptor_prefix
          # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
          attr_accessor :statement_descriptor_prefix_kana
          # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
          attr_accessor :statement_descriptor_prefix_kanji

          def initialize(
            decline_on: nil,
            statement_descriptor_prefix: nil,
            statement_descriptor_prefix_kana: nil,
            statement_descriptor_prefix_kanji: nil
          )
            @decline_on = decline_on
            @statement_descriptor_prefix = statement_descriptor_prefix
            @statement_descriptor_prefix_kana = statement_descriptor_prefix_kana
            @statement_descriptor_prefix_kanji = statement_descriptor_prefix_kanji
          end
        end

        class Invoices < Stripe::RequestParams
          # Whether payment methods should be saved when a payment is completed for a one-time invoices on a hosted invoice page.
          attr_accessor :hosted_payment_method_save

          def initialize(hosted_payment_method_save: nil)
            @hosted_payment_method_save = hosted_payment_method_save
          end
        end

        class Payments < Stripe::RequestParams
          # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don't set a `statement_descriptor_prefix`, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the `statement_descriptor` text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the [account settings documentation](https://docs.stripe.com/get-started/account/statement-descriptors).
          attr_accessor :statement_descriptor
          # The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          attr_accessor :statement_descriptor_kana
          # The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
          attr_accessor :statement_descriptor_kanji

          def initialize(
            statement_descriptor: nil,
            statement_descriptor_kana: nil,
            statement_descriptor_kanji: nil
          )
            @statement_descriptor = statement_descriptor
            @statement_descriptor_kana = statement_descriptor_kana
            @statement_descriptor_kanji = statement_descriptor_kanji
          end
        end

        class Payouts < Stripe::RequestParams
          class Schedule < Stripe::RequestParams
            # The number of days charge funds are held before being paid out. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
            attr_accessor :delay_days
            # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
            attr_accessor :interval
            # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
            attr_accessor :monthly_anchor
            # The days of the month when available funds are paid out, specified as an array of numbers between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly` and `monthly_anchor` is not set.
            attr_accessor :monthly_payout_days
            # The day of the week when available funds are paid out, specified as `monday`, `tuesday`, etc. (required and applicable only if `interval` is `weekly`.)
            attr_accessor :weekly_anchor
            # The days of the week when available funds are paid out, specified as an array, e.g., [`monday`, `tuesday`]. (required and applicable only if `interval` is `weekly` and `weekly_anchor` is not set.)
            attr_accessor :weekly_payout_days

            def initialize(
              delay_days: nil,
              interval: nil,
              monthly_anchor: nil,
              monthly_payout_days: nil,
              weekly_anchor: nil,
              weekly_payout_days: nil
            )
              @delay_days = delay_days
              @interval = interval
              @monthly_anchor = monthly_anchor
              @monthly_payout_days = monthly_payout_days
              @weekly_anchor = weekly_anchor
              @weekly_payout_days = weekly_payout_days
            end
          end
          # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
          attr_accessor :debit_negative_balances
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          attr_accessor :schedule
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          attr_accessor :statement_descriptor

          def initialize(debit_negative_balances: nil, schedule: nil, statement_descriptor: nil)
            @debit_negative_balances = debit_negative_balances
            @schedule = schedule
            @statement_descriptor = statement_descriptor
          end
        end

        class Treasury < Stripe::RequestParams
          class TosAcceptance < Stripe::RequestParams
            # The Unix timestamp marking when the account representative accepted the service agreement.
            attr_accessor :date
            # The IP address from which the account representative accepted the service agreement.
            attr_accessor :ip
            # The user agent of the browser from which the account representative accepted the service agreement.
            attr_accessor :user_agent

            def initialize(date: nil, ip: nil, user_agent: nil)
              @date = date
              @ip = ip
              @user_agent = user_agent
            end
          end
          # Details on the account's acceptance of the Stripe Treasury Services Agreement.
          attr_accessor :tos_acceptance

          def initialize(tos_acceptance: nil)
            @tos_acceptance = tos_acceptance
          end
        end
        # Settings specific to Bacs Direct Debit.
        attr_accessor :bacs_debit_payments
        # Settings used to apply the account's branding to email receipts, invoices, Checkout, and other products.
        attr_accessor :branding
        # Settings specific to the account's use of the Card Issuing product.
        attr_accessor :card_issuing
        # Settings specific to card charging on the account.
        attr_accessor :card_payments
        # Settings specific to the account’s use of Invoices.
        attr_accessor :invoices
        # Settings that apply across payment methods for charging on the account.
        attr_accessor :payments
        # Settings specific to the account's payouts.
        attr_accessor :payouts
        # Settings specific to the account's Treasury FinancialAccounts.
        attr_accessor :treasury

        def initialize(
          bacs_debit_payments: nil,
          branding: nil,
          card_issuing: nil,
          card_payments: nil,
          invoices: nil,
          payments: nil,
          payouts: nil,
          treasury: nil
        )
          @bacs_debit_payments = bacs_debit_payments
          @branding = branding
          @card_issuing = card_issuing
          @card_payments = card_payments
          @invoices = invoices
          @payments = payments
          @payouts = payouts
          @treasury = treasury
        end
      end

      class TosAcceptance < Stripe::RequestParams
        # The Unix timestamp marking when the account representative accepted their service agreement.
        attr_accessor :date
        # The IP address from which the account representative accepted their service agreement.
        attr_accessor :ip
        # The user's service agreement type.
        attr_accessor :service_agreement
        # The user agent of the browser from which the account representative accepted their service agreement.
        attr_accessor :user_agent

        def initialize(date: nil, ip: nil, service_agreement: nil, user_agent: nil)
          @date = date
          @ip = ip
          @service_agreement = service_agreement
          @user_agent = user_agent
        end
      end
      # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
      attr_accessor :account_token
      # Business information about the account.
      attr_accessor :business_profile
      # The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :business_type
      # Each key of the dictionary represents a capability, and each capability
      # maps to its settings (for example, whether it has been requested or not). Each
      # capability is inactive until you have provided its specific
      # requirements and Stripe has verified them. An account might have some
      # of its requested capabilities be active and some be inactive.
      #
      # Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)
      # is `none`, which includes Custom accounts.
      attr_accessor :capabilities
      # Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :company
      # A hash of configuration describing the account controller's attributes.
      attr_accessor :controller
      # The country in which the account holder resides, or in which the business is legally established. This should be an ISO 3166-1 alpha-2 country code. For example, if you are in the United States and the business for which you're creating an account is legally represented in Canada, you would use `CA` as the country for the account being created. Available countries include [Stripe's global markets](https://stripe.com/global) as well as countries where [cross-border payouts](https://stripe.com/docs/connect/cross-border-payouts) are supported.
      attr_accessor :country
      # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
      attr_accessor :default_currency
      # Documents that may be submitted to satisfy various informational requests.
      attr_accessor :documents
      # The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :external_account
      # A hash of account group type to tokens. These are account groups this account should be added to.
      attr_accessor :groups
      # Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
      attr_accessor :individual
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Options for customizing how the account functions within Stripe.
      attr_accessor :settings
      # Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
      attr_accessor :tos_acceptance
      # The type of Stripe account to create. May be one of `custom`, `express` or `standard`.
      attr_accessor :type

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
      )
        @account_token = account_token
        @business_profile = business_profile
        @business_type = business_type
        @capabilities = capabilities
        @company = company
        @controller = controller
        @country = country
        @default_currency = default_currency
        @documents = documents
        @email = email
        @expand = expand
        @external_account = external_account
        @groups = groups
        @individual = individual
        @metadata = metadata
        @settings = settings
        @tos_acceptance = tos_acceptance
        @type = type
      end
    end

    class PersonsParams < Stripe::RequestParams
      class Relationship < Stripe::RequestParams
        # A filter on the list of people returned based on whether these people are authorizers of the account's representative.
        attr_accessor :authorizer
        # A filter on the list of people returned based on whether these people are directors of the account's company.
        attr_accessor :director
        # A filter on the list of people returned based on whether these people are executives of the account's company.
        attr_accessor :executive
        # A filter on the list of people returned based on whether these people are legal guardians of the account's representative.
        attr_accessor :legal_guardian
        # A filter on the list of people returned based on whether these people are owners of the account's company.
        attr_accessor :owner
        # A filter on the list of people returned based on whether these people are the representative of the account's company.
        attr_accessor :representative

        def initialize(
          authorizer: nil,
          director: nil,
          executive: nil,
          legal_guardian: nil,
          owner: nil,
          representative: nil
        )
          @authorizer = authorizer
          @director = director
          @executive = executive
          @legal_guardian = legal_guardian
          @owner = owner
          @representative = representative
        end
      end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Filters on the list of people returned based on the person's relationship to the account's company.
      attr_accessor :relationship
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        relationship: nil,
        starting_after: nil
      )
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @relationship = relationship
        @starting_after = starting_after
      end
    end

    class RejectParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The reason for rejecting the account. Can be `fraud`, `terms_of_service`, or `other`.
      attr_accessor :reason

      def initialize(expand: nil, reason: nil)
        @expand = expand
        @reason = reason
      end
    end
    # Business information about the account.
    attr_reader :business_profile
    # The business type.
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
    # A platform can only access a subset of data in a person for an account where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.
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
    # Options for customizing how the account functions within Stripe.
    attr_reader :settings
    # Attribute for field tos_acceptance
    attr_reader :tos_acceptance
    # The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
    attr_reader :type
    # Always true for a deleted object
    attr_reader :deleted

    # With [Connect](https://docs.stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://docs.stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/accounts", params: params, opts: opts)
    end

    # With [Connect](https://docs.stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts that have access to the standard dashboard and Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. All other Live-mode accounts, can be deleted when all [balances](https://docs.stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def self.delete(account, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(account) }),
        params: params,
        opts: opts
      )
    end

    # With [Connect](https://docs.stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts that have access to the standard dashboard and Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. All other Live-mode accounts, can be deleted when all [balances](https://docs.stripe.com/api/balance/balance_object) are zero.
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

    # Returns a list of accounts connected to your platform via [Connect](https://docs.stripe.com/docs/connect). If you're not a platform, the list is empty.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/accounts", params: params, opts: opts)
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

    # With [Connect](https://docs.stripe.com/connect), you can reject accounts that you have flagged as suspicious.
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

    # With [Connect](https://docs.stripe.com/connect), you can reject accounts that you have flagged as suspicious.
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
    def self.update(account, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(account) }),
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
      super
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
      if (individual = @values[:individual]) && individual.is_a?(Person) && !update_hash.key?(:individual)
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
