# typed: strong
module Stripe
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
      attr_reader :grabpay_payments

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
      attr_reader :promptpay_payments

      sig { returns(String) }
      attr_reader :revolut_pay_payments

      sig { returns(String) }
      attr_reader :samsung_pay_payments

      sig { returns(String) }
      attr_reader :sepa_bank_transfer_payments

      sig { returns(String) }
      attr_reader :sepa_debit_payments

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

    class Settings < Stripe::StripeObject
      class BacsDebitPayments < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { returns(T.nilable(String)) }
        attr_reader :service_user_number
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

      sig { returns(Branding) }
      attr_reader :branding

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
    attr_reader :business_profile

    sig { returns(T.nilable(String)) }
    attr_reader :business_type

    sig { returns(Capabilities) }
    attr_reader :capabilities

    sig { returns(T::Boolean) }
    attr_reader :charges_enabled

    sig { returns(Company) }
    attr_reader :company

    sig { returns(Controller) }
    attr_reader :controller

    sig { returns(String) }
    attr_reader :country

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :default_currency

    sig { returns(T::Boolean) }
    attr_reader :details_submitted

    sig { returns(T.nilable(String)) }
    attr_reader :email

    sig { returns(Stripe::ListObject) }
    attr_reader :external_accounts

    sig { returns(FutureRequirements) }
    attr_reader :future_requirements

    sig { returns(T.nilable(Groups)) }
    attr_reader :groups

    sig { returns(String) }
    attr_reader :id

    sig { returns(Stripe::Person) }
    attr_reader :individual

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Boolean) }
    attr_reader :payouts_enabled

    sig { returns(Requirements) }
    attr_reader :requirements

    sig { returns(T.nilable(Settings)) }
    attr_reader :settings

    sig { returns(TosAcceptance) }
    attr_reader :tos_acceptance

    sig { returns(String) }
    attr_reader :type

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class AccountLink < APIResource
    sig { returns(Integer) }
    attr_reader :created

    sig { returns(Integer) }
    attr_reader :expires_at

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :url
  end
end

module Stripe
  class AccountSession < APIResource
    class Components < Stripe::StripeObject
      class AccountManagement < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication

          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class AccountOnboarding < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication

          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class Balances < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication

          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule

          sig { returns(T::Boolean) }
          attr_reader :external_account_collection

          sig { returns(T::Boolean) }
          attr_reader :instant_payouts

          sig { returns(T::Boolean) }
          attr_reader :standard_payouts
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class Documents < Stripe::StripeObject
        class Features < Stripe::StripeObject
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class NotificationBanner < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication

          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class PaymentDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :capture_payments

          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management

          sig { returns(T::Boolean) }
          attr_reader :dispute_management

          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class Payments < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :capture_payments

          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management

          sig { returns(T::Boolean) }
          attr_reader :dispute_management

          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class Payouts < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication

          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule

          sig { returns(T::Boolean) }
          attr_reader :external_account_collection

          sig { returns(T::Boolean) }
          attr_reader :instant_payouts

          sig { returns(T::Boolean) }
          attr_reader :standard_payouts
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class PayoutsList < Stripe::StripeObject
        class Features < Stripe::StripeObject
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class TaxRegistrations < Stripe::StripeObject
        class Features < Stripe::StripeObject
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      class TaxSettings < Stripe::StripeObject
        class Features < Stripe::StripeObject
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(Features) }
        attr_reader :features
      end

      sig { returns(AccountManagement) }
      attr_reader :account_management

      sig { returns(AccountOnboarding) }
      attr_reader :account_onboarding

      sig { returns(Balances) }
      attr_reader :balances

      sig { returns(Documents) }
      attr_reader :documents

      sig { returns(NotificationBanner) }
      attr_reader :notification_banner

      sig { returns(PaymentDetails) }
      attr_reader :payment_details

      sig { returns(Payments) }
      attr_reader :payments

      sig { returns(Payouts) }
      attr_reader :payouts

      sig { returns(PayoutsList) }
      attr_reader :payouts_list

      sig { returns(TaxRegistrations) }
      attr_reader :tax_registrations

      sig { returns(TaxSettings) }
      attr_reader :tax_settings
    end

    sig { returns(String) }
    attr_reader :account

    sig { returns(String) }
    attr_reader :client_secret

    sig { returns(Components) }
    attr_reader :components

    sig { returns(Integer) }
    attr_reader :expires_at

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object
  end
end

module Stripe
  class ApplePayDomain < APIResource
    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :domain_name

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class ApplicationFee < APIResource
    class FeeSource < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge

      sig { returns(String) }
      attr_reader :payout

      sig { returns(String) }
      attr_reader :type
    end

    sig { returns(T.any(String, Stripe::Account)) }
    attr_reader :account

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(Integer) }
    attr_reader :amount_refunded

    sig { returns(T.any(String, Stripe::Application)) }
    attr_reader :application

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :charge

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(FeeSource)) }
    attr_reader :fee_source

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :originating_transaction

    sig { returns(T::Boolean) }
    attr_reader :refunded

    sig { returns(Stripe::ListObject) }
    attr_reader :refunds
  end
end

module Stripe
  class ApplicationFeeRefund < APIResource
    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.any(String, Stripe::ApplicationFee)) }
    attr_reader :fee

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object
  end
end

module Stripe
  module Apps
    class Secret < APIResource
      class Scope < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :type

        sig { returns(String) }
        attr_reader :user
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T::Boolean) }
      attr_reader :deleted

      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(String)) }
      attr_reader :payload

      sig { returns(Scope) }
      attr_reader :scope
    end
  end
end

module Stripe
  class Balance < SingletonAPIResource
    class Available < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :bank_account

        sig { returns(Integer) }
        attr_reader :card

        sig { returns(Integer) }
        attr_reader :fpx
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency

      sig { returns(SourceTypes) }
      attr_reader :source_types
    end

    class ConnectReserved < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :bank_account

        sig { returns(Integer) }
        attr_reader :card

        sig { returns(Integer) }
        attr_reader :fpx
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency

      sig { returns(SourceTypes) }
      attr_reader :source_types
    end

    class InstantAvailable < Stripe::StripeObject
      class NetAvailable < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :bank_account

          sig { returns(Integer) }
          attr_reader :card

          sig { returns(Integer) }
          attr_reader :fpx
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(String) }
        attr_reader :destination

        sig { returns(SourceTypes) }
        attr_reader :source_types
      end

      class SourceTypes < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :bank_account

        sig { returns(Integer) }
        attr_reader :card

        sig { returns(Integer) }
        attr_reader :fpx
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T::Array[NetAvailable]) }
      attr_reader :net_available

      sig { returns(SourceTypes) }
      attr_reader :source_types
    end

    class Issuing < Stripe::StripeObject
      class Available < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :bank_account

          sig { returns(Integer) }
          attr_reader :card

          sig { returns(Integer) }
          attr_reader :fpx
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(String) }
        attr_reader :currency

        sig { returns(SourceTypes) }
        attr_reader :source_types
      end

      sig { returns(T::Array[Available]) }
      attr_reader :available
    end

    class Pending < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :bank_account

        sig { returns(Integer) }
        attr_reader :card

        sig { returns(Integer) }
        attr_reader :fpx
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency

      sig { returns(SourceTypes) }
      attr_reader :source_types
    end

    sig { returns(T::Array[Available]) }
    attr_reader :available

    sig { returns(T::Array[ConnectReserved]) }
    attr_reader :connect_reserved

    sig { returns(T::Array[InstantAvailable]) }
    attr_reader :instant_available

    sig { returns(Issuing) }
    attr_reader :issuing

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Array[Pending]) }
    attr_reader :pending
  end
end

module Stripe
  class BalanceTransaction < APIResource
    class FeeDetail < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.nilable(String)) }
      attr_reader :application

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(String) }
      attr_reader :type
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(Integer) }
    attr_reader :available_on

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(Float)) }
    attr_reader :exchange_rate

    sig { returns(Integer) }
    attr_reader :fee

    sig { returns(T::Array[FeeDetail]) }
    attr_reader :fee_details

    sig { returns(String) }
    attr_reader :id

    sig { returns(Integer) }
    attr_reader :net

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :reporting_category

    sig { returns(T.nilable(T.any(String, T.any(Stripe::ApplicationFee, Stripe::Charge, Stripe::ConnectCollectionTransfer, Stripe::CustomerCashBalanceTransaction, Stripe::Dispute, Stripe::ApplicationFeeRefund, Stripe::Issuing::Authorization, Stripe::Issuing::Dispute, Stripe::Issuing::Transaction, Stripe::Payout, Stripe::Refund, Stripe::ReserveTransaction, Stripe::TaxDeductedAtSource, Stripe::Topup, Stripe::Transfer, Stripe::Reversal)))) }
    attr_reader :source

    sig { returns(String) }
    attr_reader :status

    sig { returns(String) }
    attr_reader :type
  end
end

module Stripe
  class BankAccount < APIResource
    class FutureRequirements < Stripe::StripeObject
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code

        sig { returns(String) }
        attr_reader :reason

        sig { returns(String) }
        attr_reader :requirement
      end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due

      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end

    class Requirements < Stripe::StripeObject
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code

        sig { returns(String) }
        attr_reader :reason

        sig { returns(String) }
        attr_reader :requirement
      end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due

      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :account

    sig { returns(T.nilable(String)) }
    attr_reader :account_holder_name

    sig { returns(T.nilable(String)) }
    attr_reader :account_holder_type

    sig { returns(T.nilable(String)) }
    attr_reader :account_type

    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :available_payout_methods

    sig { returns(T.nilable(String)) }
    attr_reader :bank_name

    sig { returns(String) }
    attr_reader :country

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :default_for_currency

    sig { returns(T.nilable(String)) }
    attr_reader :fingerprint

    sig { returns(T.nilable(FutureRequirements)) }
    attr_reader :future_requirements

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :last4

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(Requirements)) }
    attr_reader :requirements

    sig { returns(T.nilable(String)) }
    attr_reader :routing_number

    sig { returns(String) }
    attr_reader :status

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  module Billing
    class Alert < APIResource
      class UsageThreshold < Stripe::StripeObject
        class Filter < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
          attr_reader :customer

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(T::Array[Filter])) }
        attr_reader :filters

        sig { returns(Integer) }
        attr_reader :gte

        sig { returns(T.any(String, Stripe::Billing::Meter)) }
        attr_reader :meter

        sig { returns(String) }
        attr_reader :recurrence
      end

      sig { returns(String) }
      attr_reader :alert_type

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :title

      sig { returns(T.nilable(UsageThreshold)) }
      attr_reader :usage_threshold
    end
  end
end

module Stripe
  module Billing
    class CreditBalanceSummary < SingletonAPIResource
      class Balance < Stripe::StripeObject
        class AvailableBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :currency

            sig { returns(Integer) }
            attr_reader :value
          end

          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary

          sig { returns(String) }
          attr_reader :type
        end

        class LedgerBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :currency

            sig { returns(Integer) }
            attr_reader :value
          end

          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(AvailableBalance) }
        attr_reader :available_balance

        sig { returns(LedgerBalance) }
        attr_reader :ledger_balance
      end

      sig { returns(T::Array[Balance]) }
      attr_reader :balances

      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object
    end
  end
end

module Stripe
  module Billing
    class CreditBalanceTransaction < APIResource
      class Credit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :currency

            sig { returns(Integer) }
            attr_reader :value
          end

          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(Amount) }
        attr_reader :amount

        sig { returns(String) }
        attr_reader :type
      end

      class Debit < Stripe::StripeObject
        class Amount < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :currency

            sig { returns(Integer) }
            attr_reader :value
          end

          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary

          sig { returns(String) }
          attr_reader :type
        end

        class CreditsApplied < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Invoice)) }
          attr_reader :invoice

          sig { returns(String) }
          attr_reader :invoice_line_item
        end

        sig { returns(Amount) }
        attr_reader :amount

        sig { returns(T.nilable(CreditsApplied)) }
        attr_reader :credits_applied

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(Credit)) }
      attr_reader :credit

      sig { returns(T.any(String, Stripe::Billing::CreditGrant)) }
      attr_reader :credit_grant

      sig { returns(T.nilable(Debit)) }
      attr_reader :debit

      sig { returns(Integer) }
      attr_reader :effective_at

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      attr_reader :test_clock

      sig { returns(T.nilable(String)) }
      attr_reader :type
    end
  end
end

module Stripe
  module Billing
    class CreditGrant < APIResource
      class Amount < Stripe::StripeObject
        class Monetary < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :currency

          sig { returns(Integer) }
          attr_reader :value
        end

        sig { returns(T.nilable(Monetary)) }
        attr_reader :monetary

        sig { returns(String) }
        attr_reader :type
      end

      class ApplicabilityConfig < Stripe::StripeObject
        class Scope < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :price_type
        end

        sig { returns(Scope) }
        attr_reader :scope
      end

      sig { returns(Amount) }
      attr_reader :amount

      sig { returns(ApplicabilityConfig) }
      attr_reader :applicability_config

      sig { returns(String) }
      attr_reader :category

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer

      sig { returns(T.nilable(Integer)) }
      attr_reader :effective_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      attr_reader :test_clock

      sig { returns(Integer) }
      attr_reader :updated

      sig { returns(T.nilable(Integer)) }
      attr_reader :voided_at
    end
  end
end

module Stripe
  module Billing
    class Meter < APIResource
      class CustomerMapping < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :event_payload_key

        sig { returns(String) }
        attr_reader :type
      end

      class DefaultAggregation < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :formula
      end

      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :deactivated_at
      end

      class ValueSettings < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :event_payload_key
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(CustomerMapping) }
      attr_reader :customer_mapping

      sig { returns(DefaultAggregation) }
      attr_reader :default_aggregation

      sig { returns(String) }
      attr_reader :display_name

      sig { returns(String) }
      attr_reader :event_name

      sig { returns(T.nilable(String)) }
      attr_reader :event_time_window

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      sig { returns(Integer) }
      attr_reader :updated

      sig { returns(ValueSettings) }
      attr_reader :value_settings
    end
  end
end

module Stripe
  module Billing
    class MeterEvent < APIResource
      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :event_name

      sig { returns(String) }
      attr_reader :identifier

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T::Hash[String, String]) }
      attr_reader :payload

      sig { returns(Integer) }
      attr_reader :timestamp
    end
  end
end

module Stripe
  module Billing
    class MeterEventAdjustment < APIResource
      class Cancel < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :identifier
      end

      sig { returns(T.nilable(Cancel)) }
      attr_reader :cancel

      sig { returns(String) }
      attr_reader :event_name

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :type
    end
  end
end

module Stripe
  module Billing
    class MeterEventSummary < APIResource
      sig { returns(Float) }
      attr_reader :aggregated_value

      sig { returns(Integer) }
      attr_reader :end_time

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :meter

      sig { returns(String) }
      attr_reader :object

      sig { returns(Integer) }
      attr_reader :start_time
    end
  end
end

module Stripe
  module BillingPortal
    class Configuration < APIResource
      class BusinessProfile < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :headline

        sig { returns(T.nilable(String)) }
        attr_reader :privacy_policy_url

        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service_url
      end

      class Features < Stripe::StripeObject
        class CustomerUpdate < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :allowed_updates

          sig { returns(T::Boolean) }
          attr_reader :enabled
        end

        class InvoiceHistory < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end

        class PaymentMethodUpdate < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end

        class SubscriptionCancel < Stripe::StripeObject
          class CancellationReason < Stripe::StripeObject
            sig { returns(T::Boolean) }
            attr_reader :enabled

            sig { returns(T::Array[String]) }
            attr_reader :options
          end

          sig { returns(CancellationReason) }
          attr_reader :cancellation_reason

          sig { returns(T::Boolean) }
          attr_reader :enabled

          sig { returns(String) }
          attr_reader :mode

          sig { returns(String) }
          attr_reader :proration_behavior
        end

        class SubscriptionUpdate < Stripe::StripeObject
          class Product < Stripe::StripeObject
            sig { returns(T::Array[String]) }
            attr_reader :prices

            sig { returns(String) }
            attr_reader :product
          end

          class ScheduleAtPeriodEnd < Stripe::StripeObject
            class Condition < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :type
            end

            sig { returns(T::Array[Condition]) }
            attr_reader :conditions
          end

          sig { returns(T::Array[String]) }
          attr_reader :default_allowed_updates

          sig { returns(T::Boolean) }
          attr_reader :enabled

          sig { returns(T.nilable(T::Array[Product])) }
          attr_reader :products

          sig { returns(String) }
          attr_reader :proration_behavior

          sig { returns(ScheduleAtPeriodEnd) }
          attr_reader :schedule_at_period_end
        end

        sig { returns(CustomerUpdate) }
        attr_reader :customer_update

        sig { returns(InvoiceHistory) }
        attr_reader :invoice_history

        sig { returns(PaymentMethodUpdate) }
        attr_reader :payment_method_update

        sig { returns(SubscriptionCancel) }
        attr_reader :subscription_cancel

        sig { returns(SubscriptionUpdate) }
        attr_reader :subscription_update
      end

      class LoginPage < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(T.nilable(String)) }
        attr_reader :url
      end

      sig { returns(T::Boolean) }
      attr_reader :active

      sig { returns(T.nilable(T.any(String, Stripe::Application))) }
      attr_reader :application

      sig { returns(BusinessProfile) }
      attr_reader :business_profile

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(String)) }
      attr_reader :default_return_url

      sig { returns(Features) }
      attr_reader :features

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :is_default

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(LoginPage) }
      attr_reader :login_page

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(Integer) }
      attr_reader :updated
    end
  end
end

module Stripe
  module BillingPortal
    class Session < APIResource
      class Flow < Stripe::StripeObject
        class AfterCompletion < Stripe::StripeObject
          class HostedConfirmation < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :custom_message
          end

          class Redirect < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :return_url
          end

          sig { returns(T.nilable(HostedConfirmation)) }
          attr_reader :hosted_confirmation

          sig { returns(T.nilable(Redirect)) }
          attr_reader :redirect

          sig { returns(String) }
          attr_reader :type
        end

        class SubscriptionCancel < Stripe::StripeObject
          class Retention < Stripe::StripeObject
            class CouponOffer < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :coupon
            end

            sig { returns(T.nilable(CouponOffer)) }
            attr_reader :coupon_offer

            sig { returns(String) }
            attr_reader :type
          end

          sig { returns(T.nilable(Retention)) }
          attr_reader :retention

          sig { returns(String) }
          attr_reader :subscription
        end

        class SubscriptionUpdate < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :subscription
        end

        class SubscriptionUpdateConfirm < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :coupon

            sig { returns(T.nilable(String)) }
            attr_reader :promotion_code
          end

          class Item < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { returns(T.nilable(String)) }
            attr_reader :price

            sig { returns(Integer) }
            attr_reader :quantity
          end

          sig { returns(T.nilable(T::Array[Discount])) }
          attr_reader :discounts

          sig { returns(T::Array[Item]) }
          attr_reader :items

          sig { returns(String) }
          attr_reader :subscription
        end

        sig { returns(AfterCompletion) }
        attr_reader :after_completion

        sig { returns(T.nilable(SubscriptionCancel)) }
        attr_reader :subscription_cancel

        sig { returns(T.nilable(SubscriptionUpdate)) }
        attr_reader :subscription_update

        sig { returns(T.nilable(SubscriptionUpdateConfirm)) }
        attr_reader :subscription_update_confirm

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T.any(String, Stripe::BillingPortal::Configuration)) }
      attr_reader :configuration

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :customer

      sig { returns(T.nilable(Flow)) }
      attr_reader :flow

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(String)) }
      attr_reader :on_behalf_of

      sig { returns(T.nilable(String)) }
      attr_reader :return_url

      sig { returns(String) }
      attr_reader :url
    end
  end
end

module Stripe
  class Capability < APIResource
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

      sig { returns(T::Array[String]) }
      attr_reader :currently_due

      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason

      sig { returns(T::Array[Error]) }
      attr_reader :errors

      sig { returns(T::Array[String]) }
      attr_reader :eventually_due

      sig { returns(T::Array[String]) }
      attr_reader :past_due

      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
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

      sig { returns(T::Array[String]) }
      attr_reader :currently_due

      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason

      sig { returns(T::Array[Error]) }
      attr_reader :errors

      sig { returns(T::Array[String]) }
      attr_reader :eventually_due

      sig { returns(T::Array[String]) }
      attr_reader :past_due

      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end

    sig { returns(T.any(String, Stripe::Account)) }
    attr_reader :account

    sig { returns(FutureRequirements) }
    attr_reader :future_requirements

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Boolean) }
    attr_reader :requested

    sig { returns(T.nilable(Integer)) }
    attr_reader :requested_at

    sig { returns(Requirements) }
    attr_reader :requirements

    sig { returns(String) }
    attr_reader :status
  end
end

module Stripe
  class Card < APIResource
    class Networks < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :preferred
    end

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :account

    sig { returns(T.nilable(String)) }
    attr_reader :address_city

    sig { returns(T.nilable(String)) }
    attr_reader :address_country

    sig { returns(T.nilable(String)) }
    attr_reader :address_line1

    sig { returns(T.nilable(String)) }
    attr_reader :address_line1_check

    sig { returns(T.nilable(String)) }
    attr_reader :address_line2

    sig { returns(T.nilable(String)) }
    attr_reader :address_state

    sig { returns(T.nilable(String)) }
    attr_reader :address_zip

    sig { returns(T.nilable(String)) }
    attr_reader :address_zip_check

    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :available_payout_methods

    sig { returns(String) }
    attr_reader :brand

    sig { returns(T.nilable(String)) }
    attr_reader :country

    sig { returns(T.nilable(String)) }
    attr_reader :currency

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(String)) }
    attr_reader :cvc_check

    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :default_for_currency

    sig { returns(String) }
    attr_reader :description

    sig { returns(T.nilable(String)) }
    attr_reader :dynamic_last4

    sig { returns(Integer) }
    attr_reader :exp_month

    sig { returns(Integer) }
    attr_reader :exp_year

    sig { returns(T.nilable(String)) }
    attr_reader :fingerprint

    sig { returns(String) }
    attr_reader :funding

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :iin

    sig { returns(String) }
    attr_reader :issuer

    sig { returns(String) }
    attr_reader :last4

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :name

    sig { returns(Networks) }
    attr_reader :networks

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(String)) }
    attr_reader :status

    sig { returns(T.nilable(String)) }
    attr_reader :tokenization_method

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class CashBalance < APIResource
    class Settings < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :reconciliation_mode

      sig { returns(T::Boolean) }
      attr_reader :using_merchant_default
    end

    sig { returns(T.nilable(T::Hash[String, Integer])) }
    attr_reader :available

    sig { returns(String) }
    attr_reader :customer

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(Settings) }
    attr_reader :settings
  end
end

module Stripe
  class Charge < APIResource
    class BillingDetails < Stripe::StripeObject
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

      sig { returns(T.nilable(Address)) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end

    class FraudDetails < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :stripe_report

      sig { returns(String) }
      attr_reader :user_report
    end

    class Level3 < Stripe::StripeObject
      class LineItem < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :discount_amount

        sig { returns(String) }
        attr_reader :product_code

        sig { returns(String) }
        attr_reader :product_description

        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { returns(T.nilable(Integer)) }
        attr_reader :tax_amount

        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_cost
      end

      sig { returns(String) }
      attr_reader :customer_reference

      sig { returns(T::Array[LineItem]) }
      attr_reader :line_items

      sig { returns(String) }
      attr_reader :merchant_reference

      sig { returns(String) }
      attr_reader :shipping_address_zip

      sig { returns(Integer) }
      attr_reader :shipping_amount

      sig { returns(String) }
      attr_reader :shipping_from_zip
    end

    class Outcome < Stripe::StripeObject
      class Rule < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :action

        sig { returns(String) }
        attr_reader :id

        sig { returns(String) }
        attr_reader :predicate
      end

      sig { returns(T.nilable(String)) }
      attr_reader :network_status

      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { returns(String) }
      attr_reader :risk_level

      sig { returns(Integer) }
      attr_reader :risk_score

      sig { returns(T.any(String, Rule)) }
      attr_reader :rule

      sig { returns(T.nilable(String)) }
      attr_reader :seller_message

      sig { returns(String) }
      attr_reader :type
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AchCreditTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_number

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :routing_number

        sig { returns(T.nilable(String)) }
        attr_reader :swift_code
      end

      class AchDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
      end

      class AcssDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :institution_number

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(String) }
        attr_reader :mandate

        sig { returns(T.nilable(String)) }
        attr_reader :transit_number
      end

      class Affirm < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class AfterpayClearpay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :order_id

        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end

      class Alipay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :buyer_id

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class Alma < Stripe::StripeObject
      end

      class AmazonPay < Stripe::StripeObject
      end

      class AuBecsDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bsb_number

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(String) }
        attr_reader :mandate
      end

      class BacsDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :mandate

        sig { returns(T.nilable(String)) }
        attr_reader :sort_code
      end

      class Bancontact < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit

        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate

        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4

        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class Blik < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end

      class Boleto < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :tax_id
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :address_line1_check

          sig { returns(T.nilable(String)) }
          attr_reader :address_postal_code_check

          sig { returns(T.nilable(String)) }
          attr_reader :cvc_check
        end

        class ExtendedAuthorization < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :status
        end

        class IncrementalAuthorization < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :status
        end

        class Installments < Stripe::StripeObject
          class Plan < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :count

            sig { returns(T.nilable(String)) }
            attr_reader :interval

            sig { returns(String) }
            attr_reader :type
          end

          sig { returns(T.nilable(Plan)) }
          attr_reader :plan
        end

        class Multicapture < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :status
        end

        class NetworkToken < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :used
        end

        class Overcapture < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :maximum_amount_capturable

          sig { returns(String) }
          attr_reader :status
        end

        class ThreeDSecure < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :authentication_flow

          sig { returns(T.nilable(String)) }
          attr_reader :electronic_commerce_indicator

          sig { returns(T.nilable(String)) }
          attr_reader :exemption_indicator

          sig { returns(T::Boolean) }
          attr_reader :exemption_indicator_applied

          sig { returns(T.nilable(String)) }
          attr_reader :result

          sig { returns(T.nilable(String)) }
          attr_reader :result_reason

          sig { returns(T.nilable(String)) }
          attr_reader :transaction_id

          sig { returns(T.nilable(String)) }
          attr_reader :version
        end

        class Wallet < Stripe::StripeObject
          class AmexExpressCheckout < Stripe::StripeObject
          end

          class ApplePay < Stripe::StripeObject
          end

          class GooglePay < Stripe::StripeObject
          end

          class Link < Stripe::StripeObject
          end

          class Masterpass < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
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

            class ShippingAddress < Stripe::StripeObject
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

            sig { returns(T.nilable(BillingAddress)) }
            attr_reader :billing_address

            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end

          class SamsungPay < Stripe::StripeObject
          end

          class VisaCheckout < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
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

            class ShippingAddress < Stripe::StripeObject
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

            sig { returns(T.nilable(BillingAddress)) }
            attr_reader :billing_address

            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end

          sig { returns(AmexExpressCheckout) }
          attr_reader :amex_express_checkout

          sig { returns(ApplePay) }
          attr_reader :apple_pay

          sig { returns(T.nilable(String)) }
          attr_reader :dynamic_last4

          sig { returns(GooglePay) }
          attr_reader :google_pay

          sig { returns(Link) }
          attr_reader :link

          sig { returns(Masterpass) }
          attr_reader :masterpass

          sig { returns(SamsungPay) }
          attr_reader :samsung_pay

          sig { returns(String) }
          attr_reader :type

          sig { returns(VisaCheckout) }
          attr_reader :visa_checkout
        end

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_authorized

        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code

        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(Integer) }
        attr_reader :capture_before

        sig { returns(T.nilable(Checks)) }
        attr_reader :checks

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(Integer) }
        attr_reader :exp_month

        sig { returns(Integer) }
        attr_reader :exp_year

        sig { returns(ExtendedAuthorization) }
        attr_reader :extended_authorization

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :funding

        sig { returns(T.nilable(String)) }
        attr_reader :iin

        sig { returns(IncrementalAuthorization) }
        attr_reader :incremental_authorization

        sig { returns(T.nilable(Installments)) }
        attr_reader :installments

        sig { returns(T.nilable(String)) }
        attr_reader :issuer

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :mandate

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :moto

        sig { returns(Multicapture) }
        attr_reader :multicapture

        sig { returns(T.nilable(String)) }
        attr_reader :network

        sig { returns(T.nilable(NetworkToken)) }
        attr_reader :network_token

        sig { returns(Overcapture) }
        attr_reader :overcapture

        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure

        sig { returns(T.nilable(Wallet)) }
        attr_reader :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :stored_at

          sig { returns(T.nilable(String)) }
          attr_reader :type
        end

        class Receipt < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_type

          sig { returns(T.nilable(String)) }
          attr_reader :application_cryptogram

          sig { returns(T.nilable(String)) }
          attr_reader :application_preferred_name

          sig { returns(T.nilable(String)) }
          attr_reader :authorization_code

          sig { returns(T.nilable(String)) }
          attr_reader :authorization_response_code

          sig { returns(T.nilable(String)) }
          attr_reader :cardholder_verification_method

          sig { returns(T.nilable(String)) }
          attr_reader :dedicated_file_name

          sig { returns(T.nilable(String)) }
          attr_reader :terminal_verification_results

          sig { returns(T.nilable(String)) }
          attr_reader :transaction_status_information
        end

        class Wallet < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_authorized

        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(T.nilable(String)) }
        attr_reader :brand_product

        sig { returns(Integer) }
        attr_reader :capture_before

        sig { returns(T.nilable(String)) }
        attr_reader :cardholder_name

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(T.nilable(String)) }
        attr_reader :emv_auth_data

        sig { returns(Integer) }
        attr_reader :exp_month

        sig { returns(Integer) }
        attr_reader :exp_year

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :funding

        sig { returns(T.nilable(String)) }
        attr_reader :generated_card

        sig { returns(T.nilable(String)) }
        attr_reader :iin

        sig { returns(T::Boolean) }
        attr_reader :incremental_authorization_supported

        sig { returns(T.nilable(String)) }
        attr_reader :issuer

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :network

        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id

        sig { returns(T.nilable(Offline)) }
        attr_reader :offline

        sig { returns(T::Boolean) }
        attr_reader :overcapture_supported

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales

        sig { returns(T.nilable(String)) }
        attr_reader :read_method

        sig { returns(T.nilable(Receipt)) }
        attr_reader :receipt

        sig { returns(Wallet) }
        attr_reader :wallet
      end

      class Cashapp < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id

        sig { returns(T.nilable(String)) }
        attr_reader :cashtag
      end

      class CustomerBalance < Stripe::StripeObject
      end

      class Eps < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class Fpx < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type

        sig { returns(String) }
        attr_reader :bank

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class Giropay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class Grabpay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class Ideal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit

        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate

        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class InteracPresent < Stripe::StripeObject
        class Receipt < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_type

          sig { returns(T.nilable(String)) }
          attr_reader :application_cryptogram

          sig { returns(T.nilable(String)) }
          attr_reader :application_preferred_name

          sig { returns(T.nilable(String)) }
          attr_reader :authorization_code

          sig { returns(T.nilable(String)) }
          attr_reader :authorization_response_code

          sig { returns(T.nilable(String)) }
          attr_reader :cardholder_verification_method

          sig { returns(T.nilable(String)) }
          attr_reader :dedicated_file_name

          sig { returns(T.nilable(String)) }
          attr_reader :terminal_verification_results

          sig { returns(T.nilable(String)) }
          attr_reader :transaction_status_information
        end

        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(T.nilable(String)) }
        attr_reader :cardholder_name

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(T.nilable(String)) }
        attr_reader :emv_auth_data

        sig { returns(Integer) }
        attr_reader :exp_month

        sig { returns(Integer) }
        attr_reader :exp_year

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :funding

        sig { returns(T.nilable(String)) }
        attr_reader :generated_card

        sig { returns(T.nilable(String)) }
        attr_reader :iin

        sig { returns(T.nilable(String)) }
        attr_reader :issuer

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :network

        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales

        sig { returns(T.nilable(String)) }
        attr_reader :read_method

        sig { returns(T.nilable(Receipt)) }
        attr_reader :receipt
      end

      class KakaoPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end

      class Klarna < Stripe::StripeObject
        class PayerDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :country
          end

          sig { returns(T.nilable(Address)) }
          attr_reader :address
        end

        sig { returns(T.nilable(PayerDetails)) }
        attr_reader :payer_details

        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_category

        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale
      end

      class Konbini < Stripe::StripeObject
        class Store < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :chain
        end

        sig { returns(T.nilable(Store)) }
        attr_reader :store
      end

      class KrCard < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id

        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end

      class Link < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :country
      end

      class Mobilepay < Stripe::StripeObject
        class Card < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :brand

          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { returns(T.nilable(Integer)) }
          attr_reader :exp_month

          sig { returns(T.nilable(Integer)) }
          attr_reader :exp_year

          sig { returns(T.nilable(String)) }
          attr_reader :last4
        end

        sig { returns(T.nilable(Card)) }
        attr_reader :card
      end

      class Multibanco < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :entity

        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end

      class NaverPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end

      class Oxxo < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :number
      end

      class P24 < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank

        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class Payco < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end

      class Paynow < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end

      class Paypal < Stripe::StripeObject
        class SellerProtection < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :dispute_categories

          sig { returns(String) }
          attr_reader :status
        end

        sig { returns(T.nilable(String)) }
        attr_reader :payer_email

        sig { returns(T.nilable(String)) }
        attr_reader :payer_id

        sig { returns(T.nilable(String)) }
        attr_reader :payer_name

        sig { returns(T.nilable(SellerProtection)) }
        attr_reader :seller_protection

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class Pix < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_transaction_id
      end

      class Promptpay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end

      class RevolutPay < Stripe::StripeObject
      end

      class SamsungPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end

      class SepaCreditTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(String)) }
        attr_reader :iban
      end

      class SepaDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code

        sig { returns(T.nilable(String)) }
        attr_reader :branch_code

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :mandate
      end

      class Sofort < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit

        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate

        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4

        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class StripeAccount < Stripe::StripeObject
      end

      class Swish < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :payment_reference

        sig { returns(T.nilable(String)) }
        attr_reader :verified_phone_last4
      end

      class Twint < Stripe::StripeObject
      end

      class UsBankAccount < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type

        sig { returns(T.nilable(String)) }
        attr_reader :account_type

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.any(String, Stripe::Mandate)) }
        attr_reader :mandate

        sig { returns(T.nilable(String)) }
        attr_reader :payment_reference

        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
      end

      class Wechat < Stripe::StripeObject
      end

      class WechatPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class Zip < Stripe::StripeObject
      end

      sig { returns(AchCreditTransfer) }
      attr_reader :ach_credit_transfer

      sig { returns(AchDebit) }
      attr_reader :ach_debit

      sig { returns(AcssDebit) }
      attr_reader :acss_debit

      sig { returns(Affirm) }
      attr_reader :affirm

      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay

      sig { returns(Alipay) }
      attr_reader :alipay

      sig { returns(Alma) }
      attr_reader :alma

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit

      sig { returns(BacsDebit) }
      attr_reader :bacs_debit

      sig { returns(Bancontact) }
      attr_reader :bancontact

      sig { returns(Blik) }
      attr_reader :blik

      sig { returns(Boleto) }
      attr_reader :boleto

      sig { returns(Card) }
      attr_reader :card

      sig { returns(CardPresent) }
      attr_reader :card_present

      sig { returns(Cashapp) }
      attr_reader :cashapp

      sig { returns(CustomerBalance) }
      attr_reader :customer_balance

      sig { returns(Eps) }
      attr_reader :eps

      sig { returns(Fpx) }
      attr_reader :fpx

      sig { returns(Giropay) }
      attr_reader :giropay

      sig { returns(Grabpay) }
      attr_reader :grabpay

      sig { returns(Ideal) }
      attr_reader :ideal

      sig { returns(InteracPresent) }
      attr_reader :interac_present

      sig { returns(KakaoPay) }
      attr_reader :kakao_pay

      sig { returns(Klarna) }
      attr_reader :klarna

      sig { returns(Konbini) }
      attr_reader :konbini

      sig { returns(KrCard) }
      attr_reader :kr_card

      sig { returns(Link) }
      attr_reader :link

      sig { returns(Mobilepay) }
      attr_reader :mobilepay

      sig { returns(Multibanco) }
      attr_reader :multibanco

      sig { returns(NaverPay) }
      attr_reader :naver_pay

      sig { returns(Oxxo) }
      attr_reader :oxxo

      sig { returns(P24) }
      attr_reader :p24

      sig { returns(Payco) }
      attr_reader :payco

      sig { returns(Paynow) }
      attr_reader :paynow

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(Pix) }
      attr_reader :pix

      sig { returns(Promptpay) }
      attr_reader :promptpay

      sig { returns(RevolutPay) }
      attr_reader :revolut_pay

      sig { returns(SamsungPay) }
      attr_reader :samsung_pay

      sig { returns(SepaCreditTransfer) }
      attr_reader :sepa_credit_transfer

      sig { returns(SepaDebit) }
      attr_reader :sepa_debit

      sig { returns(Sofort) }
      attr_reader :sofort

      sig { returns(StripeAccount) }
      attr_reader :stripe_account

      sig { returns(Swish) }
      attr_reader :swish

      sig { returns(Twint) }
      attr_reader :twint

      sig { returns(String) }
      attr_reader :type

      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account

      sig { returns(Wechat) }
      attr_reader :wechat

      sig { returns(WechatPay) }
      attr_reader :wechat_pay

      sig { returns(Zip) }
      attr_reader :zip
    end

    class RadarOptions < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :session
    end

    class Shipping < Stripe::StripeObject
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

      sig { returns(Address) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :carrier

      sig { returns(String) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end

    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(Integer) }
    attr_reader :amount_captured

    sig { returns(Integer) }
    attr_reader :amount_refunded

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
    attr_reader :application_fee

    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    sig { returns(String) }
    attr_reader :authorization_code

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(BillingDetails) }
    attr_reader :billing_details

    sig { returns(T.nilable(String)) }
    attr_reader :calculated_statement_descriptor

    sig { returns(T::Boolean) }
    attr_reader :captured

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T::Boolean) }
    attr_reader :disputed

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :failure_balance_transaction

    sig { returns(T.nilable(String)) }
    attr_reader :failure_code

    sig { returns(T.nilable(String)) }
    attr_reader :failure_message

    sig { returns(T.nilable(FraudDetails)) }
    attr_reader :fraud_details

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice

    sig { returns(Level3) }
    attr_reader :level3

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(T.nilable(Outcome)) }
    attr_reader :outcome

    sig { returns(T::Boolean) }
    attr_reader :paid

    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    attr_reader :payment_intent

    sig { returns(T.nilable(String)) }
    attr_reader :payment_method

    sig { returns(T.nilable(PaymentMethodDetails)) }
    attr_reader :payment_method_details

    sig { returns(RadarOptions) }
    attr_reader :radar_options

    sig { returns(T.nilable(String)) }
    attr_reader :receipt_email

    sig { returns(T.nilable(String)) }
    attr_reader :receipt_number

    sig { returns(T.nilable(String)) }
    attr_reader :receipt_url

    sig { returns(T::Boolean) }
    attr_reader :refunded

    sig { returns(T.nilable(Stripe::ListObject)) }
    attr_reader :refunds

    sig { returns(T.nilable(T.any(String, Stripe::Review))) }
    attr_reader :review

    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping

    sig { returns(T.nilable(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))) }
    attr_reader :source

    sig { returns(T.nilable(T.any(String, Stripe::Transfer))) }
    attr_reader :source_transfer

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor_suffix

    sig { returns(String) }
    attr_reader :status

    sig { returns(T.any(String, Stripe::Transfer)) }
    attr_reader :transfer

    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data

    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
  end
end

module Stripe
  module Checkout
    class Session < APIResource
      class AfterExpiration < Stripe::StripeObject
        class Recovery < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :allow_promotion_codes

          sig { returns(T::Boolean) }
          attr_reader :enabled

          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_at

          sig { returns(T.nilable(String)) }
          attr_reader :url
        end

        sig { returns(T.nilable(Recovery)) }
        attr_reader :recovery
      end

      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(T.nilable(Liability)) }
        attr_reader :liability

        sig { returns(T.nilable(String)) }
        attr_reader :status
      end

      class Consent < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :promotions

        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service
      end

      class ConsentCollection < Stripe::StripeObject
        class PaymentMethodReuseAgreement < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :position
        end

        sig { returns(T.nilable(PaymentMethodReuseAgreement)) }
        attr_reader :payment_method_reuse_agreement

        sig { returns(T.nilable(String)) }
        attr_reader :promotions

        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service
      end

      class CurrencyConversion < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount_subtotal

        sig { returns(Integer) }
        attr_reader :amount_total

        sig { returns(String) }
        attr_reader :fx_rate

        sig { returns(String) }
        attr_reader :source_currency
      end

      class CustomField < Stripe::StripeObject
        class Dropdown < Stripe::StripeObject
          class Option < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :label

            sig { returns(String) }
            attr_reader :value
          end

          sig { returns(T.nilable(String)) }
          attr_reader :default_value

          sig { returns(T::Array[Option]) }
          attr_reader :options

          sig { returns(T.nilable(String)) }
          attr_reader :value
        end

        class Label < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :custom

          sig { returns(String) }
          attr_reader :type
        end

        class Numeric < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :default_value

          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_length

          sig { returns(T.nilable(Integer)) }
          attr_reader :minimum_length

          sig { returns(T.nilable(String)) }
          attr_reader :value
        end

        class Text < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :default_value

          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_length

          sig { returns(T.nilable(Integer)) }
          attr_reader :minimum_length

          sig { returns(T.nilable(String)) }
          attr_reader :value
        end

        sig { returns(Dropdown) }
        attr_reader :dropdown

        sig { returns(String) }
        attr_reader :key

        sig { returns(Label) }
        attr_reader :label

        sig { returns(Numeric) }
        attr_reader :numeric

        sig { returns(T::Boolean) }
        attr_reader :optional

        sig { returns(Text) }
        attr_reader :text

        sig { returns(String) }
        attr_reader :type
      end

      class CustomText < Stripe::StripeObject
        class AfterSubmit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end

        class ShippingAddress < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end

        class Submit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end

        class TermsOfServiceAcceptance < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end

        sig { returns(T.nilable(AfterSubmit)) }
        attr_reader :after_submit

        sig { returns(T.nilable(ShippingAddress)) }
        attr_reader :shipping_address

        sig { returns(T.nilable(Submit)) }
        attr_reader :submit

        sig { returns(T.nilable(TermsOfServiceAcceptance)) }
        attr_reader :terms_of_service_acceptance
      end

      class CustomerDetails < Stripe::StripeObject
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

        class TaxId < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type

          sig { returns(T.nilable(String)) }
          attr_reader :value
        end

        sig { returns(T.nilable(Address)) }
        attr_reader :address

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { returns(T.nilable(String)) }
        attr_reader :tax_exempt

        sig { returns(T.nilable(T::Array[TaxId])) }
        attr_reader :tax_ids
      end

      class InvoiceCreation < Stripe::StripeObject
        class InvoiceData < Stripe::StripeObject
          class CustomField < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :name

            sig { returns(String) }
            attr_reader :value
          end

          class Issuer < Stripe::StripeObject
            sig { returns(T.any(String, Stripe::Account)) }
            attr_reader :account

            sig { returns(String) }
            attr_reader :type
          end

          class RenderingOptions < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :amount_tax_display
          end

          sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
          attr_reader :account_tax_ids

          sig { returns(T.nilable(T::Array[CustomField])) }
          attr_reader :custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { returns(T.nilable(String)) }
          attr_reader :footer

          sig { returns(T.nilable(Issuer)) }
          attr_reader :issuer

          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_reader :metadata

          sig { returns(T.nilable(RenderingOptions)) }
          attr_reader :rendering_options
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(InvoiceData) }
        attr_reader :invoice_data
      end

      class PaymentMethodConfigurationDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :id

        sig { returns(T.nilable(String)) }
        attr_reader :parent
      end

      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :custom_mandate_url

            sig { returns(T::Array[String]) }
            attr_reader :default_for

            sig { returns(T.nilable(String)) }
            attr_reader :interval_description

            sig { returns(T.nilable(String)) }
            attr_reader :payment_schedule

            sig { returns(T.nilable(String)) }
            attr_reader :transaction_type
          end

          sig { returns(String) }
          attr_reader :currency

          sig { returns(MandateOptions) }
          attr_reader :mandate_options

          sig { returns(String) }
          attr_reader :setup_future_usage

          sig { returns(String) }
          attr_reader :verification_method
        end

        class Affirm < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class AfterpayClearpay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Alipay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class AmazonPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class AuBecsDebit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class BacsDebit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Bancontact < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Boleto < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :expires_after_days

          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Card < Stripe::StripeObject
          class Installments < Stripe::StripeObject
            sig { returns(T::Boolean) }
            attr_reader :enabled
          end

          sig { returns(Installments) }
          attr_reader :installments

          sig { returns(String) }
          attr_reader :request_three_d_secure

          sig { returns(String) }
          attr_reader :setup_future_usage

          sig { returns(String) }
          attr_reader :statement_descriptor_suffix_kana

          sig { returns(String) }
          attr_reader :statement_descriptor_suffix_kanji
        end

        class Cashapp < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :country
            end

            sig { returns(EuBankTransfer) }
            attr_reader :eu_bank_transfer

            sig { returns(T::Array[String]) }
            attr_reader :requested_address_types

            sig { returns(T.nilable(String)) }
            attr_reader :type
          end

          sig { returns(BankTransfer) }
          attr_reader :bank_transfer

          sig { returns(T.nilable(String)) }
          attr_reader :funding_type

          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Eps < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Fpx < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Giropay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Grabpay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Ideal < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class KakaoPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method

          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Klarna < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Konbini < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_after_days

          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class KrCard < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method

          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Link < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Mobilepay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Multibanco < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class NaverPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method
        end

        class Oxxo < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :expires_after_days

          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class P24 < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Payco < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method
        end

        class Paynow < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Paypal < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method

          sig { returns(T.nilable(String)) }
          attr_reader :preferred_locale

          sig { returns(T.nilable(String)) }
          attr_reader :reference

          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Pix < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_after_seconds
        end

        class RevolutPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class SamsungPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method
        end

        class SepaDebit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Sofort < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end

        class Swish < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :reference
        end

        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              sig { returns(T::Array[String]) }
              attr_reader :account_subcategories
            end

            sig { returns(Filters) }
            attr_reader :filters

            sig { returns(T::Array[String]) }
            attr_reader :permissions

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :prefetch

            sig { returns(String) }
            attr_reader :return_url
          end

          sig { returns(FinancialConnections) }
          attr_reader :financial_connections

          sig { returns(String) }
          attr_reader :setup_future_usage

          sig { returns(String) }
          attr_reader :verification_method
        end

        sig { returns(AcssDebit) }
        attr_reader :acss_debit

        sig { returns(Affirm) }
        attr_reader :affirm

        sig { returns(AfterpayClearpay) }
        attr_reader :afterpay_clearpay

        sig { returns(Alipay) }
        attr_reader :alipay

        sig { returns(AmazonPay) }
        attr_reader :amazon_pay

        sig { returns(AuBecsDebit) }
        attr_reader :au_becs_debit

        sig { returns(BacsDebit) }
        attr_reader :bacs_debit

        sig { returns(Bancontact) }
        attr_reader :bancontact

        sig { returns(Boleto) }
        attr_reader :boleto

        sig { returns(Card) }
        attr_reader :card

        sig { returns(Cashapp) }
        attr_reader :cashapp

        sig { returns(CustomerBalance) }
        attr_reader :customer_balance

        sig { returns(Eps) }
        attr_reader :eps

        sig { returns(Fpx) }
        attr_reader :fpx

        sig { returns(Giropay) }
        attr_reader :giropay

        sig { returns(Grabpay) }
        attr_reader :grabpay

        sig { returns(Ideal) }
        attr_reader :ideal

        sig { returns(KakaoPay) }
        attr_reader :kakao_pay

        sig { returns(Klarna) }
        attr_reader :klarna

        sig { returns(Konbini) }
        attr_reader :konbini

        sig { returns(KrCard) }
        attr_reader :kr_card

        sig { returns(Link) }
        attr_reader :link

        sig { returns(Mobilepay) }
        attr_reader :mobilepay

        sig { returns(Multibanco) }
        attr_reader :multibanco

        sig { returns(NaverPay) }
        attr_reader :naver_pay

        sig { returns(Oxxo) }
        attr_reader :oxxo

        sig { returns(P24) }
        attr_reader :p24

        sig { returns(Payco) }
        attr_reader :payco

        sig { returns(Paynow) }
        attr_reader :paynow

        sig { returns(Paypal) }
        attr_reader :paypal

        sig { returns(Pix) }
        attr_reader :pix

        sig { returns(RevolutPay) }
        attr_reader :revolut_pay

        sig { returns(SamsungPay) }
        attr_reader :samsung_pay

        sig { returns(SepaDebit) }
        attr_reader :sepa_debit

        sig { returns(Sofort) }
        attr_reader :sofort

        sig { returns(Swish) }
        attr_reader :swish

        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end

      class PhoneNumberCollection < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end

      class SavedPaymentMethodOptions < Stripe::StripeObject
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allow_redisplay_filters

        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_remove

        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_save
      end

      class ShippingAddressCollection < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :allowed_countries
      end

      class ShippingCost < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(Stripe::TaxRate) }
          attr_reader :rate

          sig { returns(T.nilable(String)) }
          attr_reader :taxability_reason

          sig { returns(T.nilable(Integer)) }
          attr_reader :taxable_amount
        end

        sig { returns(Integer) }
        attr_reader :amount_subtotal

        sig { returns(Integer) }
        attr_reader :amount_tax

        sig { returns(Integer) }
        attr_reader :amount_total

        sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
        attr_reader :shipping_rate

        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end

      class ShippingDetails < Stripe::StripeObject
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

        sig { returns(Address) }
        attr_reader :address

        sig { returns(T.nilable(String)) }
        attr_reader :carrier

        sig { returns(String) }
        attr_reader :name

        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number
      end

      class ShippingOption < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :shipping_amount

        sig { returns(T.any(String, Stripe::ShippingRate)) }
        attr_reader :shipping_rate
      end

      class TaxIdCollection < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(String) }
        attr_reader :required
      end

      class TotalDetails < Stripe::StripeObject
        class Breakdown < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :amount

            sig { returns(Stripe::Discount) }
            attr_reader :discount
          end

          class Tax < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :amount

            sig { returns(Stripe::TaxRate) }
            attr_reader :rate

            sig { returns(T.nilable(String)) }
            attr_reader :taxability_reason

            sig { returns(T.nilable(Integer)) }
            attr_reader :taxable_amount
          end

          sig { returns(T::Array[Discount]) }
          attr_reader :discounts

          sig { returns(T::Array[Tax]) }
          attr_reader :taxes
        end

        sig { returns(Integer) }
        attr_reader :amount_discount

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_shipping

        sig { returns(Integer) }
        attr_reader :amount_tax

        sig { returns(Breakdown) }
        attr_reader :breakdown
      end

      sig { returns(T.nilable(AfterExpiration)) }
      attr_reader :after_expiration

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_promotion_codes

      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_subtotal

      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_total

      sig { returns(AutomaticTax) }
      attr_reader :automatic_tax

      sig { returns(T.nilable(String)) }
      attr_reader :billing_address_collection

      sig { returns(T.nilable(String)) }
      attr_reader :cancel_url

      sig { returns(T.nilable(String)) }
      attr_reader :client_reference_id

      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { returns(T.nilable(Consent)) }
      attr_reader :consent

      sig { returns(T.nilable(ConsentCollection)) }
      attr_reader :consent_collection

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { returns(T.nilable(CurrencyConversion)) }
      attr_reader :currency_conversion

      sig { returns(T::Array[CustomField]) }
      attr_reader :custom_fields

      sig { returns(CustomText) }
      attr_reader :custom_text

      sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
      attr_reader :customer

      sig { returns(T.nilable(String)) }
      attr_reader :customer_creation

      sig { returns(T.nilable(CustomerDetails)) }
      attr_reader :customer_details

      sig { returns(T.nilable(String)) }
      attr_reader :customer_email

      sig { returns(Integer) }
      attr_reader :expires_at

      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
      attr_reader :invoice

      sig { returns(T.nilable(InvoiceCreation)) }
      attr_reader :invoice_creation

      sig { returns(Stripe::ListObject) }
      attr_reader :line_items

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :mode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
      attr_reader :payment_intent

      sig { returns(T.nilable(T.any(String, Stripe::PaymentLink))) }
      attr_reader :payment_link

      sig { returns(T.nilable(String)) }
      attr_reader :payment_method_collection

      sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
      attr_reader :payment_method_configuration_details

      sig { returns(T.nilable(PaymentMethodOptions)) }
      attr_reader :payment_method_options

      sig { returns(T::Array[String]) }
      attr_reader :payment_method_types

      sig { returns(String) }
      attr_reader :payment_status

      sig { returns(PhoneNumberCollection) }
      attr_reader :phone_number_collection

      sig { returns(T.nilable(String)) }
      attr_reader :recovered_from

      sig { returns(String) }
      attr_reader :redirect_on_completion

      sig { returns(String) }
      attr_reader :return_url

      sig { returns(T.nilable(SavedPaymentMethodOptions)) }
      attr_reader :saved_payment_method_options

      sig { returns(T.nilable(T.any(String, Stripe::SetupIntent))) }
      attr_reader :setup_intent

      sig { returns(T.nilable(ShippingAddressCollection)) }
      attr_reader :shipping_address_collection

      sig { returns(T.nilable(ShippingCost)) }
      attr_reader :shipping_cost

      sig { returns(T.nilable(ShippingDetails)) }
      attr_reader :shipping_details

      sig { returns(T::Array[ShippingOption]) }
      attr_reader :shipping_options

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { returns(T.nilable(String)) }
      attr_reader :submit_type

      sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
      attr_reader :subscription

      sig { returns(T.nilable(String)) }
      attr_reader :success_url

      sig { returns(TaxIdCollection) }
      attr_reader :tax_id_collection

      sig { returns(T.nilable(TotalDetails)) }
      attr_reader :total_details

      sig { returns(T.nilable(String)) }
      attr_reader :ui_mode

      sig { returns(T.nilable(String)) }
      attr_reader :url
    end
  end
end

module Stripe
  module Climate
    class Order < APIResource
      class Beneficiary < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :public_name
      end

      class DeliveryDetail < Stripe::StripeObject
        class Location < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { returns(String) }
          attr_reader :country

          sig { returns(T.nilable(Float)) }
          attr_reader :latitude

          sig { returns(T.nilable(Float)) }
          attr_reader :longitude

          sig { returns(T.nilable(String)) }
          attr_reader :region
        end

        sig { returns(Integer) }
        attr_reader :delivered_at

        sig { returns(T.nilable(Location)) }
        attr_reader :location

        sig { returns(String) }
        attr_reader :metric_tons

        sig { returns(T.nilable(String)) }
        attr_reader :registry_url

        sig { returns(Stripe::Climate::Supplier) }
        attr_reader :supplier
      end

      sig { returns(Integer) }
      attr_reader :amount_fees

      sig { returns(Integer) }
      attr_reader :amount_subtotal

      sig { returns(Integer) }
      attr_reader :amount_total

      sig { returns(Beneficiary) }
      attr_reader :beneficiary

      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at

      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_reason

      sig { returns(T.nilable(String)) }
      attr_reader :certificate

      sig { returns(T.nilable(Integer)) }
      attr_reader :confirmed_at

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(Integer)) }
      attr_reader :delayed_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :delivered_at

      sig { returns(T::Array[DeliveryDetail]) }
      attr_reader :delivery_details

      sig { returns(Integer) }
      attr_reader :expected_delivery_year

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :metric_tons

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.any(String, Stripe::Climate::Product)) }
      attr_reader :product

      sig { returns(T.nilable(Integer)) }
      attr_reader :product_substituted_at

      sig { returns(String) }
      attr_reader :status
    end
  end
end

module Stripe
  module Climate
    class Product < APIResource
      class CurrentPricesPerMetricTon < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount_fees

        sig { returns(Integer) }
        attr_reader :amount_subtotal

        sig { returns(Integer) }
        attr_reader :amount_total
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T::Hash[String, CurrentPricesPerMetricTon]) }
      attr_reader :current_prices_per_metric_ton

      sig { returns(T.nilable(Integer)) }
      attr_reader :delivery_year

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :metric_tons_available

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(T::Array[Stripe::Climate::Supplier]) }
      attr_reader :suppliers
    end
  end
end

module Stripe
  module Climate
    class Supplier < APIResource
      class Location < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { returns(String) }
        attr_reader :country

        sig { returns(T.nilable(Float)) }
        attr_reader :latitude

        sig { returns(T.nilable(Float)) }
        attr_reader :longitude

        sig { returns(T.nilable(String)) }
        attr_reader :region
      end

      sig { returns(String) }
      attr_reader :id

      sig { returns(String) }
      attr_reader :info_url

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Array[Location]) }
      attr_reader :locations

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :removal_pathway
    end
  end
end

module Stripe
  class ConfirmationToken < APIResource
    class MandateData < Stripe::StripeObject
      class CustomerAcceptance < Stripe::StripeObject
        class Online < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address

          sig { returns(T.nilable(String)) }
          attr_reader :user_agent
        end

        sig { returns(T.nilable(Online)) }
        attr_reader :online

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(CustomerAcceptance) }
      attr_reader :customer_acceptance
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :cvc_token
      end

      sig { returns(T.nilable(Card)) }
      attr_reader :card
    end

    class PaymentMethodPreview < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :institution_number

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :transit_number
      end

      class Affirm < Stripe::StripeObject
      end

      class AfterpayClearpay < Stripe::StripeObject
      end

      class Alipay < Stripe::StripeObject
      end

      class Alma < Stripe::StripeObject
      end

      class AmazonPay < Stripe::StripeObject
      end

      class AuBecsDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bsb_number

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end

      class BacsDebit < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :sort_code
      end

      class Bancontact < Stripe::StripeObject
      end

      class BillingDetails < Stripe::StripeObject
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

        sig { returns(T.nilable(Address)) }
        attr_reader :address

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { returns(T.nilable(String)) }
        attr_reader :phone
      end

      class Blik < Stripe::StripeObject
      end

      class Boleto < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :tax_id
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :address_line1_check

          sig { returns(T.nilable(String)) }
          attr_reader :address_postal_code_check

          sig { returns(T.nilable(String)) }
          attr_reader :cvc_check
        end

        class GeneratedFrom < Stripe::StripeObject
          class PaymentMethodDetails < Stripe::StripeObject
            class CardPresent < Stripe::StripeObject
              class Offline < Stripe::StripeObject
                sig { returns(T.nilable(Integer)) }
                attr_reader :stored_at

                sig { returns(T.nilable(String)) }
                attr_reader :type
              end

              class Receipt < Stripe::StripeObject
                sig { returns(String) }
                attr_reader :account_type

                sig { returns(T.nilable(String)) }
                attr_reader :application_cryptogram

                sig { returns(T.nilable(String)) }
                attr_reader :application_preferred_name

                sig { returns(T.nilable(String)) }
                attr_reader :authorization_code

                sig { returns(T.nilable(String)) }
                attr_reader :authorization_response_code

                sig { returns(T.nilable(String)) }
                attr_reader :cardholder_verification_method

                sig { returns(T.nilable(String)) }
                attr_reader :dedicated_file_name

                sig { returns(T.nilable(String)) }
                attr_reader :terminal_verification_results

                sig { returns(T.nilable(String)) }
                attr_reader :transaction_status_information
              end

              class Wallet < Stripe::StripeObject
                sig { returns(String) }
                attr_reader :type
              end

              sig { returns(T.nilable(Integer)) }
              attr_reader :amount_authorized

              sig { returns(T.nilable(String)) }
              attr_reader :brand

              sig { returns(T.nilable(String)) }
              attr_reader :brand_product

              sig { returns(Integer) }
              attr_reader :capture_before

              sig { returns(T.nilable(String)) }
              attr_reader :cardholder_name

              sig { returns(T.nilable(String)) }
              attr_reader :country

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { returns(T.nilable(String)) }
              attr_reader :emv_auth_data

              sig { returns(Integer) }
              attr_reader :exp_month

              sig { returns(Integer) }
              attr_reader :exp_year

              sig { returns(T.nilable(String)) }
              attr_reader :fingerprint

              sig { returns(T.nilable(String)) }
              attr_reader :funding

              sig { returns(T.nilable(String)) }
              attr_reader :generated_card

              sig { returns(T.nilable(String)) }
              attr_reader :iin

              sig { returns(T::Boolean) }
              attr_reader :incremental_authorization_supported

              sig { returns(T.nilable(String)) }
              attr_reader :issuer

              sig { returns(T.nilable(String)) }
              attr_reader :last4

              sig { returns(T.nilable(String)) }
              attr_reader :network

              sig { returns(T.nilable(String)) }
              attr_reader :network_transaction_id

              sig { returns(T.nilable(Offline)) }
              attr_reader :offline

              sig { returns(T::Boolean) }
              attr_reader :overcapture_supported

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :preferred_locales

              sig { returns(T.nilable(String)) }
              attr_reader :read_method

              sig { returns(T.nilable(Receipt)) }
              attr_reader :receipt

              sig { returns(Wallet) }
              attr_reader :wallet
            end

            sig { returns(CardPresent) }
            attr_reader :card_present

            sig { returns(String) }
            attr_reader :type
          end

          sig { returns(T.nilable(String)) }
          attr_reader :charge

          sig { returns(T.nilable(PaymentMethodDetails)) }
          attr_reader :payment_method_details

          sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
          attr_reader :setup_attempt
        end

        class Networks < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :available

          sig { returns(T.nilable(String)) }
          attr_reader :preferred
        end

        class ThreeDSecureUsage < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :supported
        end

        class Wallet < Stripe::StripeObject
          class AmexExpressCheckout < Stripe::StripeObject
          end

          class ApplePay < Stripe::StripeObject
          end

          class GooglePay < Stripe::StripeObject
          end

          class Link < Stripe::StripeObject
          end

          class Masterpass < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
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

            class ShippingAddress < Stripe::StripeObject
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

            sig { returns(T.nilable(BillingAddress)) }
            attr_reader :billing_address

            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end

          class SamsungPay < Stripe::StripeObject
          end

          class VisaCheckout < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
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

            class ShippingAddress < Stripe::StripeObject
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

            sig { returns(T.nilable(BillingAddress)) }
            attr_reader :billing_address

            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end

          sig { returns(AmexExpressCheckout) }
          attr_reader :amex_express_checkout

          sig { returns(ApplePay) }
          attr_reader :apple_pay

          sig { returns(T.nilable(String)) }
          attr_reader :dynamic_last4

          sig { returns(GooglePay) }
          attr_reader :google_pay

          sig { returns(Link) }
          attr_reader :link

          sig { returns(Masterpass) }
          attr_reader :masterpass

          sig { returns(SamsungPay) }
          attr_reader :samsung_pay

          sig { returns(String) }
          attr_reader :type

          sig { returns(VisaCheckout) }
          attr_reader :visa_checkout
        end

        sig { returns(String) }
        attr_reader :brand

        sig { returns(T.nilable(Checks)) }
        attr_reader :checks

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(T.nilable(String)) }
        attr_reader :display_brand

        sig { returns(Integer) }
        attr_reader :exp_month

        sig { returns(Integer) }
        attr_reader :exp_year

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(String) }
        attr_reader :funding

        sig { returns(T.nilable(GeneratedFrom)) }
        attr_reader :generated_from

        sig { returns(T.nilable(String)) }
        attr_reader :iin

        sig { returns(T.nilable(String)) }
        attr_reader :issuer

        sig { returns(String) }
        attr_reader :last4

        sig { returns(T.nilable(Networks)) }
        attr_reader :networks

        sig { returns(T.nilable(ThreeDSecureUsage)) }
        attr_reader :three_d_secure_usage

        sig { returns(T.nilable(Wallet)) }
        attr_reader :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :available

          sig { returns(T.nilable(String)) }
          attr_reader :preferred
        end

        class Offline < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :stored_at

          sig { returns(T.nilable(String)) }
          attr_reader :type
        end

        class Wallet < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(T.nilable(String)) }
        attr_reader :brand_product

        sig { returns(T.nilable(String)) }
        attr_reader :cardholder_name

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(Integer) }
        attr_reader :exp_month

        sig { returns(Integer) }
        attr_reader :exp_year

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :funding

        sig { returns(T.nilable(String)) }
        attr_reader :iin

        sig { returns(T.nilable(String)) }
        attr_reader :issuer

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(Networks)) }
        attr_reader :networks

        sig { returns(T.nilable(Offline)) }
        attr_reader :offline

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales

        sig { returns(T.nilable(String)) }
        attr_reader :read_method

        sig { returns(Wallet) }
        attr_reader :wallet
      end

      class Cashapp < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id

        sig { returns(T.nilable(String)) }
        attr_reader :cashtag
      end

      class CustomerBalance < Stripe::StripeObject
      end

      class Eps < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank
      end

      class Fpx < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type

        sig { returns(String) }
        attr_reader :bank
      end

      class Giropay < Stripe::StripeObject
      end

      class Grabpay < Stripe::StripeObject
      end

      class Ideal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank

        sig { returns(T.nilable(String)) }
        attr_reader :bic
      end

      class InteracPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :available

          sig { returns(T.nilable(String)) }
          attr_reader :preferred
        end

        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(T.nilable(String)) }
        attr_reader :cardholder_name

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(Integer) }
        attr_reader :exp_month

        sig { returns(Integer) }
        attr_reader :exp_year

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :funding

        sig { returns(T.nilable(String)) }
        attr_reader :iin

        sig { returns(T.nilable(String)) }
        attr_reader :issuer

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(Networks)) }
        attr_reader :networks

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales

        sig { returns(T.nilable(String)) }
        attr_reader :read_method
      end

      class KakaoPay < Stripe::StripeObject
      end

      class Klarna < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end

        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
      end

      class Konbini < Stripe::StripeObject
      end

      class KrCard < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end

      class Link < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { returns(String) }
        attr_reader :persistent_token
      end

      class Mobilepay < Stripe::StripeObject
      end

      class Multibanco < Stripe::StripeObject
      end

      class NaverPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :funding
      end

      class Oxxo < Stripe::StripeObject
      end

      class P24 < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank
      end

      class Payco < Stripe::StripeObject
      end

      class Paynow < Stripe::StripeObject
      end

      class Paypal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :payer_email

        sig { returns(T.nilable(String)) }
        attr_reader :payer_id
      end

      class Pix < Stripe::StripeObject
      end

      class Promptpay < Stripe::StripeObject
      end

      class RevolutPay < Stripe::StripeObject
      end

      class SamsungPay < Stripe::StripeObject
      end

      class SepaDebit < Stripe::StripeObject
        class GeneratedFrom < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
          attr_reader :charge

          sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
          attr_reader :setup_attempt
        end

        sig { returns(T.nilable(String)) }
        attr_reader :bank_code

        sig { returns(T.nilable(String)) }
        attr_reader :branch_code

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(GeneratedFrom)) }
        attr_reader :generated_from

        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end

      class Sofort < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :country
      end

      class Swish < Stripe::StripeObject
      end

      class Twint < Stripe::StripeObject
      end

      class UsBankAccount < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :preferred

          sig { returns(T::Array[String]) }
          attr_reader :supported
        end

        class StatusDetails < Stripe::StripeObject
          class Blocked < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :network_code

            sig { returns(T.nilable(String)) }
            attr_reader :reason
          end

          sig { returns(Blocked) }
          attr_reader :blocked
        end

        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type

        sig { returns(T.nilable(String)) }
        attr_reader :account_type

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :financial_connections_account

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(Networks)) }
        attr_reader :networks

        sig { returns(T.nilable(String)) }
        attr_reader :routing_number

        sig { returns(T.nilable(StatusDetails)) }
        attr_reader :status_details
      end

      class WechatPay < Stripe::StripeObject
      end

      class Zip < Stripe::StripeObject
      end

      sig { returns(AcssDebit) }
      attr_reader :acss_debit

      sig { returns(Affirm) }
      attr_reader :affirm

      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay

      sig { returns(Alipay) }
      attr_reader :alipay

      sig { returns(String) }
      attr_reader :allow_redisplay

      sig { returns(Alma) }
      attr_reader :alma

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit

      sig { returns(BacsDebit) }
      attr_reader :bacs_debit

      sig { returns(Bancontact) }
      attr_reader :bancontact

      sig { returns(BillingDetails) }
      attr_reader :billing_details

      sig { returns(Blik) }
      attr_reader :blik

      sig { returns(Boleto) }
      attr_reader :boleto

      sig { returns(Card) }
      attr_reader :card

      sig { returns(CardPresent) }
      attr_reader :card_present

      sig { returns(Cashapp) }
      attr_reader :cashapp

      sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
      attr_reader :customer

      sig { returns(CustomerBalance) }
      attr_reader :customer_balance

      sig { returns(Eps) }
      attr_reader :eps

      sig { returns(Fpx) }
      attr_reader :fpx

      sig { returns(Giropay) }
      attr_reader :giropay

      sig { returns(Grabpay) }
      attr_reader :grabpay

      sig { returns(Ideal) }
      attr_reader :ideal

      sig { returns(InteracPresent) }
      attr_reader :interac_present

      sig { returns(KakaoPay) }
      attr_reader :kakao_pay

      sig { returns(Klarna) }
      attr_reader :klarna

      sig { returns(Konbini) }
      attr_reader :konbini

      sig { returns(KrCard) }
      attr_reader :kr_card

      sig { returns(Link) }
      attr_reader :link

      sig { returns(Mobilepay) }
      attr_reader :mobilepay

      sig { returns(Multibanco) }
      attr_reader :multibanco

      sig { returns(NaverPay) }
      attr_reader :naver_pay

      sig { returns(Oxxo) }
      attr_reader :oxxo

      sig { returns(P24) }
      attr_reader :p24

      sig { returns(Payco) }
      attr_reader :payco

      sig { returns(Paynow) }
      attr_reader :paynow

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(Pix) }
      attr_reader :pix

      sig { returns(Promptpay) }
      attr_reader :promptpay

      sig { returns(RevolutPay) }
      attr_reader :revolut_pay

      sig { returns(SamsungPay) }
      attr_reader :samsung_pay

      sig { returns(SepaDebit) }
      attr_reader :sepa_debit

      sig { returns(Sofort) }
      attr_reader :sofort

      sig { returns(Swish) }
      attr_reader :swish

      sig { returns(Twint) }
      attr_reader :twint

      sig { returns(String) }
      attr_reader :type

      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account

      sig { returns(WechatPay) }
      attr_reader :wechat_pay

      sig { returns(Zip) }
      attr_reader :zip
    end

    class Shipping < Stripe::StripeObject
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

      sig { returns(Address) }
      attr_reader :address

      sig { returns(String) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(MandateData)) }
    attr_reader :mandate_data

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(String)) }
    attr_reader :payment_intent

    sig { returns(T.nilable(PaymentMethodOptions)) }
    attr_reader :payment_method_options

    sig { returns(T.nilable(PaymentMethodPreview)) }
    attr_reader :payment_method_preview

    sig { returns(T.nilable(String)) }
    attr_reader :return_url

    sig { returns(T.nilable(String)) }
    attr_reader :setup_future_usage

    sig { returns(T.nilable(String)) }
    attr_reader :setup_intent

    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping

    sig { returns(T::Boolean) }
    attr_reader :use_stripe_sdk
  end
end

module Stripe
  class CountrySpec < APIResource
    class VerificationFields < Stripe::StripeObject
      class Company < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :additional

        sig { returns(T::Array[String]) }
        attr_reader :minimum
      end

      class Individual < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :additional

        sig { returns(T::Array[String]) }
        attr_reader :minimum
      end

      sig { returns(Company) }
      attr_reader :company

      sig { returns(Individual) }
      attr_reader :individual
    end

    sig { returns(String) }
    attr_reader :default_currency

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Hash[String, T::Array[String]]) }
    attr_reader :supported_bank_account_currencies

    sig { returns(T::Array[String]) }
    attr_reader :supported_payment_currencies

    sig { returns(T::Array[String]) }
    attr_reader :supported_payment_methods

    sig { returns(T::Array[String]) }
    attr_reader :supported_transfer_countries

    sig { returns(VerificationFields) }
    attr_reader :verification_fields
  end
end

module Stripe
  class Coupon < APIResource
    class AppliesTo < Stripe::StripeObject
      sig { returns(T::Array[String]) }
      attr_reader :products
    end

    class CurrencyOptions < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount_off
    end

    sig { returns(T.nilable(Integer)) }
    attr_reader :amount_off

    sig { returns(AppliesTo) }
    attr_reader :applies_to

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(String)) }
    attr_reader :currency

    sig { returns(T::Hash[String, CurrencyOptions]) }
    attr_reader :currency_options

    sig { returns(String) }
    attr_reader :duration

    sig { returns(T.nilable(Integer)) }
    attr_reader :duration_in_months

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(Integer)) }
    attr_reader :max_redemptions

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :name

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(Float)) }
    attr_reader :percent_off

    sig { returns(T.nilable(Integer)) }
    attr_reader :redeem_by

    sig { returns(Integer) }
    attr_reader :times_redeemed

    sig { returns(T::Boolean) }
    attr_reader :valid

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class CreditNote < APIResource
    class DiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end

    class PretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Billing::CreditBalanceTransaction)) }
      attr_reader :credit_balance_transaction

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount

      sig { returns(String) }
      attr_reader :type
    end

    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(Stripe::TaxRate) }
        attr_reader :rate

        sig { returns(T.nilable(String)) }
        attr_reader :taxability_reason

        sig { returns(T.nilable(Integer)) }
        attr_reader :taxable_amount
      end

      sig { returns(Integer) }
      attr_reader :amount_subtotal

      sig { returns(Integer) }
      attr_reader :amount_tax

      sig { returns(Integer) }
      attr_reader :amount_total

      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
      attr_reader :shipping_rate

      sig { returns(T::Array[Tax]) }
      attr_reader :taxes
    end

    class TaxAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T::Boolean) }
      attr_reader :inclusive

      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate

      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason

      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(Integer) }
    attr_reader :amount_shipping

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    sig { returns(T.nilable(T.any(String, Stripe::CustomerBalanceTransaction))) }
    attr_reader :customer_balance_transaction

    sig { returns(Integer) }
    attr_reader :discount_amount

    sig { returns(T::Array[DiscountAmount]) }
    attr_reader :discount_amounts

    sig { returns(T.nilable(Integer)) }
    attr_reader :effective_at

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.any(String, Stripe::Invoice)) }
    attr_reader :invoice

    sig { returns(Stripe::ListObject) }
    attr_reader :lines

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(String)) }
    attr_reader :memo

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :number

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(Integer)) }
    attr_reader :out_of_band_amount

    sig { returns(String) }
    attr_reader :pdf

    sig { returns(T::Array[PretaxCreditAmount]) }
    attr_reader :pretax_credit_amounts

    sig { returns(T.nilable(String)) }
    attr_reader :reason

    sig { returns(T.nilable(T.any(String, Stripe::Refund))) }
    attr_reader :refund

    sig { returns(T.nilable(ShippingCost)) }
    attr_reader :shipping_cost

    sig { returns(String) }
    attr_reader :status

    sig { returns(Integer) }
    attr_reader :subtotal

    sig { returns(T.nilable(Integer)) }
    attr_reader :subtotal_excluding_tax

    sig { returns(T::Array[TaxAmount]) }
    attr_reader :tax_amounts

    sig { returns(Integer) }
    attr_reader :total

    sig { returns(T.nilable(Integer)) }
    attr_reader :total_excluding_tax

    sig { returns(String) }
    attr_reader :type

    sig { returns(T.nilable(Integer)) }
    attr_reader :voided_at
  end
end

module Stripe
  class CreditNoteLineItem < StripeObject
    class DiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end

    class PretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Billing::CreditBalanceTransaction)) }
      attr_reader :credit_balance_transaction

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount

      sig { returns(String) }
      attr_reader :type
    end

    class TaxAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T::Boolean) }
      attr_reader :inclusive

      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate

      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason

      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T.nilable(Integer)) }
    attr_reader :amount_excluding_tax

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(Integer) }
    attr_reader :discount_amount

    sig { returns(T::Array[DiscountAmount]) }
    attr_reader :discount_amounts

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :invoice_line_item

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Array[PretaxCreditAmount]) }
    attr_reader :pretax_credit_amounts

    sig { returns(T.nilable(Integer)) }
    attr_reader :quantity

    sig { returns(T::Array[TaxAmount]) }
    attr_reader :tax_amounts

    sig { returns(T::Array[Stripe::TaxRate]) }
    attr_reader :tax_rates

    sig { returns(String) }
    attr_reader :type

    sig { returns(T.nilable(Integer)) }
    attr_reader :unit_amount

    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_decimal

    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_excluding_tax
  end
end

module Stripe
  class Customer < APIResource
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

    class InvoiceSettings < Stripe::StripeObject
      class CustomField < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :name

        sig { returns(String) }
        attr_reader :value
      end

      class RenderingOptions < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :amount_tax_display

        sig { returns(T.nilable(String)) }
        attr_reader :template
      end

      sig { returns(T.nilable(T::Array[CustomField])) }
      attr_reader :custom_fields

      sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
      attr_reader :default_payment_method

      sig { returns(T.nilable(String)) }
      attr_reader :footer

      sig { returns(T.nilable(RenderingOptions)) }
      attr_reader :rendering_options
    end

    class Shipping < Stripe::StripeObject
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

      sig { returns(Address) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :carrier

      sig { returns(String) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end

    class Tax < Stripe::StripeObject
      class Location < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :country

        sig { returns(String) }
        attr_reader :source

        sig { returns(T.nilable(String)) }
        attr_reader :state
      end

      sig { returns(String) }
      attr_reader :automatic_tax

      sig { returns(T.nilable(String)) }
      attr_reader :ip_address

      sig { returns(T.nilable(Location)) }
      attr_reader :location
    end

    sig { returns(T.nilable(Address)) }
    attr_reader :address

    sig { returns(Integer) }
    attr_reader :balance

    sig { returns(T.nilable(Stripe::CashBalance)) }
    attr_reader :cash_balance

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(String)) }
    attr_reader :currency

    sig { returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)))) }
    attr_reader :default_source

    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :delinquent

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(Stripe::Discount)) }
    attr_reader :discount

    sig { returns(T.nilable(String)) }
    attr_reader :email

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Hash[String, Integer]) }
    attr_reader :invoice_credit_balance

    sig { returns(T.nilable(String)) }
    attr_reader :invoice_prefix

    sig { returns(InvoiceSettings) }
    attr_reader :invoice_settings

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :name

    sig { returns(Integer) }
    attr_reader :next_invoice_sequence

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(String)) }
    attr_reader :phone

    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :preferred_locales

    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping

    sig { returns(Stripe::ListObject) }
    attr_reader :sources

    sig { returns(Stripe::ListObject) }
    attr_reader :subscriptions

    sig { returns(Tax) }
    attr_reader :tax

    sig { returns(T.nilable(String)) }
    attr_reader :tax_exempt

    sig { returns(Stripe::ListObject) }
    attr_reader :tax_ids

    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class CustomerBalanceTransaction < APIResource
    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(T.any(String, Stripe::CreditNote))) }
    attr_reader :credit_note

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(Integer) }
    attr_reader :ending_balance

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :type
  end
end

module Stripe
  class CustomerCashBalanceTransaction < APIResource
    class AdjustedForOverdraft < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::BalanceTransaction)) }
      attr_reader :balance_transaction

      sig { returns(T.any(String, Stripe::CustomerCashBalanceTransaction)) }
      attr_reader :linked_transaction
    end

    class AppliedToPayment < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end

    class Funded < Stripe::StripeObject
      class BankTransfer < Stripe::StripeObject
        class EuBankTransfer < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :bic

          sig { returns(T.nilable(String)) }
          attr_reader :iban_last4

          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end

        class GbBankTransfer < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_number_last4

          sig { returns(T.nilable(String)) }
          attr_reader :sender_name

          sig { returns(T.nilable(String)) }
          attr_reader :sort_code
        end

        class JpBankTransfer < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :sender_bank

          sig { returns(T.nilable(String)) }
          attr_reader :sender_branch

          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end

        class UsBankTransfer < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :network

          sig { returns(T.nilable(String)) }
          attr_reader :sender_name
        end

        sig { returns(EuBankTransfer) }
        attr_reader :eu_bank_transfer

        sig { returns(GbBankTransfer) }
        attr_reader :gb_bank_transfer

        sig { returns(JpBankTransfer) }
        attr_reader :jp_bank_transfer

        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsBankTransfer) }
        attr_reader :us_bank_transfer
      end

      sig { returns(BankTransfer) }
      attr_reader :bank_transfer
    end

    class RefundedFromPayment < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Refund)) }
      attr_reader :refund
    end

    class TransferredToBalance < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::BalanceTransaction)) }
      attr_reader :balance_transaction
    end

    class UnappliedFromPayment < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end

    sig { returns(AdjustedForOverdraft) }
    attr_reader :adjusted_for_overdraft

    sig { returns(AppliedToPayment) }
    attr_reader :applied_to_payment

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    sig { returns(Integer) }
    attr_reader :ending_balance

    sig { returns(Funded) }
    attr_reader :funded

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(Integer) }
    attr_reader :net_amount

    sig { returns(String) }
    attr_reader :object

    sig { returns(RefundedFromPayment) }
    attr_reader :refunded_from_payment

    sig { returns(TransferredToBalance) }
    attr_reader :transferred_to_balance

    sig { returns(String) }
    attr_reader :type

    sig { returns(UnappliedFromPayment) }
    attr_reader :unapplied_from_payment
  end
end

module Stripe
  class CustomerSession < APIResource
    class Components < Stripe::StripeObject
      class BuyButton < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end

      class PaymentElement < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :payment_method_allow_redisplay_filters

          sig { returns(String) }
          attr_reader :payment_method_redisplay

          sig { returns(T.nilable(Integer)) }
          attr_reader :payment_method_redisplay_limit

          sig { returns(String) }
          attr_reader :payment_method_remove

          sig { returns(String) }
          attr_reader :payment_method_save

          sig { returns(T.nilable(String)) }
          attr_reader :payment_method_save_usage
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(T.nilable(Features)) }
        attr_reader :features
      end

      class PricingTable < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end

      sig { returns(BuyButton) }
      attr_reader :buy_button

      sig { returns(PaymentElement) }
      attr_reader :payment_element

      sig { returns(PricingTable) }
      attr_reader :pricing_table
    end

    sig { returns(String) }
    attr_reader :client_secret

    sig { returns(Components) }
    attr_reader :components

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    sig { returns(Integer) }
    attr_reader :expires_at

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object
  end
end

module Stripe
  class Discount < StripeObject
    sig { returns(T.nilable(String)) }
    attr_reader :checkout_session

    sig { returns(Stripe::Coupon) }
    attr_reader :coupon

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(Integer)) }
    attr_reader :end

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(String)) }
    attr_reader :invoice

    sig { returns(T.nilable(String)) }
    attr_reader :invoice_item

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
    attr_reader :promotion_code

    sig { returns(Integer) }
    attr_reader :start

    sig { returns(T.nilable(String)) }
    attr_reader :subscription

    sig { returns(T.nilable(String)) }
    attr_reader :subscription_item

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class Dispute < APIResource
    class Evidence < Stripe::StripeObject
      class EnhancedEvidence < Stripe::StripeObject
        class VisaCompellingEvidence3 < Stripe::StripeObject
          class DisputedTransaction < Stripe::StripeObject
            class ShippingAddress < Stripe::StripeObject
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

            sig { returns(T.nilable(String)) }
            attr_reader :customer_account_id

            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_fingerprint

            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_id

            sig { returns(T.nilable(String)) }
            attr_reader :customer_email_address

            sig { returns(T.nilable(String)) }
            attr_reader :customer_purchase_ip

            sig { returns(T.nilable(String)) }
            attr_reader :merchandise_or_services

            sig { returns(T.nilable(String)) }
            attr_reader :product_description

            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end

          class PriorUndisputedTransaction < Stripe::StripeObject
            class ShippingAddress < Stripe::StripeObject
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

            sig { returns(String) }
            attr_reader :charge

            sig { returns(T.nilable(String)) }
            attr_reader :customer_account_id

            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_fingerprint

            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_id

            sig { returns(T.nilable(String)) }
            attr_reader :customer_email_address

            sig { returns(T.nilable(String)) }
            attr_reader :customer_purchase_ip

            sig { returns(T.nilable(String)) }
            attr_reader :product_description

            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end

          sig { returns(T.nilable(DisputedTransaction)) }
          attr_reader :disputed_transaction

          sig { returns(T::Array[PriorUndisputedTransaction]) }
          attr_reader :prior_undisputed_transactions
        end

        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
      end

      sig { returns(T.nilable(String)) }
      attr_reader :access_activity_log

      sig { returns(T.nilable(String)) }
      attr_reader :billing_address

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :cancellation_policy

      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_policy_disclosure

      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_rebuttal

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :customer_communication

      sig { returns(T.nilable(String)) }
      attr_reader :customer_email_address

      sig { returns(T.nilable(String)) }
      attr_reader :customer_name

      sig { returns(T.nilable(String)) }
      attr_reader :customer_purchase_ip

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :customer_signature

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :duplicate_charge_documentation

      sig { returns(T.nilable(String)) }
      attr_reader :duplicate_charge_explanation

      sig { returns(T.nilable(String)) }
      attr_reader :duplicate_charge_id

      sig { returns(EnhancedEvidence) }
      attr_reader :enhanced_evidence

      sig { returns(T.nilable(String)) }
      attr_reader :product_description

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :receipt

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :refund_policy

      sig { returns(T.nilable(String)) }
      attr_reader :refund_policy_disclosure

      sig { returns(T.nilable(String)) }
      attr_reader :refund_refusal_explanation

      sig { returns(T.nilable(String)) }
      attr_reader :service_date

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :service_documentation

      sig { returns(T.nilable(String)) }
      attr_reader :shipping_address

      sig { returns(T.nilable(String)) }
      attr_reader :shipping_carrier

      sig { returns(T.nilable(String)) }
      attr_reader :shipping_date

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :shipping_documentation

      sig { returns(T.nilable(String)) }
      attr_reader :shipping_tracking_number

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :uncategorized_file

      sig { returns(T.nilable(String)) }
      attr_reader :uncategorized_text
    end

    class EvidenceDetails < Stripe::StripeObject
      class EnhancedEligibility < Stripe::StripeObject
        class VisaCompellingEvidence3 < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :required_actions

          sig { returns(String) }
          attr_reader :status
        end

        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
      end

      sig { returns(T.nilable(Integer)) }
      attr_reader :due_by

      sig { returns(EnhancedEligibility) }
      attr_reader :enhanced_eligibility

      sig { returns(T::Boolean) }
      attr_reader :has_evidence

      sig { returns(T::Boolean) }
      attr_reader :past_due

      sig { returns(Integer) }
      attr_reader :submission_count
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AmazonPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :dispute_type
      end

      class Card < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :brand

        sig { returns(String) }
        attr_reader :case_type

        sig { returns(T.nilable(String)) }
        attr_reader :network_reason_code
      end

      class Klarna < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reason_code
      end

      class Paypal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :case_id

        sig { returns(T.nilable(String)) }
        attr_reader :reason_code
      end

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(Card) }
      attr_reader :card

      sig { returns(Klarna) }
      attr_reader :klarna

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(String) }
      attr_reader :type
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T::Array[Stripe::BalanceTransaction]) }
    attr_reader :balance_transactions

    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :charge

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T::Array[String]) }
    attr_reader :enhanced_eligibility_types

    sig { returns(Evidence) }
    attr_reader :evidence

    sig { returns(EvidenceDetails) }
    attr_reader :evidence_details

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :is_charge_refundable

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :network_reason_code

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    attr_reader :payment_intent

    sig { returns(PaymentMethodDetails) }
    attr_reader :payment_method_details

    sig { returns(String) }
    attr_reader :reason

    sig { returns(String) }
    attr_reader :status
  end
end

module Stripe
  module Entitlements
    class ActiveEntitlement < APIResource
      sig { returns(T.any(String, Stripe::Entitlements::Feature)) }
      attr_reader :feature

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :lookup_key

      sig { returns(String) }
      attr_reader :object
    end
  end
end

module Stripe
  module Entitlements
    class Feature < APIResource
      sig { returns(T::Boolean) }
      attr_reader :active

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :lookup_key

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object
    end
  end
end

module Stripe
  class EphemeralKey < APIResource
    sig { returns(Integer) }
    attr_reader :created

    sig { returns(Integer) }
    attr_reader :expires

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :secret
  end
end

module Stripe
  class Event < APIResource
    class Data < Stripe::StripeObject
      sig { returns(T::Hash[String, T.any()]) }
      attr_reader :object

      sig { returns(T::Hash[String, T.any()]) }
      attr_reader :previous_attributes
    end

    class Request < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key
    end

    sig { returns(String) }
    attr_reader :account

    sig { returns(T.nilable(String)) }
    attr_reader :api_version

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(Data) }
    attr_reader :data

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(Integer) }
    attr_reader :pending_webhooks

    sig { returns(T.nilable(Request)) }
    attr_reader :request

    sig { returns(String) }
    attr_reader :type
  end
end

module Stripe
  class ExchangeRate < APIResource
    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Hash[String, Float]) }
    attr_reader :rates
  end
end

module Stripe
  class File < APIResource
    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at

    sig { returns(T.nilable(String)) }
    attr_reader :filename

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(Stripe::ListObject)) }
    attr_reader :links

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :purpose

    sig { returns(Integer) }
    attr_reader :size

    sig { returns(T.nilable(String)) }
    attr_reader :title

    sig { returns(T.nilable(String)) }
    attr_reader :type

    sig { returns(T.nilable(String)) }
    attr_reader :url
  end
end

module Stripe
  class FileLink < APIResource
    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T::Boolean) }
    attr_reader :expired

    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at

    sig { returns(T.any(String, Stripe::File)) }
    attr_reader :file

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(String)) }
    attr_reader :url
  end
end

module Stripe
  module FinancialConnections
    class Account < APIResource
      class AccountHolder < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(T.any(String, Stripe::Customer)) }
        attr_reader :customer

        sig { returns(String) }
        attr_reader :type
      end

      class Balance < Stripe::StripeObject
        class Cash < Stripe::StripeObject
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          attr_reader :available
        end

        class Credit < Stripe::StripeObject
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          attr_reader :used
        end

        sig { returns(Integer) }
        attr_reader :as_of

        sig { returns(Cash) }
        attr_reader :cash

        sig { returns(Credit) }
        attr_reader :credit

        sig { returns(T::Hash[String, Integer]) }
        attr_reader :current

        sig { returns(String) }
        attr_reader :type
      end

      class BalanceRefresh < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :last_attempted_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at

        sig { returns(String) }
        attr_reader :status
      end

      class OwnershipRefresh < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :last_attempted_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at

        sig { returns(String) }
        attr_reader :status
      end

      class TransactionRefresh < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :id

        sig { returns(Integer) }
        attr_reader :last_attempted_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at

        sig { returns(String) }
        attr_reader :status
      end

      sig { returns(T.nilable(AccountHolder)) }
      attr_reader :account_holder

      sig { returns(T.nilable(Balance)) }
      attr_reader :balance

      sig { returns(T.nilable(BalanceRefresh)) }
      attr_reader :balance_refresh

      sig { returns(String) }
      attr_reader :category

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { returns(String) }
      attr_reader :id

      sig { returns(String) }
      attr_reader :institution_name

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(T.any(String, Stripe::FinancialConnections::AccountOwnership))) }
      attr_reader :ownership

      sig { returns(T.nilable(OwnershipRefresh)) }
      attr_reader :ownership_refresh

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :permissions

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :subcategory

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :subscriptions

      sig { returns(T::Array[String]) }
      attr_reader :supported_payment_method_types

      sig { returns(T.nilable(TransactionRefresh)) }
      attr_reader :transaction_refresh
    end
  end
end

module Stripe
  module FinancialConnections
    class AccountOwner < StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { returns(String) }
      attr_reader :id

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :ownership

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { returns(T.nilable(String)) }
      attr_reader :raw_address

      sig { returns(T.nilable(Integer)) }
      attr_reader :refreshed_at
    end
  end
end

module Stripe
  module FinancialConnections
    class AccountOwnership < StripeObject
      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :id

      sig { returns(String) }
      attr_reader :object

      sig { returns(Stripe::ListObject) }
      attr_reader :owners
    end
  end
end

module Stripe
  module FinancialConnections
    class Session < APIResource
      class AccountHolder < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(T.any(String, Stripe::Customer)) }
        attr_reader :customer

        sig { returns(String) }
        attr_reader :type
      end

      class Filters < Stripe::StripeObject
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :account_subcategories

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :countries
      end

      sig { returns(T.nilable(AccountHolder)) }
      attr_reader :account_holder

      sig { returns(Stripe::ListObject) }
      attr_reader :accounts

      sig { returns(String) }
      attr_reader :client_secret

      sig { returns(Filters) }
      attr_reader :filters

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T::Array[String]) }
      attr_reader :permissions

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :prefetch

      sig { returns(String) }
      attr_reader :return_url
    end
  end
end

module Stripe
  module FinancialConnections
    class Transaction < APIResource
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :void_at
      end

      sig { returns(String) }
      attr_reader :account

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency

      sig { returns(String) }
      attr_reader :description

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      sig { returns(Integer) }
      attr_reader :transacted_at

      sig { returns(String) }
      attr_reader :transaction_refresh

      sig { returns(Integer) }
      attr_reader :updated
    end
  end
end

module Stripe
  module Forwarding
    class Request < APIResource
      class RequestContext < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :destination_duration

        sig { returns(String) }
        attr_reader :destination_ip_address
      end

      class RequestDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name

          sig { returns(String) }
          attr_reader :value
        end

        sig { returns(String) }
        attr_reader :body

        sig { returns(T::Array[Header]) }
        attr_reader :headers

        sig { returns(String) }
        attr_reader :http_method
      end

      class ResponseDetails < Stripe::StripeObject
        class Header < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name

          sig { returns(String) }
          attr_reader :value
        end

        sig { returns(String) }
        attr_reader :body

        sig { returns(T::Array[Header]) }
        attr_reader :headers

        sig { returns(Integer) }
        attr_reader :status
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :payment_method

      sig { returns(T::Array[String]) }
      attr_reader :replacements

      sig { returns(T.nilable(RequestContext)) }
      attr_reader :request_context

      sig { returns(T.nilable(RequestDetails)) }
      attr_reader :request_details

      sig { returns(T.nilable(ResponseDetails)) }
      attr_reader :response_details

      sig { returns(T.nilable(String)) }
      attr_reader :url
    end
  end
end

module Stripe
  class FundingInstructions < APIResource
    class BankTransfer < Stripe::StripeObject
      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_number

          sig { returns(String) }
          attr_reader :bank_name

          sig { returns(String) }
          attr_reader :routing_number
        end

        class Iban < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_holder_name

          sig { returns(String) }
          attr_reader :bic

          sig { returns(String) }
          attr_reader :country

          sig { returns(String) }
          attr_reader :iban
        end

        class SortCode < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_holder_name

          sig { returns(String) }
          attr_reader :account_number

          sig { returns(String) }
          attr_reader :sort_code
        end

        class Spei < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :bank_code

          sig { returns(String) }
          attr_reader :bank_name

          sig { returns(String) }
          attr_reader :clabe
        end

        class Swift < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_number

          sig { returns(String) }
          attr_reader :bank_name

          sig { returns(String) }
          attr_reader :swift_code
        end

        class Zengin < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_name

          sig { returns(T.nilable(String)) }
          attr_reader :account_number

          sig { returns(T.nilable(String)) }
          attr_reader :account_type

          sig { returns(T.nilable(String)) }
          attr_reader :bank_code

          sig { returns(T.nilable(String)) }
          attr_reader :bank_name

          sig { returns(T.nilable(String)) }
          attr_reader :branch_code

          sig { returns(T.nilable(String)) }
          attr_reader :branch_name
        end

        sig { returns(Aba) }
        attr_reader :aba

        sig { returns(Iban) }
        attr_reader :iban

        sig { returns(SortCode) }
        attr_reader :sort_code

        sig { returns(Spei) }
        attr_reader :spei

        sig { returns(T::Array[String]) }
        attr_reader :supported_networks

        sig { returns(Swift) }
        attr_reader :swift

        sig { returns(String) }
        attr_reader :type

        sig { returns(Zengin) }
        attr_reader :zengin
      end

      sig { returns(String) }
      attr_reader :country

      sig { returns(T::Array[FinancialAddress]) }
      attr_reader :financial_addresses

      sig { returns(String) }
      attr_reader :type
    end

    sig { returns(BankTransfer) }
    attr_reader :bank_transfer

    sig { returns(String) }
    attr_reader :currency

    sig { returns(String) }
    attr_reader :funding_type

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object
  end
end

module Stripe
  module Identity
    class VerificationReport < APIResource
      class Document < Stripe::StripeObject
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

        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end

        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end

        class ExpirationDate < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end

        class IssuedDate < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end

        sig { returns(T.nilable(Address)) }
        attr_reader :address

        sig { returns(T.nilable(Dob)) }
        attr_reader :dob

        sig { returns(T.nilable(Error)) }
        attr_reader :error

        sig { returns(T.nilable(ExpirationDate)) }
        attr_reader :expiration_date

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :files

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { returns(T.nilable(IssuedDate)) }
        attr_reader :issued_date

        sig { returns(T.nilable(String)) }
        attr_reader :issuing_country

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { returns(T.nilable(String)) }
        attr_reader :number

        sig { returns(String) }
        attr_reader :status

        sig { returns(T.nilable(String)) }
        attr_reader :type
      end

      class Email < Stripe::StripeObject
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { returns(T.nilable(Error)) }
        attr_reader :error

        sig { returns(String) }
        attr_reader :status
      end

      class IdNumber < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end

        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end

        sig { returns(T.nilable(Dob)) }
        attr_reader :dob

        sig { returns(T.nilable(Error)) }
        attr_reader :error

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :id_number

        sig { returns(T.nilable(String)) }
        attr_reader :id_number_type

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { returns(String) }
        attr_reader :status
      end

      class Options < Stripe::StripeObject
        class Document < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :allowed_types

          sig { returns(T::Boolean) }
          attr_reader :require_id_number

          sig { returns(T::Boolean) }
          attr_reader :require_live_capture

          sig { returns(T::Boolean) }
          attr_reader :require_matching_selfie
        end

        class IdNumber < Stripe::StripeObject
        end

        sig { returns(Document) }
        attr_reader :document

        sig { returns(IdNumber) }
        attr_reader :id_number
      end

      class Phone < Stripe::StripeObject
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end

        sig { returns(T.nilable(Error)) }
        attr_reader :error

        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { returns(String) }
        attr_reader :status
      end

      class Selfie < Stripe::StripeObject
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end

        sig { returns(T.nilable(String)) }
        attr_reader :document

        sig { returns(T.nilable(Error)) }
        attr_reader :error

        sig { returns(T.nilable(String)) }
        attr_reader :selfie

        sig { returns(String) }
        attr_reader :status
      end

      sig { returns(T.nilable(String)) }
      attr_reader :client_reference_id

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(Document) }
      attr_reader :document

      sig { returns(Email) }
      attr_reader :email

      sig { returns(String) }
      attr_reader :id

      sig { returns(IdNumber) }
      attr_reader :id_number

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(Options) }
      attr_reader :options

      sig { returns(Phone) }
      attr_reader :phone

      sig { returns(Selfie) }
      attr_reader :selfie

      sig { returns(String) }
      attr_reader :type

      sig { returns(String) }
      attr_reader :verification_flow

      sig { returns(T.nilable(String)) }
      attr_reader :verification_session
    end
  end
end

module Stripe
  module Identity
    class VerificationSession < APIResource
      class LastError < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { returns(T.nilable(String)) }
        attr_reader :reason
      end

      class Options < Stripe::StripeObject
        class Document < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :allowed_types

          sig { returns(T::Boolean) }
          attr_reader :require_id_number

          sig { returns(T::Boolean) }
          attr_reader :require_live_capture

          sig { returns(T::Boolean) }
          attr_reader :require_matching_selfie
        end

        class Email < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :require_verification
        end

        class IdNumber < Stripe::StripeObject
        end

        class Phone < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :require_verification
        end

        sig { returns(Document) }
        attr_reader :document

        sig { returns(Email) }
        attr_reader :email

        sig { returns(IdNumber) }
        attr_reader :id_number

        sig { returns(Phone) }
        attr_reader :phone
      end

      class ProvidedDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :email

        sig { returns(String) }
        attr_reader :phone
      end

      class Redaction < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :status
      end

      class VerifiedOutputs < Stripe::StripeObject
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

        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end

        sig { returns(T.nilable(Address)) }
        attr_reader :address

        sig { returns(T.nilable(Dob)) }
        attr_reader :dob

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :id_number

        sig { returns(T.nilable(String)) }
        attr_reader :id_number_type

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { returns(T.nilable(String)) }
        attr_reader :phone
      end

      sig { returns(T.nilable(String)) }
      attr_reader :client_reference_id

      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(LastError)) }
      attr_reader :last_error

      sig { returns(T.nilable(T.any(String, Stripe::Identity::VerificationReport))) }
      attr_reader :last_verification_report

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(Options)) }
      attr_reader :options

      sig { returns(T.nilable(ProvidedDetails)) }
      attr_reader :provided_details

      sig { returns(T.nilable(Redaction)) }
      attr_reader :redaction

      sig { returns(T.nilable(String)) }
      attr_reader :related_customer

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :type

      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { returns(String) }
      attr_reader :verification_flow

      sig { returns(T.nilable(VerifiedOutputs)) }
      attr_reader :verified_outputs
    end
  end
end

module Stripe
  class Invoice < APIResource
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T::Boolean) }
      attr_reader :enabled

      sig { returns(T.nilable(Liability)) }
      attr_reader :liability

      sig { returns(T.nilable(String)) }
      attr_reader :status
    end

    class CustomField < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :value
    end

    class CustomerAddress < Stripe::StripeObject
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

    class CustomerShipping < Stripe::StripeObject
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

      sig { returns(Address) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :carrier

      sig { returns(String) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end

    class CustomerTaxId < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :type

      sig { returns(T.nilable(String)) }
      attr_reader :value
    end

    class FromInvoice < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :action

      sig { returns(T.any(String, Stripe::Invoice)) }
      attr_reader :invoice
    end

    class Issuer < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :account

      sig { returns(String) }
      attr_reader :type
    end

    class LastFinalizationError < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge

      sig { returns(String) }
      attr_reader :code

      sig { returns(String) }
      attr_reader :decline_code

      sig { returns(String) }
      attr_reader :doc_url

      sig { returns(String) }
      attr_reader :message

      sig { returns(String) }
      attr_reader :param

      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent

      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method

      sig { returns(String) }
      attr_reader :payment_method_type

      sig { returns(String) }
      attr_reader :request_log_url

      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent

      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source

      sig { returns(String) }
      attr_reader :type
    end

    class PaymentSettings < Stripe::StripeObject
      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :transaction_type
          end

          sig { returns(MandateOptions) }
          attr_reader :mandate_options

          sig { returns(String) }
          attr_reader :verification_method
        end

        class Bancontact < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :preferred_language
        end

        class Card < Stripe::StripeObject
          class Installments < Stripe::StripeObject
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :enabled
          end

          sig { returns(Installments) }
          attr_reader :installments

          sig { returns(T.nilable(String)) }
          attr_reader :request_three_d_secure
        end

        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :country
            end

            sig { returns(EuBankTransfer) }
            attr_reader :eu_bank_transfer

            sig { returns(T.nilable(String)) }
            attr_reader :type
          end

          sig { returns(BankTransfer) }
          attr_reader :bank_transfer

          sig { returns(T.nilable(String)) }
          attr_reader :funding_type
        end

        class Konbini < Stripe::StripeObject
        end

        class SepaDebit < Stripe::StripeObject
        end

        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              sig { returns(T::Array[String]) }
              attr_reader :account_subcategories
            end

            sig { returns(Filters) }
            attr_reader :filters

            sig { returns(T::Array[String]) }
            attr_reader :permissions

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :prefetch
          end

          sig { returns(FinancialConnections) }
          attr_reader :financial_connections

          sig { returns(String) }
          attr_reader :verification_method
        end

        sig { returns(T.nilable(AcssDebit)) }
        attr_reader :acss_debit

        sig { returns(T.nilable(Bancontact)) }
        attr_reader :bancontact

        sig { returns(T.nilable(Card)) }
        attr_reader :card

        sig { returns(T.nilable(CustomerBalance)) }
        attr_reader :customer_balance

        sig { returns(T.nilable(Konbini)) }
        attr_reader :konbini

        sig { returns(T.nilable(SepaDebit)) }
        attr_reader :sepa_debit

        sig { returns(T.nilable(UsBankAccount)) }
        attr_reader :us_bank_account
      end

      sig { returns(T.nilable(String)) }
      attr_reader :default_mandate

      sig { returns(T.nilable(PaymentMethodOptions)) }
      attr_reader :payment_method_options

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_method_types
    end

    class Rendering < Stripe::StripeObject
      class Pdf < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :page_size
      end

      sig { returns(T.nilable(String)) }
      attr_reader :amount_tax_display

      sig { returns(T.nilable(Pdf)) }
      attr_reader :pdf

      sig { returns(T.nilable(String)) }
      attr_reader :template

      sig { returns(T.nilable(Integer)) }
      attr_reader :template_version
    end

    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(Stripe::TaxRate) }
        attr_reader :rate

        sig { returns(T.nilable(String)) }
        attr_reader :taxability_reason

        sig { returns(T.nilable(Integer)) }
        attr_reader :taxable_amount
      end

      sig { returns(Integer) }
      attr_reader :amount_subtotal

      sig { returns(Integer) }
      attr_reader :amount_tax

      sig { returns(Integer) }
      attr_reader :amount_total

      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
      attr_reader :shipping_rate

      sig { returns(T::Array[Tax]) }
      attr_reader :taxes
    end

    class ShippingDetails < Stripe::StripeObject
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

      sig { returns(Address) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :carrier

      sig { returns(String) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end

    class StatusTransitions < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :finalized_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :marked_uncollectible_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :paid_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :voided_at
    end

    class SubscriptionDetails < Stripe::StripeObject
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
    end

    class ThresholdReason < Stripe::StripeObject
      class ItemReason < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :line_item_ids

        sig { returns(Integer) }
        attr_reader :usage_gte
      end

      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_gte

      sig { returns(T::Array[ItemReason]) }
      attr_reader :item_reasons
    end

    class TotalDiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end

    class TotalPretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.nilable(T.any(String, Stripe::Billing::CreditBalanceTransaction))) }
      attr_reader :credit_balance_transaction

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount

      sig { returns(String) }
      attr_reader :type
    end

    class TotalTaxAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T::Boolean) }
      attr_reader :inclusive

      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate

      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason

      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end

    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end

    sig { returns(T.nilable(String)) }
    attr_reader :account_country

    sig { returns(T.nilable(String)) }
    attr_reader :account_name

    sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
    attr_reader :account_tax_ids

    sig { returns(Integer) }
    attr_reader :amount_due

    sig { returns(Integer) }
    attr_reader :amount_paid

    sig { returns(Integer) }
    attr_reader :amount_remaining

    sig { returns(Integer) }
    attr_reader :amount_shipping

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    sig { returns(Integer) }
    attr_reader :attempt_count

    sig { returns(T::Boolean) }
    attr_reader :attempted

    sig { returns(T::Boolean) }
    attr_reader :auto_advance

    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax

    sig { returns(T.nilable(Integer)) }
    attr_reader :automatically_finalizes_at

    sig { returns(T.nilable(String)) }
    attr_reader :billing_reason

    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :charge

    sig { returns(String) }
    attr_reader :collection_method

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(T::Array[CustomField])) }
    attr_reader :custom_fields

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(CustomerAddress)) }
    attr_reader :customer_address

    sig { returns(T.nilable(String)) }
    attr_reader :customer_email

    sig { returns(T.nilable(String)) }
    attr_reader :customer_name

    sig { returns(T.nilable(String)) }
    attr_reader :customer_phone

    sig { returns(T.nilable(CustomerShipping)) }
    attr_reader :customer_shipping

    sig { returns(T.nilable(String)) }
    attr_reader :customer_tax_exempt

    sig { returns(T.nilable(T::Array[CustomerTaxId])) }
    attr_reader :customer_tax_ids

    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    attr_reader :default_payment_method

    sig { returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)))) }
    attr_reader :default_source

    sig { returns(T::Array[Stripe::TaxRate]) }
    attr_reader :default_tax_rates

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(Stripe::Discount)) }
    attr_reader :discount

    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts

    sig { returns(T.nilable(Integer)) }
    attr_reader :due_date

    sig { returns(T.nilable(Integer)) }
    attr_reader :effective_at

    sig { returns(T.nilable(Integer)) }
    attr_reader :ending_balance

    sig { returns(T.nilable(String)) }
    attr_reader :footer

    sig { returns(T.nilable(FromInvoice)) }
    attr_reader :from_invoice

    sig { returns(T.nilable(String)) }
    attr_reader :hosted_invoice_url

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(String)) }
    attr_reader :invoice_pdf

    sig { returns(Issuer) }
    attr_reader :issuer

    sig { returns(T.nilable(LastFinalizationError)) }
    attr_reader :last_finalization_error

    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :latest_revision

    sig { returns(Stripe::ListObject) }
    attr_reader :lines

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(T.nilable(Integer)) }
    attr_reader :next_payment_attempt

    sig { returns(T.nilable(String)) }
    attr_reader :number

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(T::Boolean) }
    attr_reader :paid

    sig { returns(T::Boolean) }
    attr_reader :paid_out_of_band

    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    attr_reader :payment_intent

    sig { returns(PaymentSettings) }
    attr_reader :payment_settings

    sig { returns(Integer) }
    attr_reader :period_end

    sig { returns(Integer) }
    attr_reader :period_start

    sig { returns(Integer) }
    attr_reader :post_payment_credit_notes_amount

    sig { returns(Integer) }
    attr_reader :pre_payment_credit_notes_amount

    sig { returns(T.nilable(T.any(String, Stripe::Quote))) }
    attr_reader :quote

    sig { returns(T.nilable(String)) }
    attr_reader :receipt_number

    sig { returns(T.nilable(Rendering)) }
    attr_reader :rendering

    sig { returns(T.nilable(ShippingCost)) }
    attr_reader :shipping_cost

    sig { returns(T.nilable(ShippingDetails)) }
    attr_reader :shipping_details

    sig { returns(Integer) }
    attr_reader :starting_balance

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    sig { returns(T.nilable(String)) }
    attr_reader :status

    sig { returns(StatusTransitions) }
    attr_reader :status_transitions

    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription

    sig { returns(T.nilable(SubscriptionDetails)) }
    attr_reader :subscription_details

    sig { returns(Integer) }
    attr_reader :subscription_proration_date

    sig { returns(Integer) }
    attr_reader :subtotal

    sig { returns(T.nilable(Integer)) }
    attr_reader :subtotal_excluding_tax

    sig { returns(T.nilable(Integer)) }
    attr_reader :tax

    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    sig { returns(ThresholdReason) }
    attr_reader :threshold_reason

    sig { returns(Integer) }
    attr_reader :total

    sig { returns(T.nilable(T::Array[TotalDiscountAmount])) }
    attr_reader :total_discount_amounts

    sig { returns(T.nilable(Integer)) }
    attr_reader :total_excluding_tax

    sig { returns(T.nilable(T::Array[TotalPretaxCreditAmount])) }
    attr_reader :total_pretax_credit_amounts

    sig { returns(T::Array[TotalTaxAmount]) }
    attr_reader :total_tax_amounts

    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data

    sig { returns(T.nilable(Integer)) }
    attr_reader :webhooks_delivered_at

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class InvoiceItem < APIResource
    class Period < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :end

      sig { returns(Integer) }
      attr_reader :start
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    sig { returns(Integer) }
    attr_reader :date

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T::Boolean) }
    attr_reader :discountable

    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Discount)])) }
    attr_reader :discounts

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(Period) }
    attr_reader :period

    sig { returns(T.nilable(Stripe::Plan)) }
    attr_reader :plan

    sig { returns(T.nilable(Stripe::Price)) }
    attr_reader :price

    sig { returns(T::Boolean) }
    attr_reader :proration

    sig { returns(Integer) }
    attr_reader :quantity

    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription

    sig { returns(String) }
    attr_reader :subscription_item

    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    attr_reader :tax_rates

    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    sig { returns(T.nilable(Integer)) }
    attr_reader :unit_amount

    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_decimal

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class InvoiceLineItem < StripeObject
    class DiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end

    class Period < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :end

      sig { returns(Integer) }
      attr_reader :start
    end

    class PretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.nilable(T.any(String, Stripe::Billing::CreditBalanceTransaction))) }
      attr_reader :credit_balance_transaction

      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount

      sig { returns(String) }
      attr_reader :type
    end

    class ProrationDetails < Stripe::StripeObject
      class CreditedItems < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :invoice

        sig { returns(T::Array[String]) }
        attr_reader :invoice_line_items
      end

      sig { returns(T.nilable(CreditedItems)) }
      attr_reader :credited_items
    end

    class TaxAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T::Boolean) }
      attr_reader :inclusive

      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate

      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason

      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T.nilable(Integer)) }
    attr_reader :amount_excluding_tax

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(T::Array[DiscountAmount])) }
    attr_reader :discount_amounts

    sig { returns(T::Boolean) }
    attr_reader :discountable

    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(String)) }
    attr_reader :invoice

    sig { returns(T.any(String, Stripe::InvoiceItem)) }
    attr_reader :invoice_item

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(Period) }
    attr_reader :period

    sig { returns(T.nilable(Stripe::Plan)) }
    attr_reader :plan

    sig { returns(T.nilable(T::Array[PretaxCreditAmount])) }
    attr_reader :pretax_credit_amounts

    sig { returns(T.nilable(Stripe::Price)) }
    attr_reader :price

    sig { returns(T::Boolean) }
    attr_reader :proration

    sig { returns(T.nilable(ProrationDetails)) }
    attr_reader :proration_details

    sig { returns(T.nilable(Integer)) }
    attr_reader :quantity

    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription

    sig { returns(T.any(String, Stripe::SubscriptionItem)) }
    attr_reader :subscription_item

    sig { returns(T::Array[TaxAmount]) }
    attr_reader :tax_amounts

    sig { returns(T::Array[Stripe::TaxRate]) }
    attr_reader :tax_rates

    sig { returns(String) }
    attr_reader :type

    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_excluding_tax
  end
end

module Stripe
  class InvoiceRenderingTemplate < APIResource
    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :nickname

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :status

    sig { returns(Integer) }
    attr_reader :version
  end
end

module Stripe
  module Issuing
    class Authorization < APIResource
      class AmountDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :atm_fee

        sig { returns(T.nilable(Integer)) }
        attr_reader :cashback_amount
      end

      class Fleet < Stripe::StripeObject
        class CardholderPromptData < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :alphanumeric_id

          sig { returns(T.nilable(String)) }
          attr_reader :driver_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :odometer

          sig { returns(T.nilable(String)) }
          attr_reader :unspecified_id

          sig { returns(T.nilable(String)) }
          attr_reader :user_id

          sig { returns(T.nilable(String)) }
          attr_reader :vehicle_number
        end

        class ReportedBreakdown < Stripe::StripeObject
          class Fuel < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :gross_amount_decimal
          end

          class NonFuel < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :gross_amount_decimal
          end

          class Tax < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :local_amount_decimal

            sig { returns(T.nilable(String)) }
            attr_reader :national_amount_decimal
          end

          sig { returns(T.nilable(Fuel)) }
          attr_reader :fuel

          sig { returns(T.nilable(NonFuel)) }
          attr_reader :non_fuel

          sig { returns(T.nilable(Tax)) }
          attr_reader :tax
        end

        sig { returns(T.nilable(CardholderPromptData)) }
        attr_reader :cardholder_prompt_data

        sig { returns(T.nilable(String)) }
        attr_reader :purchase_type

        sig { returns(T.nilable(ReportedBreakdown)) }
        attr_reader :reported_breakdown

        sig { returns(T.nilable(String)) }
        attr_reader :service_type
      end

      class Fuel < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :industry_product_code

        sig { returns(T.nilable(String)) }
        attr_reader :quantity_decimal

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { returns(T.nilable(String)) }
        attr_reader :unit

        sig { returns(T.nilable(String)) }
        attr_reader :unit_cost_decimal
      end

      class MerchantData < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :category

        sig { returns(String) }
        attr_reader :category_code

        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { returns(String) }
        attr_reader :network_id

        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { returns(T.nilable(String)) }
        attr_reader :terminal_id

        sig { returns(T.nilable(String)) }
        attr_reader :url
      end

      class NetworkData < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :acquiring_institution_id

        sig { returns(T.nilable(String)) }
        attr_reader :system_trace_audit_number

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class PendingRequest < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :atm_fee

          sig { returns(T.nilable(Integer)) }
          attr_reader :cashback_amount
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(T.nilable(AmountDetails)) }
        attr_reader :amount_details

        sig { returns(String) }
        attr_reader :currency

        sig { returns(T::Boolean) }
        attr_reader :is_amount_controllable

        sig { returns(Integer) }
        attr_reader :merchant_amount

        sig { returns(String) }
        attr_reader :merchant_currency

        sig { returns(T.nilable(Integer)) }
        attr_reader :network_risk_score
      end

      class RequestHistory < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :atm_fee

          sig { returns(T.nilable(Integer)) }
          attr_reader :cashback_amount
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(T.nilable(AmountDetails)) }
        attr_reader :amount_details

        sig { returns(T::Boolean) }
        attr_reader :approved

        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code

        sig { returns(Integer) }
        attr_reader :created

        sig { returns(String) }
        attr_reader :currency

        sig { returns(Integer) }
        attr_reader :merchant_amount

        sig { returns(String) }
        attr_reader :merchant_currency

        sig { returns(T.nilable(Integer)) }
        attr_reader :network_risk_score

        sig { returns(String) }
        attr_reader :reason

        sig { returns(T.nilable(String)) }
        attr_reader :reason_message

        sig { returns(T.nilable(Integer)) }
        attr_reader :requested_at
      end

      class Treasury < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :received_credits

        sig { returns(T::Array[String]) }
        attr_reader :received_debits

        sig { returns(T.nilable(String)) }
        attr_reader :transaction
      end

      class VerificationData < Stripe::StripeObject
        class AuthenticationExemption < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :claimed_by

          sig { returns(String) }
          attr_reader :type
        end

        class ThreeDSecure < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :result
        end

        sig { returns(String) }
        attr_reader :address_line1_check

        sig { returns(String) }
        attr_reader :address_postal_code_check

        sig { returns(T.nilable(AuthenticationExemption)) }
        attr_reader :authentication_exemption

        sig { returns(String) }
        attr_reader :cvc_check

        sig { returns(String) }
        attr_reader :expiry_check

        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.nilable(AmountDetails)) }
      attr_reader :amount_details

      sig { returns(T::Boolean) }
      attr_reader :approved

      sig { returns(String) }
      attr_reader :authorization_method

      sig { returns(T::Array[Stripe::BalanceTransaction]) }
      attr_reader :balance_transactions

      sig { returns(Stripe::Issuing::Card) }
      attr_reader :card

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      attr_reader :cardholder

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(Fleet)) }
      attr_reader :fleet

      sig { returns(T.nilable(Fuel)) }
      attr_reader :fuel

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(Integer) }
      attr_reader :merchant_amount

      sig { returns(String) }
      attr_reader :merchant_currency

      sig { returns(MerchantData) }
      attr_reader :merchant_data

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(T.nilable(NetworkData)) }
      attr_reader :network_data

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(PendingRequest)) }
      attr_reader :pending_request

      sig { returns(T::Array[RequestHistory]) }
      attr_reader :request_history

      sig { returns(String) }
      attr_reader :status

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      attr_reader :token

      sig { returns(T::Array[Stripe::Issuing::Transaction]) }
      attr_reader :transactions

      sig { returns(T.nilable(Treasury)) }
      attr_reader :treasury

      sig { returns(VerificationData) }
      attr_reader :verification_data

      sig { returns(T.nilable(String)) }
      attr_reader :wallet
    end
  end
end

module Stripe
  module Issuing
    class Card < APIResource
      class Shipping < Stripe::StripeObject
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

        class AddressValidation < Stripe::StripeObject
          class NormalizedAddress < Stripe::StripeObject
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

          sig { returns(String) }
          attr_reader :mode

          sig { returns(T.nilable(NormalizedAddress)) }
          attr_reader :normalized_address

          sig { returns(T.nilable(String)) }
          attr_reader :result
        end

        class Customs < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :eori_number
        end

        sig { returns(Address) }
        attr_reader :address

        sig { returns(T.nilable(AddressValidation)) }
        attr_reader :address_validation

        sig { returns(T.nilable(String)) }
        attr_reader :carrier

        sig { returns(T.nilable(Customs)) }
        attr_reader :customs

        sig { returns(T.nilable(Integer)) }
        attr_reader :eta

        sig { returns(String) }
        attr_reader :name

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :require_signature

        sig { returns(String) }
        attr_reader :service

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number

        sig { returns(T.nilable(String)) }
        attr_reader :tracking_url

        sig { returns(String) }
        attr_reader :type
      end

      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :categories

          sig { returns(String) }
          attr_reader :interval
        end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_categories

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_merchant_countries

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_categories

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_merchant_countries

        sig { returns(T.nilable(T::Array[SpendingLimit])) }
        attr_reader :spending_limits

        sig { returns(T.nilable(String)) }
        attr_reader :spending_limits_currency
      end

      class Wallets < Stripe::StripeObject
        class ApplePay < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :eligible

          sig { returns(T.nilable(String)) }
          attr_reader :ineligible_reason
        end

        class GooglePay < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :eligible

          sig { returns(T.nilable(String)) }
          attr_reader :ineligible_reason
        end

        sig { returns(ApplePay) }
        attr_reader :apple_pay

        sig { returns(GooglePay) }
        attr_reader :google_pay

        sig { returns(T.nilable(String)) }
        attr_reader :primary_account_identifier
      end

      sig { returns(String) }
      attr_reader :brand

      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_reason

      sig { returns(Stripe::Issuing::Cardholder) }
      attr_reader :cardholder

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(String) }
      attr_reader :cvc

      sig { returns(Integer) }
      attr_reader :exp_month

      sig { returns(Integer) }
      attr_reader :exp_year

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account

      sig { returns(String) }
      attr_reader :id

      sig { returns(String) }
      attr_reader :last4

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :number

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::PersonalizationDesign))) }
      attr_reader :personalization_design

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      attr_reader :replaced_by

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      attr_reader :replacement_for

      sig { returns(T.nilable(String)) }
      attr_reader :replacement_reason

      sig { returns(T.nilable(Shipping)) }
      attr_reader :shipping

      sig { returns(SpendingControls) }
      attr_reader :spending_controls

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :type

      sig { returns(T.nilable(Wallets)) }
      attr_reader :wallets
    end
  end
end

module Stripe
  module Issuing
    class Cardholder < APIResource
      class Billing < Stripe::StripeObject
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

        sig { returns(Address) }
        attr_reader :address
      end

      class Company < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :tax_id_provided
      end

      class Individual < Stripe::StripeObject
        class CardIssuing < Stripe::StripeObject
          class UserTermsAcceptance < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :date

            sig { returns(T.nilable(String)) }
            attr_reader :ip

            sig { returns(T.nilable(String)) }
            attr_reader :user_agent
          end

          sig { returns(T.nilable(UserTermsAcceptance)) }
          attr_reader :user_terms_acceptance
        end

        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day

          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end

        class Verification < Stripe::StripeObject
          class Document < Stripe::StripeObject
            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            attr_reader :back

            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            attr_reader :front
          end

          sig { returns(T.nilable(Document)) }
          attr_reader :document
        end

        sig { returns(T.nilable(CardIssuing)) }
        attr_reader :card_issuing

        sig { returns(T.nilable(Dob)) }
        attr_reader :dob

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { returns(T.nilable(Verification)) }
        attr_reader :verification
      end

      class Requirements < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :disabled_reason

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :past_due
      end

      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :categories

          sig { returns(String) }
          attr_reader :interval
        end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_categories

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_merchant_countries

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_categories

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_merchant_countries

        sig { returns(T.nilable(T::Array[SpendingLimit])) }
        attr_reader :spending_limits

        sig { returns(T.nilable(String)) }
        attr_reader :spending_limits_currency
      end

      sig { returns(Billing) }
      attr_reader :billing

      sig { returns(T.nilable(Company)) }
      attr_reader :company

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(Individual)) }
      attr_reader :individual

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :preferred_locales

      sig { returns(Requirements) }
      attr_reader :requirements

      sig { returns(T.nilable(SpendingControls)) }
      attr_reader :spending_controls

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :type
    end
  end
end

module Stripe
  module Issuing
    class Dispute < APIResource
      class Evidence < Stripe::StripeObject
        class Canceled < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(Integer)) }
          attr_reader :canceled_at

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :cancellation_policy_provided

          sig { returns(T.nilable(String)) }
          attr_reader :cancellation_reason

          sig { returns(T.nilable(Integer)) }
          attr_reader :expected_at

          sig { returns(T.nilable(String)) }
          attr_reader :explanation

          sig { returns(T.nilable(String)) }
          attr_reader :product_description

          sig { returns(T.nilable(String)) }
          attr_reader :product_type

          sig { returns(T.nilable(String)) }
          attr_reader :return_status

          sig { returns(T.nilable(Integer)) }
          attr_reader :returned_at
        end

        class Duplicate < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :card_statement

          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :cash_receipt

          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :check_image

          sig { returns(T.nilable(String)) }
          attr_reader :explanation

          sig { returns(T.nilable(String)) }
          attr_reader :original_transaction
        end

        class Fraudulent < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(String)) }
          attr_reader :explanation
        end

        class MerchandiseNotAsDescribed < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(String)) }
          attr_reader :explanation

          sig { returns(T.nilable(Integer)) }
          attr_reader :received_at

          sig { returns(T.nilable(String)) }
          attr_reader :return_description

          sig { returns(T.nilable(String)) }
          attr_reader :return_status

          sig { returns(T.nilable(Integer)) }
          attr_reader :returned_at
        end

        class NoValidAuthorization < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(String)) }
          attr_reader :explanation
        end

        class NotReceived < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(Integer)) }
          attr_reader :expected_at

          sig { returns(T.nilable(String)) }
          attr_reader :explanation

          sig { returns(T.nilable(String)) }
          attr_reader :product_description

          sig { returns(T.nilable(String)) }
          attr_reader :product_type
        end

        class Other < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(String)) }
          attr_reader :explanation

          sig { returns(T.nilable(String)) }
          attr_reader :product_description

          sig { returns(T.nilable(String)) }
          attr_reader :product_type
        end

        class ServiceNotAsDescribed < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation

          sig { returns(T.nilable(Integer)) }
          attr_reader :canceled_at

          sig { returns(T.nilable(String)) }
          attr_reader :cancellation_reason

          sig { returns(T.nilable(String)) }
          attr_reader :explanation

          sig { returns(T.nilable(Integer)) }
          attr_reader :received_at
        end

        sig { returns(Canceled) }
        attr_reader :canceled

        sig { returns(Duplicate) }
        attr_reader :duplicate

        sig { returns(Fraudulent) }
        attr_reader :fraudulent

        sig { returns(MerchandiseNotAsDescribed) }
        attr_reader :merchandise_not_as_described

        sig { returns(NoValidAuthorization) }
        attr_reader :no_valid_authorization

        sig { returns(NotReceived) }
        attr_reader :not_received

        sig { returns(Other) }
        attr_reader :other

        sig { returns(String) }
        attr_reader :reason

        sig { returns(ServiceNotAsDescribed) }
        attr_reader :service_not_as_described
      end

      class Treasury < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :debit_reversal

        sig { returns(String) }
        attr_reader :received_debit
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.nilable(T::Array[Stripe::BalanceTransaction])) }
      attr_reader :balance_transactions

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(Evidence) }
      attr_reader :evidence

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :loss_reason

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(T.any(String, Stripe::Issuing::Transaction)) }
      attr_reader :transaction

      sig { returns(T.nilable(Treasury)) }
      attr_reader :treasury
    end
  end
end

module Stripe
  module Issuing
    class PersonalizationDesign < APIResource
      class CarrierText < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :footer_body

        sig { returns(T.nilable(String)) }
        attr_reader :footer_title

        sig { returns(T.nilable(String)) }
        attr_reader :header_body

        sig { returns(T.nilable(String)) }
        attr_reader :header_title
      end

      class Preferences < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :is_default

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_platform_default
      end

      class RejectionReasons < Stripe::StripeObject
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :card_logo

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :carrier_text
      end

      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :card_logo

      sig { returns(T.nilable(CarrierText)) }
      attr_reader :carrier_text

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(String)) }
      attr_reader :lookup_key

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.any(String, Stripe::Issuing::PhysicalBundle)) }
      attr_reader :physical_bundle

      sig { returns(Preferences) }
      attr_reader :preferences

      sig { returns(RejectionReasons) }
      attr_reader :rejection_reasons

      sig { returns(String) }
      attr_reader :status
    end
  end
end

module Stripe
  module Issuing
    class PhysicalBundle < APIResource
      class Features < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :card_logo

        sig { returns(String) }
        attr_reader :carrier_text

        sig { returns(String) }
        attr_reader :second_line
      end

      sig { returns(Features) }
      attr_reader :features

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :type
    end
  end
end

module Stripe
  module Issuing
    class Token < APIResource
      class NetworkData < Stripe::StripeObject
        class Device < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :device_fingerprint

          sig { returns(String) }
          attr_reader :ip_address

          sig { returns(String) }
          attr_reader :location

          sig { returns(String) }
          attr_reader :name

          sig { returns(String) }
          attr_reader :phone_number

          sig { returns(String) }
          attr_reader :type
        end

        class Mastercard < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :card_reference_id

          sig { returns(String) }
          attr_reader :token_reference_id

          sig { returns(String) }
          attr_reader :token_requestor_id

          sig { returns(String) }
          attr_reader :token_requestor_name
        end

        class Visa < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :card_reference_id

          sig { returns(String) }
          attr_reader :token_reference_id

          sig { returns(String) }
          attr_reader :token_requestor_id

          sig { returns(String) }
          attr_reader :token_risk_score
        end

        class WalletProvider < Stripe::StripeObject
          class CardholderAddress < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :line1

            sig { returns(String) }
            attr_reader :postal_code
          end

          sig { returns(String) }
          attr_reader :account_id

          sig { returns(Integer) }
          attr_reader :account_trust_score

          sig { returns(String) }
          attr_reader :card_number_source

          sig { returns(CardholderAddress) }
          attr_reader :cardholder_address

          sig { returns(String) }
          attr_reader :cardholder_name

          sig { returns(Integer) }
          attr_reader :device_trust_score

          sig { returns(String) }
          attr_reader :hashed_account_email_address

          sig { returns(T::Array[String]) }
          attr_reader :reason_codes

          sig { returns(String) }
          attr_reader :suggested_decision

          sig { returns(String) }
          attr_reader :suggested_decision_version
        end

        sig { returns(Device) }
        attr_reader :device

        sig { returns(Mastercard) }
        attr_reader :mastercard

        sig { returns(String) }
        attr_reader :type

        sig { returns(Visa) }
        attr_reader :visa

        sig { returns(WalletProvider) }
        attr_reader :wallet_provider
      end

      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      attr_reader :card

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(String)) }
      attr_reader :device_fingerprint

      sig { returns(String) }
      attr_reader :id

      sig { returns(String) }
      attr_reader :last4

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :network

      sig { returns(NetworkData) }
      attr_reader :network_data

      sig { returns(Integer) }
      attr_reader :network_updated_at

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :wallet_provider
    end
  end
end

module Stripe
  module Issuing
    class Transaction < APIResource
      class AmountDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :atm_fee

        sig { returns(T.nilable(Integer)) }
        attr_reader :cashback_amount
      end

      class MerchantData < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :category

        sig { returns(String) }
        attr_reader :category_code

        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { returns(String) }
        attr_reader :network_id

        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { returns(T.nilable(String)) }
        attr_reader :terminal_id

        sig { returns(T.nilable(String)) }
        attr_reader :url
      end

      class NetworkData < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code

        sig { returns(T.nilable(String)) }
        attr_reader :processing_date

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end

      class PurchaseDetails < Stripe::StripeObject
        class Fleet < Stripe::StripeObject
          class CardholderPromptData < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :driver_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :odometer

            sig { returns(T.nilable(String)) }
            attr_reader :unspecified_id

            sig { returns(T.nilable(String)) }
            attr_reader :user_id

            sig { returns(T.nilable(String)) }
            attr_reader :vehicle_number
          end

          class ReportedBreakdown < Stripe::StripeObject
            class Fuel < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :gross_amount_decimal
            end

            class NonFuel < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :gross_amount_decimal
            end

            class Tax < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :local_amount_decimal

              sig { returns(T.nilable(String)) }
              attr_reader :national_amount_decimal
            end

            sig { returns(T.nilable(Fuel)) }
            attr_reader :fuel

            sig { returns(T.nilable(NonFuel)) }
            attr_reader :non_fuel

            sig { returns(T.nilable(Tax)) }
            attr_reader :tax
          end

          sig { returns(T.nilable(CardholderPromptData)) }
          attr_reader :cardholder_prompt_data

          sig { returns(T.nilable(String)) }
          attr_reader :purchase_type

          sig { returns(T.nilable(ReportedBreakdown)) }
          attr_reader :reported_breakdown

          sig { returns(T.nilable(String)) }
          attr_reader :service_type
        end

        class Flight < Stripe::StripeObject
          class Segment < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :arrival_airport_code

            sig { returns(T.nilable(String)) }
            attr_reader :carrier

            sig { returns(T.nilable(String)) }
            attr_reader :departure_airport_code

            sig { returns(T.nilable(String)) }
            attr_reader :flight_number

            sig { returns(T.nilable(String)) }
            attr_reader :service_class

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :stopover_allowed
          end

          sig { returns(T.nilable(Integer)) }
          attr_reader :departure_at

          sig { returns(T.nilable(String)) }
          attr_reader :passenger_name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :refundable

          sig { returns(T.nilable(T::Array[Segment])) }
          attr_reader :segments

          sig { returns(T.nilable(String)) }
          attr_reader :travel_agency
        end

        class Fuel < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :industry_product_code

          sig { returns(T.nilable(String)) }
          attr_reader :quantity_decimal

          sig { returns(String) }
          attr_reader :type

          sig { returns(String) }
          attr_reader :unit

          sig { returns(String) }
          attr_reader :unit_cost_decimal
        end

        class Lodging < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :check_in_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :nights
        end

        class Receipt < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { returns(T.nilable(Float)) }
          attr_reader :quantity

          sig { returns(T.nilable(Integer)) }
          attr_reader :total

          sig { returns(T.nilable(Integer)) }
          attr_reader :unit_cost
        end

        sig { returns(T.nilable(Fleet)) }
        attr_reader :fleet

        sig { returns(T.nilable(Flight)) }
        attr_reader :flight

        sig { returns(T.nilable(Fuel)) }
        attr_reader :fuel

        sig { returns(T.nilable(Lodging)) }
        attr_reader :lodging

        sig { returns(T.nilable(T::Array[Receipt])) }
        attr_reader :receipt

        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end

      class Treasury < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :received_credit

        sig { returns(T.nilable(String)) }
        attr_reader :received_debit
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.nilable(AmountDetails)) }
      attr_reader :amount_details

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Authorization))) }
      attr_reader :authorization

      sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
      attr_reader :balance_transaction

      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      attr_reader :card

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      attr_reader :cardholder

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Dispute))) }
      attr_reader :dispute

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(Integer) }
      attr_reader :merchant_amount

      sig { returns(String) }
      attr_reader :merchant_currency

      sig { returns(MerchantData) }
      attr_reader :merchant_data

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(T.nilable(NetworkData)) }
      attr_reader :network_data

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(PurchaseDetails)) }
      attr_reader :purchase_details

      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      attr_reader :token

      sig { returns(T.nilable(Treasury)) }
      attr_reader :treasury

      sig { returns(String) }
      attr_reader :type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet
    end
  end
end

module Stripe
  class LineItem < APIResource
    class Discount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Stripe::Discount) }
      attr_reader :discount
    end

    class Tax < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Stripe::TaxRate) }
      attr_reader :rate

      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason

      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end

    sig { returns(Integer) }
    attr_reader :amount_discount

    sig { returns(Integer) }
    attr_reader :amount_subtotal

    sig { returns(Integer) }
    attr_reader :amount_tax

    sig { returns(Integer) }
    attr_reader :amount_total

    sig { returns(String) }
    attr_reader :currency

    sig { returns(String) }
    attr_reader :description

    sig { returns(T::Array[Discount]) }
    attr_reader :discounts

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(Stripe::Price)) }
    attr_reader :price

    sig { returns(T.nilable(Integer)) }
    attr_reader :quantity

    sig { returns(T::Array[Tax]) }
    attr_reader :taxes
  end
end

module Stripe
  class LoginLink < APIResource
    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :url
  end
end

module Stripe
  class Mandate < APIResource
    class CustomerAcceptance < Stripe::StripeObject
      class Offline < Stripe::StripeObject
      end

      class Online < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { returns(T.nilable(String)) }
        attr_reader :user_agent
      end

      sig { returns(T.nilable(Integer)) }
      attr_reader :accepted_at

      sig { returns(Offline) }
      attr_reader :offline

      sig { returns(Online) }
      attr_reader :online

      sig { returns(String) }
      attr_reader :type
    end

    class MultiUse < Stripe::StripeObject
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :default_for

        sig { returns(T.nilable(String)) }
        attr_reader :interval_description

        sig { returns(String) }
        attr_reader :payment_schedule

        sig { returns(String) }
        attr_reader :transaction_type
      end

      class AmazonPay < Stripe::StripeObject
      end

      class AuBecsDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :url
      end

      class BacsDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :network_status

        sig { returns(String) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :revocation_reason

        sig { returns(String) }
        attr_reader :url
      end

      class Card < Stripe::StripeObject
      end

      class Cashapp < Stripe::StripeObject
      end

      class KakaoPay < Stripe::StripeObject
      end

      class KrCard < Stripe::StripeObject
      end

      class Link < Stripe::StripeObject
      end

      class Paypal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :billing_agreement_id

        sig { returns(T.nilable(String)) }
        attr_reader :payer_id
      end

      class RevolutPay < Stripe::StripeObject
      end

      class SepaDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reference

        sig { returns(String) }
        attr_reader :url
      end

      class UsBankAccount < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :collection_method
      end

      sig { returns(AcssDebit) }
      attr_reader :acss_debit

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit

      sig { returns(BacsDebit) }
      attr_reader :bacs_debit

      sig { returns(Card) }
      attr_reader :card

      sig { returns(Cashapp) }
      attr_reader :cashapp

      sig { returns(KakaoPay) }
      attr_reader :kakao_pay

      sig { returns(KrCard) }
      attr_reader :kr_card

      sig { returns(Link) }
      attr_reader :link

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(RevolutPay) }
      attr_reader :revolut_pay

      sig { returns(SepaDebit) }
      attr_reader :sepa_debit

      sig { returns(String) }
      attr_reader :type

      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
    end

    class SingleUse < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency
    end

    sig { returns(CustomerAcceptance) }
    attr_reader :customer_acceptance

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(MultiUse) }
    attr_reader :multi_use

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :on_behalf_of

    sig { returns(T.any(String, Stripe::PaymentMethod)) }
    attr_reader :payment_method

    sig { returns(PaymentMethodDetails) }
    attr_reader :payment_method_details

    sig { returns(SingleUse) }
    attr_reader :single_use

    sig { returns(String) }
    attr_reader :status

    sig { returns(String) }
    attr_reader :type
  end
end

module Stripe
  class PaymentIntent < APIResource
    class AmountDetails < Stripe::StripeObject
      class Tip < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount
      end

      sig { returns(Tip) }
      attr_reader :tip
    end

    class AutomaticPaymentMethods < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :allow_redirects

      sig { returns(T::Boolean) }
      attr_reader :enabled
    end

    class LastPaymentError < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge

      sig { returns(String) }
      attr_reader :code

      sig { returns(String) }
      attr_reader :decline_code

      sig { returns(String) }
      attr_reader :doc_url

      sig { returns(String) }
      attr_reader :message

      sig { returns(String) }
      attr_reader :param

      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent

      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method

      sig { returns(String) }
      attr_reader :payment_method_type

      sig { returns(String) }
      attr_reader :request_log_url

      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent

      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source

      sig { returns(String) }
      attr_reader :type
    end

    class NextAction < Stripe::StripeObject
      class AlipayHandleRedirect < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :native_data

        sig { returns(T.nilable(String)) }
        attr_reader :native_url

        sig { returns(T.nilable(String)) }
        attr_reader :return_url

        sig { returns(T.nilable(String)) }
        attr_reader :url
      end

      class BoletoDisplayDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at

        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url

        sig { returns(T.nilable(String)) }
        attr_reader :number

        sig { returns(T.nilable(String)) }
        attr_reader :pdf
      end

      class CardAwaitNotification < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :charge_attempt_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :customer_approval_required
      end

      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :expires_at

          sig { returns(String) }
          attr_reader :image_url_png

          sig { returns(String) }
          attr_reader :image_url_svg
        end

        sig { returns(String) }
        attr_reader :hosted_instructions_url

        sig { returns(String) }
        attr_reader :mobile_auth_url

        sig { returns(QrCode) }
        attr_reader :qr_code
      end

      class DisplayBankTransferInstructions < Stripe::StripeObject
        class FinancialAddress < Stripe::StripeObject
          class Aba < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :account_number

            sig { returns(String) }
            attr_reader :bank_name

            sig { returns(String) }
            attr_reader :routing_number
          end

          class Iban < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :account_holder_name

            sig { returns(String) }
            attr_reader :bic

            sig { returns(String) }
            attr_reader :country

            sig { returns(String) }
            attr_reader :iban
          end

          class SortCode < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :account_holder_name

            sig { returns(String) }
            attr_reader :account_number

            sig { returns(String) }
            attr_reader :sort_code
          end

          class Spei < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :bank_code

            sig { returns(String) }
            attr_reader :bank_name

            sig { returns(String) }
            attr_reader :clabe
          end

          class Swift < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :account_number

            sig { returns(String) }
            attr_reader :bank_name

            sig { returns(String) }
            attr_reader :swift_code
          end

          class Zengin < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :account_holder_name

            sig { returns(T.nilable(String)) }
            attr_reader :account_number

            sig { returns(T.nilable(String)) }
            attr_reader :account_type

            sig { returns(T.nilable(String)) }
            attr_reader :bank_code

            sig { returns(T.nilable(String)) }
            attr_reader :bank_name

            sig { returns(T.nilable(String)) }
            attr_reader :branch_code

            sig { returns(T.nilable(String)) }
            attr_reader :branch_name
          end

          sig { returns(Aba) }
          attr_reader :aba

          sig { returns(Iban) }
          attr_reader :iban

          sig { returns(SortCode) }
          attr_reader :sort_code

          sig { returns(Spei) }
          attr_reader :spei

          sig { returns(T::Array[String]) }
          attr_reader :supported_networks

          sig { returns(Swift) }
          attr_reader :swift

          sig { returns(String) }
          attr_reader :type

          sig { returns(Zengin) }
          attr_reader :zengin
        end

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_remaining

        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { returns(T::Array[FinancialAddress]) }
        attr_reader :financial_addresses

        sig { returns(T.nilable(String)) }
        attr_reader :hosted_instructions_url

        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(String) }
        attr_reader :type
      end

      class KonbiniDisplayDetails < Stripe::StripeObject
        class Stores < Stripe::StripeObject
          class Familymart < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number

            sig { returns(String) }
            attr_reader :payment_code
          end

          class Lawson < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number

            sig { returns(String) }
            attr_reader :payment_code
          end

          class Ministop < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number

            sig { returns(String) }
            attr_reader :payment_code
          end

          class Seicomart < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number

            sig { returns(String) }
            attr_reader :payment_code
          end

          sig { returns(T.nilable(Familymart)) }
          attr_reader :familymart

          sig { returns(T.nilable(Lawson)) }
          attr_reader :lawson

          sig { returns(T.nilable(Ministop)) }
          attr_reader :ministop

          sig { returns(T.nilable(Seicomart)) }
          attr_reader :seicomart
        end

        sig { returns(Integer) }
        attr_reader :expires_at

        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url

        sig { returns(Stores) }
        attr_reader :stores
      end

      class MultibancoDisplayDetails < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :entity

        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at

        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url

        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end

      class OxxoDisplayDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after

        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url

        sig { returns(T.nilable(String)) }
        attr_reader :number
      end

      class PaynowDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data

        sig { returns(T.nilable(String)) }
        attr_reader :hosted_instructions_url

        sig { returns(String) }
        attr_reader :image_url_png

        sig { returns(String) }
        attr_reader :image_url_svg
      end

      class PixDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data

        sig { returns(Integer) }
        attr_reader :expires_at

        sig { returns(String) }
        attr_reader :hosted_instructions_url

        sig { returns(String) }
        attr_reader :image_url_png

        sig { returns(String) }
        attr_reader :image_url_svg
      end

      class PromptpayDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data

        sig { returns(String) }
        attr_reader :hosted_instructions_url

        sig { returns(String) }
        attr_reader :image_url_png

        sig { returns(String) }
        attr_reader :image_url_svg
      end

      class RedirectToUrl < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :return_url

        sig { returns(T.nilable(String)) }
        attr_reader :url
      end

      class SwishHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :data

          sig { returns(String) }
          attr_reader :image_url_png

          sig { returns(String) }
          attr_reader :image_url_svg
        end

        sig { returns(String) }
        attr_reader :hosted_instructions_url

        sig { returns(String) }
        attr_reader :mobile_auth_url

        sig { returns(QrCode) }
        attr_reader :qr_code
      end

      class VerifyWithMicrodeposits < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :arrival_date

        sig { returns(String) }
        attr_reader :hosted_verification_url

        sig { returns(T.nilable(String)) }
        attr_reader :microdeposit_type
      end

      class WechatPayDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data

        sig { returns(String) }
        attr_reader :hosted_instructions_url

        sig { returns(String) }
        attr_reader :image_data_url

        sig { returns(String) }
        attr_reader :image_url_png

        sig { returns(String) }
        attr_reader :image_url_svg
      end

      class WechatPayRedirectToAndroidApp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :app_id

        sig { returns(String) }
        attr_reader :nonce_str

        sig { returns(String) }
        attr_reader :package

        sig { returns(String) }
        attr_reader :partner_id

        sig { returns(String) }
        attr_reader :prepay_id

        sig { returns(String) }
        attr_reader :sign

        sig { returns(String) }
        attr_reader :timestamp
      end

      class WechatPayRedirectToIosApp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :native_url
      end

      sig { returns(AlipayHandleRedirect) }
      attr_reader :alipay_handle_redirect

      sig { returns(BoletoDisplayDetails) }
      attr_reader :boleto_display_details

      sig { returns(CardAwaitNotification) }
      attr_reader :card_await_notification

      sig { returns(CashappHandleRedirectOrDisplayQrCode) }
      attr_reader :cashapp_handle_redirect_or_display_qr_code

      sig { returns(DisplayBankTransferInstructions) }
      attr_reader :display_bank_transfer_instructions

      sig { returns(KonbiniDisplayDetails) }
      attr_reader :konbini_display_details

      sig { returns(MultibancoDisplayDetails) }
      attr_reader :multibanco_display_details

      sig { returns(OxxoDisplayDetails) }
      attr_reader :oxxo_display_details

      sig { returns(PaynowDisplayQrCode) }
      attr_reader :paynow_display_qr_code

      sig { returns(PixDisplayQrCode) }
      attr_reader :pix_display_qr_code

      sig { returns(PromptpayDisplayQrCode) }
      attr_reader :promptpay_display_qr_code

      sig { returns(RedirectToUrl) }
      attr_reader :redirect_to_url

      sig { returns(SwishHandleRedirectOrDisplayQrCode) }
      attr_reader :swish_handle_redirect_or_display_qr_code

      sig { returns(String) }
      attr_reader :type

      sig { returns(T::Hash[String, T.any()]) }
      attr_reader :use_stripe_sdk

      sig { returns(VerifyWithMicrodeposits) }
      attr_reader :verify_with_microdeposits

      sig { returns(WechatPayDisplayQrCode) }
      attr_reader :wechat_pay_display_qr_code

      sig { returns(WechatPayRedirectToAndroidApp) }
      attr_reader :wechat_pay_redirect_to_android_app

      sig { returns(WechatPayRedirectToIosApp) }
      attr_reader :wechat_pay_redirect_to_ios_app
    end

    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(String)) }
      attr_reader :parent
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :custom_mandate_url

          sig { returns(T.nilable(String)) }
          attr_reader :interval_description

          sig { returns(T.nilable(String)) }
          attr_reader :payment_schedule

          sig { returns(T.nilable(String)) }
          attr_reader :transaction_type
        end

        sig { returns(MandateOptions) }
        attr_reader :mandate_options

        sig { returns(String) }
        attr_reader :setup_future_usage

        sig { returns(String) }
        attr_reader :verification_method
      end

      class Affirm < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(String) }
        attr_reader :preferred_locale

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class AfterpayClearpay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Alipay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Alma < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end

      class AmazonPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class AuBecsDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
        end

        sig { returns(MandateOptions) }
        attr_reader :mandate_options

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Bancontact < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :preferred_language

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Blik < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Boleto < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :expires_after_days

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Card < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          class AvailablePlan < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :count

            sig { returns(T.nilable(String)) }
            attr_reader :interval

            sig { returns(String) }
            attr_reader :type
          end

          class Plan < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :count

            sig { returns(T.nilable(String)) }
            attr_reader :interval

            sig { returns(String) }
            attr_reader :type
          end

          sig { returns(T.nilable(T::Array[AvailablePlan])) }
          attr_reader :available_plans

          sig { returns(T::Boolean) }
          attr_reader :enabled

          sig { returns(T.nilable(Plan)) }
          attr_reader :plan
        end

        class MandateOptions < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(String) }
          attr_reader :amount_type

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { returns(T.nilable(Integer)) }
          attr_reader :end_date

          sig { returns(String) }
          attr_reader :interval

          sig { returns(T.nilable(Integer)) }
          attr_reader :interval_count

          sig { returns(String) }
          attr_reader :reference

          sig { returns(Integer) }
          attr_reader :start_date

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :supported_types
        end

        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(T.nilable(Installments)) }
        attr_reader :installments

        sig { returns(T.nilable(MandateOptions)) }
        attr_reader :mandate_options

        sig { returns(T.nilable(String)) }
        attr_reader :network

        sig { returns(String) }
        attr_reader :request_extended_authorization

        sig { returns(String) }
        attr_reader :request_incremental_authorization

        sig { returns(String) }
        attr_reader :request_multicapture

        sig { returns(String) }
        attr_reader :request_overcapture

        sig { returns(T.nilable(String)) }
        attr_reader :request_three_d_secure

        sig { returns(T::Boolean) }
        attr_reader :require_cvc_recollection

        sig { returns(String) }
        attr_reader :setup_future_usage

        sig { returns(String) }
        attr_reader :statement_descriptor_suffix_kana

        sig { returns(String) }
        attr_reader :statement_descriptor_suffix_kanji
      end

      class CardPresent < Stripe::StripeObject
        class Routing < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :requested_priority
        end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :request_extended_authorization

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :request_incremental_authorization_support

        sig { returns(Routing) }
        attr_reader :routing
      end

      class Cashapp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class CustomerBalance < Stripe::StripeObject
        class BankTransfer < Stripe::StripeObject
          class EuBankTransfer < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :country
          end

          sig { returns(EuBankTransfer) }
          attr_reader :eu_bank_transfer

          sig { returns(T::Array[String]) }
          attr_reader :requested_address_types

          sig { returns(T.nilable(String)) }
          attr_reader :type
        end

        sig { returns(BankTransfer) }
        attr_reader :bank_transfer

        sig { returns(T.nilable(String)) }
        attr_reader :funding_type

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Eps < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Fpx < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Giropay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Grabpay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Ideal < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class InteracPresent < Stripe::StripeObject
      end

      class KakaoPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Klarna < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Konbini < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :confirmation_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after_days

        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at

        sig { returns(T.nilable(String)) }
        attr_reader :product_description

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class KrCard < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Link < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(T.nilable(String)) }
        attr_reader :persistent_token

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Mobilepay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Multibanco < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class NaverPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end

      class Oxxo < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :expires_after_days

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class P24 < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Payco < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end

      class Paynow < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Paypal < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale

        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Pix < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after_seconds

        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Promptpay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class RevolutPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class SamsungPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end

      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
        end

        sig { returns(MandateOptions) }
        attr_reader :mandate_options

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Sofort < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Swish < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Twint < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            sig { returns(T::Array[String]) }
            attr_reader :account_subcategories
          end

          sig { returns(Filters) }
          attr_reader :filters

          sig { returns(T::Array[String]) }
          attr_reader :permissions

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :prefetch

          sig { returns(String) }
          attr_reader :return_url
        end

        class MandateOptions < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :collection_method
        end

        sig { returns(FinancialConnections) }
        attr_reader :financial_connections

        sig { returns(MandateOptions) }
        attr_reader :mandate_options

        sig { returns(String) }
        attr_reader :preferred_settlement_speed

        sig { returns(String) }
        attr_reader :setup_future_usage

        sig { returns(String) }
        attr_reader :verification_method
      end

      class WechatPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :app_id

        sig { returns(T.nilable(String)) }
        attr_reader :client

        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      class Zip < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end

      sig { returns(AcssDebit) }
      attr_reader :acss_debit

      sig { returns(Affirm) }
      attr_reader :affirm

      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay

      sig { returns(Alipay) }
      attr_reader :alipay

      sig { returns(Alma) }
      attr_reader :alma

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit

      sig { returns(BacsDebit) }
      attr_reader :bacs_debit

      sig { returns(Bancontact) }
      attr_reader :bancontact

      sig { returns(Blik) }
      attr_reader :blik

      sig { returns(Boleto) }
      attr_reader :boleto

      sig { returns(Card) }
      attr_reader :card

      sig { returns(CardPresent) }
      attr_reader :card_present

      sig { returns(Cashapp) }
      attr_reader :cashapp

      sig { returns(CustomerBalance) }
      attr_reader :customer_balance

      sig { returns(Eps) }
      attr_reader :eps

      sig { returns(Fpx) }
      attr_reader :fpx

      sig { returns(Giropay) }
      attr_reader :giropay

      sig { returns(Grabpay) }
      attr_reader :grabpay

      sig { returns(Ideal) }
      attr_reader :ideal

      sig { returns(InteracPresent) }
      attr_reader :interac_present

      sig { returns(KakaoPay) }
      attr_reader :kakao_pay

      sig { returns(Klarna) }
      attr_reader :klarna

      sig { returns(Konbini) }
      attr_reader :konbini

      sig { returns(KrCard) }
      attr_reader :kr_card

      sig { returns(Link) }
      attr_reader :link

      sig { returns(Mobilepay) }
      attr_reader :mobilepay

      sig { returns(Multibanco) }
      attr_reader :multibanco

      sig { returns(NaverPay) }
      attr_reader :naver_pay

      sig { returns(Oxxo) }
      attr_reader :oxxo

      sig { returns(P24) }
      attr_reader :p24

      sig { returns(Payco) }
      attr_reader :payco

      sig { returns(Paynow) }
      attr_reader :paynow

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(Pix) }
      attr_reader :pix

      sig { returns(Promptpay) }
      attr_reader :promptpay

      sig { returns(RevolutPay) }
      attr_reader :revolut_pay

      sig { returns(SamsungPay) }
      attr_reader :samsung_pay

      sig { returns(SepaDebit) }
      attr_reader :sepa_debit

      sig { returns(Sofort) }
      attr_reader :sofort

      sig { returns(Swish) }
      attr_reader :swish

      sig { returns(Twint) }
      attr_reader :twint

      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account

      sig { returns(WechatPay) }
      attr_reader :wechat_pay

      sig { returns(Zip) }
      attr_reader :zip
    end

    class Processing < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class CustomerNotification < Stripe::StripeObject
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :approval_requested

          sig { returns(T.nilable(Integer)) }
          attr_reader :completes_at
        end

        sig { returns(CustomerNotification) }
        attr_reader :customer_notification
      end

      sig { returns(Card) }
      attr_reader :card

      sig { returns(String) }
      attr_reader :type
    end

    class Shipping < Stripe::StripeObject
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

      sig { returns(Address) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :carrier

      sig { returns(String) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end

    class TransferData < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(Integer) }
    attr_reader :amount_capturable

    sig { returns(AmountDetails) }
    attr_reader :amount_details

    sig { returns(Integer) }
    attr_reader :amount_received

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    attr_reader :automatic_payment_methods

    sig { returns(T.nilable(Integer)) }
    attr_reader :canceled_at

    sig { returns(T.nilable(String)) }
    attr_reader :cancellation_reason

    sig { returns(String) }
    attr_reader :capture_method

    sig { returns(T.nilable(String)) }
    attr_reader :client_secret

    sig { returns(String) }
    attr_reader :confirmation_method

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice

    sig { returns(T.nilable(LastPaymentError)) }
    attr_reader :last_payment_error

    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :latest_charge

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(T.nilable(NextAction)) }
    attr_reader :next_action

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    attr_reader :payment_method

    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    attr_reader :payment_method_configuration_details

    sig { returns(T.nilable(PaymentMethodOptions)) }
    attr_reader :payment_method_options

    sig { returns(T::Array[String]) }
    attr_reader :payment_method_types

    sig { returns(T.nilable(Processing)) }
    attr_reader :processing

    sig { returns(T.nilable(String)) }
    attr_reader :receipt_email

    sig { returns(T.nilable(T.any(String, Stripe::Review))) }
    attr_reader :review

    sig { returns(T.nilable(String)) }
    attr_reader :setup_future_usage

    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping

    sig { returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)))) }
    attr_reader :source

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor_suffix

    sig { returns(String) }
    attr_reader :status

    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data

    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
  end
end

module Stripe
  class PaymentLink < APIResource
    class AfterCompletion < Stripe::StripeObject
      class HostedConfirmation < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :custom_message
      end

      class Redirect < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :url
      end

      sig { returns(HostedConfirmation) }
      attr_reader :hosted_confirmation

      sig { returns(Redirect) }
      attr_reader :redirect

      sig { returns(String) }
      attr_reader :type
    end

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T::Boolean) }
      attr_reader :enabled

      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
    end

    class ConsentCollection < Stripe::StripeObject
      class PaymentMethodReuseAgreement < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :position
      end

      sig { returns(T.nilable(PaymentMethodReuseAgreement)) }
      attr_reader :payment_method_reuse_agreement

      sig { returns(T.nilable(String)) }
      attr_reader :promotions

      sig { returns(T.nilable(String)) }
      attr_reader :terms_of_service
    end

    class CustomField < Stripe::StripeObject
      class Dropdown < Stripe::StripeObject
        class Option < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :label

          sig { returns(String) }
          attr_reader :value
        end

        sig { returns(T::Array[Option]) }
        attr_reader :options
      end

      class Label < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :custom

        sig { returns(String) }
        attr_reader :type
      end

      class Numeric < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_length

        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_length
      end

      class Text < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_length

        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_length
      end

      sig { returns(Dropdown) }
      attr_reader :dropdown

      sig { returns(String) }
      attr_reader :key

      sig { returns(Label) }
      attr_reader :label

      sig { returns(Numeric) }
      attr_reader :numeric

      sig { returns(T::Boolean) }
      attr_reader :optional

      sig { returns(Text) }
      attr_reader :text

      sig { returns(String) }
      attr_reader :type
    end

    class CustomText < Stripe::StripeObject
      class AfterSubmit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end

      class ShippingAddress < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end

      class Submit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end

      class TermsOfServiceAcceptance < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end

      sig { returns(T.nilable(AfterSubmit)) }
      attr_reader :after_submit

      sig { returns(T.nilable(ShippingAddress)) }
      attr_reader :shipping_address

      sig { returns(T.nilable(Submit)) }
      attr_reader :submit

      sig { returns(T.nilable(TermsOfServiceAcceptance)) }
      attr_reader :terms_of_service_acceptance
    end

    class InvoiceCreation < Stripe::StripeObject
      class InvoiceData < Stripe::StripeObject
        class CustomField < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name

          sig { returns(String) }
          attr_reader :value
        end

        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account

          sig { returns(String) }
          attr_reader :type
        end

        class RenderingOptions < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :amount_tax_display
        end

        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :account_tax_ids

        sig { returns(T.nilable(T::Array[CustomField])) }
        attr_reader :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(T.nilable(String)) }
        attr_reader :footer

        sig { returns(T.nilable(Issuer)) }
        attr_reader :issuer

        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata

        sig { returns(T.nilable(RenderingOptions)) }
        attr_reader :rendering_options
      end

      sig { returns(T::Boolean) }
      attr_reader :enabled

      sig { returns(T.nilable(InvoiceData)) }
      attr_reader :invoice_data
    end

    class PaymentIntentData < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :capture_method

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :setup_future_usage

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor_suffix

      sig { returns(T.nilable(String)) }
      attr_reader :transfer_group
    end

    class PhoneNumberCollection < Stripe::StripeObject
      sig { returns(T::Boolean) }
      attr_reader :enabled
    end

    class Restrictions < Stripe::StripeObject
      class CompletedSessions < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :count

        sig { returns(Integer) }
        attr_reader :limit
      end

      sig { returns(CompletedSessions) }
      attr_reader :completed_sessions
    end

    class ShippingAddressCollection < Stripe::StripeObject
      sig { returns(T::Array[String]) }
      attr_reader :allowed_countries
    end

    class ShippingOption < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :shipping_amount

      sig { returns(T.any(String, Stripe::ShippingRate)) }
      attr_reader :shipping_rate
    end

    class SubscriptionData < Stripe::StripeObject
      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(Issuer) }
        attr_reader :issuer
      end

      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :missing_payment_method
        end

        sig { returns(EndBehavior) }
        attr_reader :end_behavior
      end

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(InvoiceSettings) }
      attr_reader :invoice_settings

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days

      sig { returns(T.nilable(TrialSettings)) }
      attr_reader :trial_settings
    end

    class TaxIdCollection < Stripe::StripeObject
      sig { returns(T::Boolean) }
      attr_reader :enabled

      sig { returns(String) }
      attr_reader :required
    end

    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(AfterCompletion) }
    attr_reader :after_completion

    sig { returns(T::Boolean) }
    attr_reader :allow_promotion_codes

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    sig { returns(T.nilable(Float)) }
    attr_reader :application_fee_percent

    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax

    sig { returns(String) }
    attr_reader :billing_address_collection

    sig { returns(T.nilable(ConsentCollection)) }
    attr_reader :consent_collection

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T::Array[CustomField]) }
    attr_reader :custom_fields

    sig { returns(CustomText) }
    attr_reader :custom_text

    sig { returns(String) }
    attr_reader :customer_creation

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(String)) }
    attr_reader :inactive_message

    sig { returns(T.nilable(InvoiceCreation)) }
    attr_reader :invoice_creation

    sig { returns(Stripe::ListObject) }
    attr_reader :line_items

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(T.nilable(PaymentIntentData)) }
    attr_reader :payment_intent_data

    sig { returns(String) }
    attr_reader :payment_method_collection

    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :payment_method_types

    sig { returns(PhoneNumberCollection) }
    attr_reader :phone_number_collection

    sig { returns(T.nilable(Restrictions)) }
    attr_reader :restrictions

    sig { returns(T.nilable(ShippingAddressCollection)) }
    attr_reader :shipping_address_collection

    sig { returns(T::Array[ShippingOption]) }
    attr_reader :shipping_options

    sig { returns(String) }
    attr_reader :submit_type

    sig { returns(T.nilable(SubscriptionData)) }
    attr_reader :subscription_data

    sig { returns(TaxIdCollection) }
    attr_reader :tax_id_collection

    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data

    sig { returns(String) }
    attr_reader :url
  end
end

module Stripe
  class PaymentMethod < APIResource
    class AcssDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :institution_number

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :transit_number
    end

    class Affirm < Stripe::StripeObject
    end

    class AfterpayClearpay < Stripe::StripeObject
    end

    class Alipay < Stripe::StripeObject
    end

    class Alma < Stripe::StripeObject
    end

    class AmazonPay < Stripe::StripeObject
    end

    class AuBecsDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bsb_number

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end

    class BacsDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :sort_code
    end

    class Bancontact < Stripe::StripeObject
    end

    class BillingDetails < Stripe::StripeObject
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

      sig { returns(T.nilable(Address)) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end

    class Blik < Stripe::StripeObject
    end

    class Boleto < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :tax_id
    end

    class Card < Stripe::StripeObject
      class Checks < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :address_line1_check

        sig { returns(T.nilable(String)) }
        attr_reader :address_postal_code_check

        sig { returns(T.nilable(String)) }
        attr_reader :cvc_check
      end

      class GeneratedFrom < Stripe::StripeObject
        class PaymentMethodDetails < Stripe::StripeObject
          class CardPresent < Stripe::StripeObject
            class Offline < Stripe::StripeObject
              sig { returns(T.nilable(Integer)) }
              attr_reader :stored_at

              sig { returns(T.nilable(String)) }
              attr_reader :type
            end

            class Receipt < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :account_type

              sig { returns(T.nilable(String)) }
              attr_reader :application_cryptogram

              sig { returns(T.nilable(String)) }
              attr_reader :application_preferred_name

              sig { returns(T.nilable(String)) }
              attr_reader :authorization_code

              sig { returns(T.nilable(String)) }
              attr_reader :authorization_response_code

              sig { returns(T.nilable(String)) }
              attr_reader :cardholder_verification_method

              sig { returns(T.nilable(String)) }
              attr_reader :dedicated_file_name

              sig { returns(T.nilable(String)) }
              attr_reader :terminal_verification_results

              sig { returns(T.nilable(String)) }
              attr_reader :transaction_status_information
            end

            class Wallet < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :type
            end

            sig { returns(T.nilable(Integer)) }
            attr_reader :amount_authorized

            sig { returns(T.nilable(String)) }
            attr_reader :brand

            sig { returns(T.nilable(String)) }
            attr_reader :brand_product

            sig { returns(Integer) }
            attr_reader :capture_before

            sig { returns(T.nilable(String)) }
            attr_reader :cardholder_name

            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { returns(T.nilable(String)) }
            attr_reader :emv_auth_data

            sig { returns(Integer) }
            attr_reader :exp_month

            sig { returns(Integer) }
            attr_reader :exp_year

            sig { returns(T.nilable(String)) }
            attr_reader :fingerprint

            sig { returns(T.nilable(String)) }
            attr_reader :funding

            sig { returns(T.nilable(String)) }
            attr_reader :generated_card

            sig { returns(T.nilable(String)) }
            attr_reader :iin

            sig { returns(T::Boolean) }
            attr_reader :incremental_authorization_supported

            sig { returns(T.nilable(String)) }
            attr_reader :issuer

            sig { returns(T.nilable(String)) }
            attr_reader :last4

            sig { returns(T.nilable(String)) }
            attr_reader :network

            sig { returns(T.nilable(String)) }
            attr_reader :network_transaction_id

            sig { returns(T.nilable(Offline)) }
            attr_reader :offline

            sig { returns(T::Boolean) }
            attr_reader :overcapture_supported

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :preferred_locales

            sig { returns(T.nilable(String)) }
            attr_reader :read_method

            sig { returns(T.nilable(Receipt)) }
            attr_reader :receipt

            sig { returns(Wallet) }
            attr_reader :wallet
          end

          sig { returns(CardPresent) }
          attr_reader :card_present

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(String)) }
        attr_reader :charge

        sig { returns(T.nilable(PaymentMethodDetails)) }
        attr_reader :payment_method_details

        sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
        attr_reader :setup_attempt
      end

      class Networks < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :available

        sig { returns(T.nilable(String)) }
        attr_reader :preferred
      end

      class ThreeDSecureUsage < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :supported
      end

      class Wallet < Stripe::StripeObject
        class AmexExpressCheckout < Stripe::StripeObject
        end

        class ApplePay < Stripe::StripeObject
        end

        class GooglePay < Stripe::StripeObject
        end

        class Link < Stripe::StripeObject
        end

        class Masterpass < Stripe::StripeObject
          class BillingAddress < Stripe::StripeObject
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

          class ShippingAddress < Stripe::StripeObject
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

          sig { returns(T.nilable(BillingAddress)) }
          attr_reader :billing_address

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { returns(T.nilable(ShippingAddress)) }
          attr_reader :shipping_address
        end

        class SamsungPay < Stripe::StripeObject
        end

        class VisaCheckout < Stripe::StripeObject
          class BillingAddress < Stripe::StripeObject
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

          class ShippingAddress < Stripe::StripeObject
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

          sig { returns(T.nilable(BillingAddress)) }
          attr_reader :billing_address

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { returns(T.nilable(ShippingAddress)) }
          attr_reader :shipping_address
        end

        sig { returns(AmexExpressCheckout) }
        attr_reader :amex_express_checkout

        sig { returns(ApplePay) }
        attr_reader :apple_pay

        sig { returns(T.nilable(String)) }
        attr_reader :dynamic_last4

        sig { returns(GooglePay) }
        attr_reader :google_pay

        sig { returns(Link) }
        attr_reader :link

        sig { returns(Masterpass) }
        attr_reader :masterpass

        sig { returns(SamsungPay) }
        attr_reader :samsung_pay

        sig { returns(String) }
        attr_reader :type

        sig { returns(VisaCheckout) }
        attr_reader :visa_checkout
      end

      sig { returns(String) }
      attr_reader :brand

      sig { returns(T.nilable(Checks)) }
      attr_reader :checks

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(T.nilable(String)) }
      attr_reader :display_brand

      sig { returns(Integer) }
      attr_reader :exp_month

      sig { returns(Integer) }
      attr_reader :exp_year

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(String) }
      attr_reader :funding

      sig { returns(T.nilable(GeneratedFrom)) }
      attr_reader :generated_from

      sig { returns(T.nilable(String)) }
      attr_reader :iin

      sig { returns(T.nilable(String)) }
      attr_reader :issuer

      sig { returns(String) }
      attr_reader :last4

      sig { returns(T.nilable(Networks)) }
      attr_reader :networks

      sig { returns(T.nilable(ThreeDSecureUsage)) }
      attr_reader :three_d_secure_usage

      sig { returns(T.nilable(Wallet)) }
      attr_reader :wallet
    end

    class CardPresent < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :available

        sig { returns(T.nilable(String)) }
        attr_reader :preferred
      end

      class Offline < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :stored_at

        sig { returns(T.nilable(String)) }
        attr_reader :type
      end

      class Wallet < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T.nilable(String)) }
      attr_reader :brand

      sig { returns(T.nilable(String)) }
      attr_reader :brand_product

      sig { returns(T.nilable(String)) }
      attr_reader :cardholder_name

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(Integer) }
      attr_reader :exp_month

      sig { returns(Integer) }
      attr_reader :exp_year

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :funding

      sig { returns(T.nilable(String)) }
      attr_reader :iin

      sig { returns(T.nilable(String)) }
      attr_reader :issuer

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(Networks)) }
      attr_reader :networks

      sig { returns(T.nilable(Offline)) }
      attr_reader :offline

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :preferred_locales

      sig { returns(T.nilable(String)) }
      attr_reader :read_method

      sig { returns(Wallet) }
      attr_reader :wallet
    end

    class Cashapp < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :buyer_id

      sig { returns(T.nilable(String)) }
      attr_reader :cashtag
    end

    class CustomerBalance < Stripe::StripeObject
    end

    class Eps < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank
    end

    class Fpx < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_type

      sig { returns(String) }
      attr_reader :bank
    end

    class Giropay < Stripe::StripeObject
    end

    class Grabpay < Stripe::StripeObject
    end

    class Ideal < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank

      sig { returns(T.nilable(String)) }
      attr_reader :bic
    end

    class InteracPresent < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :available

        sig { returns(T.nilable(String)) }
        attr_reader :preferred
      end

      sig { returns(T.nilable(String)) }
      attr_reader :brand

      sig { returns(T.nilable(String)) }
      attr_reader :cardholder_name

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(Integer) }
      attr_reader :exp_month

      sig { returns(Integer) }
      attr_reader :exp_year

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :funding

      sig { returns(T.nilable(String)) }
      attr_reader :iin

      sig { returns(T.nilable(String)) }
      attr_reader :issuer

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(Networks)) }
      attr_reader :networks

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :preferred_locales

      sig { returns(T.nilable(String)) }
      attr_reader :read_method
    end

    class KakaoPay < Stripe::StripeObject
    end

    class Klarna < Stripe::StripeObject
      class Dob < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :day

        sig { returns(T.nilable(Integer)) }
        attr_reader :month

        sig { returns(T.nilable(Integer)) }
        attr_reader :year
      end

      sig { returns(T.nilable(Dob)) }
      attr_reader :dob
    end

    class Konbini < Stripe::StripeObject
    end

    class KrCard < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :brand

      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end

    class Link < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { returns(String) }
      attr_reader :persistent_token
    end

    class Mobilepay < Stripe::StripeObject
    end

    class Multibanco < Stripe::StripeObject
    end

    class NaverPay < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :funding
    end

    class Oxxo < Stripe::StripeObject
    end

    class P24 < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank
    end

    class Payco < Stripe::StripeObject
    end

    class Paynow < Stripe::StripeObject
    end

    class Paypal < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :payer_email

      sig { returns(T.nilable(String)) }
      attr_reader :payer_id
    end

    class Pix < Stripe::StripeObject
    end

    class Promptpay < Stripe::StripeObject
    end

    class RadarOptions < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :session
    end

    class RevolutPay < Stripe::StripeObject
    end

    class SamsungPay < Stripe::StripeObject
    end

    class SepaDebit < Stripe::StripeObject
      class GeneratedFrom < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
        attr_reader :charge

        sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
        attr_reader :setup_attempt
      end

      sig { returns(T.nilable(String)) }
      attr_reader :bank_code

      sig { returns(T.nilable(String)) }
      attr_reader :branch_code

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(GeneratedFrom)) }
      attr_reader :generated_from

      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end

    class Sofort < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :country
    end

    class Swish < Stripe::StripeObject
    end

    class Twint < Stripe::StripeObject
    end

    class UsBankAccount < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :preferred

        sig { returns(T::Array[String]) }
        attr_reader :supported
      end

      class StatusDetails < Stripe::StripeObject
        class Blocked < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :network_code

          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end

        sig { returns(Blocked) }
        attr_reader :blocked
      end

      sig { returns(T.nilable(String)) }
      attr_reader :account_holder_type

      sig { returns(T.nilable(String)) }
      attr_reader :account_type

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :financial_connections_account

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(Networks)) }
      attr_reader :networks

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { returns(T.nilable(StatusDetails)) }
      attr_reader :status_details
    end

    class WechatPay < Stripe::StripeObject
    end

    class Zip < Stripe::StripeObject
    end

    sig { returns(AcssDebit) }
    attr_reader :acss_debit

    sig { returns(Affirm) }
    attr_reader :affirm

    sig { returns(AfterpayClearpay) }
    attr_reader :afterpay_clearpay

    sig { returns(Alipay) }
    attr_reader :alipay

    sig { returns(String) }
    attr_reader :allow_redisplay

    sig { returns(Alma) }
    attr_reader :alma

    sig { returns(AmazonPay) }
    attr_reader :amazon_pay

    sig { returns(AuBecsDebit) }
    attr_reader :au_becs_debit

    sig { returns(BacsDebit) }
    attr_reader :bacs_debit

    sig { returns(Bancontact) }
    attr_reader :bancontact

    sig { returns(BillingDetails) }
    attr_reader :billing_details

    sig { returns(Blik) }
    attr_reader :blik

    sig { returns(Boleto) }
    attr_reader :boleto

    sig { returns(Card) }
    attr_reader :card

    sig { returns(CardPresent) }
    attr_reader :card_present

    sig { returns(Cashapp) }
    attr_reader :cashapp

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(CustomerBalance) }
    attr_reader :customer_balance

    sig { returns(Eps) }
    attr_reader :eps

    sig { returns(Fpx) }
    attr_reader :fpx

    sig { returns(Giropay) }
    attr_reader :giropay

    sig { returns(Grabpay) }
    attr_reader :grabpay

    sig { returns(String) }
    attr_reader :id

    sig { returns(Ideal) }
    attr_reader :ideal

    sig { returns(InteracPresent) }
    attr_reader :interac_present

    sig { returns(KakaoPay) }
    attr_reader :kakao_pay

    sig { returns(Klarna) }
    attr_reader :klarna

    sig { returns(Konbini) }
    attr_reader :konbini

    sig { returns(KrCard) }
    attr_reader :kr_card

    sig { returns(Link) }
    attr_reader :link

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(Mobilepay) }
    attr_reader :mobilepay

    sig { returns(Multibanco) }
    attr_reader :multibanco

    sig { returns(NaverPay) }
    attr_reader :naver_pay

    sig { returns(String) }
    attr_reader :object

    sig { returns(Oxxo) }
    attr_reader :oxxo

    sig { returns(P24) }
    attr_reader :p24

    sig { returns(Payco) }
    attr_reader :payco

    sig { returns(Paynow) }
    attr_reader :paynow

    sig { returns(Paypal) }
    attr_reader :paypal

    sig { returns(Pix) }
    attr_reader :pix

    sig { returns(Promptpay) }
    attr_reader :promptpay

    sig { returns(RadarOptions) }
    attr_reader :radar_options

    sig { returns(RevolutPay) }
    attr_reader :revolut_pay

    sig { returns(SamsungPay) }
    attr_reader :samsung_pay

    sig { returns(SepaDebit) }
    attr_reader :sepa_debit

    sig { returns(Sofort) }
    attr_reader :sofort

    sig { returns(Swish) }
    attr_reader :swish

    sig { returns(Twint) }
    attr_reader :twint

    sig { returns(String) }
    attr_reader :type

    sig { returns(UsBankAccount) }
    attr_reader :us_bank_account

    sig { returns(WechatPay) }
    attr_reader :wechat_pay

    sig { returns(Zip) }
    attr_reader :zip
  end
end

module Stripe
  class PaymentMethodConfiguration < APIResource
    class AcssDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Affirm < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class AfterpayClearpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Alipay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Alma < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class AmazonPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class ApplePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class AuBecsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class BacsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Bancontact < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Blik < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Boleto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Card < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class CartesBancaires < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Cashapp < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class CustomerBalance < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Eps < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Fpx < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Giropay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class GooglePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Grabpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Ideal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Jcb < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Klarna < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Konbini < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Link < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Mobilepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Multibanco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Oxxo < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class P24 < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Paynow < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Paypal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Promptpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class RevolutPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class SepaDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Sofort < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Swish < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Twint < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class UsBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class WechatPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    class Zip < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable

        sig { returns(String) }
        attr_reader :preference

        sig { returns(String) }
        attr_reader :value
      end

      sig { returns(T::Boolean) }
      attr_reader :available

      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end

    sig { returns(AcssDebit) }
    attr_reader :acss_debit

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(Affirm) }
    attr_reader :affirm

    sig { returns(AfterpayClearpay) }
    attr_reader :afterpay_clearpay

    sig { returns(Alipay) }
    attr_reader :alipay

    sig { returns(Alma) }
    attr_reader :alma

    sig { returns(AmazonPay) }
    attr_reader :amazon_pay

    sig { returns(ApplePay) }
    attr_reader :apple_pay

    sig { returns(T.nilable(String)) }
    attr_reader :application

    sig { returns(AuBecsDebit) }
    attr_reader :au_becs_debit

    sig { returns(BacsDebit) }
    attr_reader :bacs_debit

    sig { returns(Bancontact) }
    attr_reader :bancontact

    sig { returns(Blik) }
    attr_reader :blik

    sig { returns(Boleto) }
    attr_reader :boleto

    sig { returns(Card) }
    attr_reader :card

    sig { returns(CartesBancaires) }
    attr_reader :cartes_bancaires

    sig { returns(Cashapp) }
    attr_reader :cashapp

    sig { returns(CustomerBalance) }
    attr_reader :customer_balance

    sig { returns(Eps) }
    attr_reader :eps

    sig { returns(Fpx) }
    attr_reader :fpx

    sig { returns(Giropay) }
    attr_reader :giropay

    sig { returns(GooglePay) }
    attr_reader :google_pay

    sig { returns(Grabpay) }
    attr_reader :grabpay

    sig { returns(String) }
    attr_reader :id

    sig { returns(Ideal) }
    attr_reader :ideal

    sig { returns(T::Boolean) }
    attr_reader :is_default

    sig { returns(Jcb) }
    attr_reader :jcb

    sig { returns(Klarna) }
    attr_reader :klarna

    sig { returns(Konbini) }
    attr_reader :konbini

    sig { returns(Link) }
    attr_reader :link

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(Mobilepay) }
    attr_reader :mobilepay

    sig { returns(Multibanco) }
    attr_reader :multibanco

    sig { returns(String) }
    attr_reader :name

    sig { returns(String) }
    attr_reader :object

    sig { returns(Oxxo) }
    attr_reader :oxxo

    sig { returns(P24) }
    attr_reader :p24

    sig { returns(T.nilable(String)) }
    attr_reader :parent

    sig { returns(Paynow) }
    attr_reader :paynow

    sig { returns(Paypal) }
    attr_reader :paypal

    sig { returns(Promptpay) }
    attr_reader :promptpay

    sig { returns(RevolutPay) }
    attr_reader :revolut_pay

    sig { returns(SepaDebit) }
    attr_reader :sepa_debit

    sig { returns(Sofort) }
    attr_reader :sofort

    sig { returns(Swish) }
    attr_reader :swish

    sig { returns(Twint) }
    attr_reader :twint

    sig { returns(UsBankAccount) }
    attr_reader :us_bank_account

    sig { returns(WechatPay) }
    attr_reader :wechat_pay

    sig { returns(Zip) }
    attr_reader :zip
  end
end

module Stripe
  class PaymentMethodDomain < APIResource
    class AmazonPay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details
    end

    class ApplePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details
    end

    class GooglePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details
    end

    class Link < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details
    end

    class Paypal < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details
    end

    sig { returns(AmazonPay) }
    attr_reader :amazon_pay

    sig { returns(ApplePay) }
    attr_reader :apple_pay

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :domain_name

    sig { returns(T::Boolean) }
    attr_reader :enabled

    sig { returns(GooglePay) }
    attr_reader :google_pay

    sig { returns(String) }
    attr_reader :id

    sig { returns(Link) }
    attr_reader :link

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(Paypal) }
    attr_reader :paypal
  end
end

module Stripe
  class Payout < APIResource
    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
    attr_reader :application_fee

    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    sig { returns(Integer) }
    attr_reader :arrival_date

    sig { returns(T::Boolean) }
    attr_reader :automatic

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(T.any(String, T.any(Stripe::BankAccount, Stripe::Card)))) }
    attr_reader :destination

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :failure_balance_transaction

    sig { returns(T.nilable(String)) }
    attr_reader :failure_code

    sig { returns(T.nilable(String)) }
    attr_reader :failure_message

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :method

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    attr_reader :original_payout

    sig { returns(String) }
    attr_reader :reconciliation_status

    sig { returns(T.nilable(T.any(String, Stripe::Payout))) }
    attr_reader :reversed_by

    sig { returns(String) }
    attr_reader :source_type

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    sig { returns(String) }
    attr_reader :status

    sig { returns(String) }
    attr_reader :type
  end
end

module Stripe
  class Person < APIResource
    class AdditionalTosAcceptances < Stripe::StripeObject
      class Account < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :date

        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { returns(T.nilable(String)) }
        attr_reader :user_agent
      end

      sig { returns(T.nilable(Account)) }
      attr_reader :account
    end

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

    class Dob < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :day

      sig { returns(T.nilable(Integer)) }
      attr_reader :month

      sig { returns(T.nilable(Integer)) }
      attr_reader :year
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

      sig { returns(T::Array[String]) }
      attr_reader :currently_due

      sig { returns(T::Array[Error]) }
      attr_reader :errors

      sig { returns(T::Array[String]) }
      attr_reader :eventually_due

      sig { returns(T::Array[String]) }
      attr_reader :past_due

      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end

    class RegisteredAddress < Stripe::StripeObject
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

    class Relationship < Stripe::StripeObject
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :director

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :executive

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :legal_guardian

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :owner

      sig { returns(T.nilable(Float)) }
      attr_reader :percent_ownership

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :representative

      sig { returns(T.nilable(String)) }
      attr_reader :title
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

      sig { returns(T::Array[String]) }
      attr_reader :currently_due

      sig { returns(T::Array[Error]) }
      attr_reader :errors

      sig { returns(T::Array[String]) }
      attr_reader :eventually_due

      sig { returns(T::Array[String]) }
      attr_reader :past_due

      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end

    class Verification < Stripe::StripeObject
      class AdditionalDocument < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :back

        sig { returns(T.nilable(String)) }
        attr_reader :details

        sig { returns(T.nilable(String)) }
        attr_reader :details_code

        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :front
      end

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

      sig { returns(T.nilable(AdditionalDocument)) }
      attr_reader :additional_document

      sig { returns(T.nilable(String)) }
      attr_reader :details

      sig { returns(T.nilable(String)) }
      attr_reader :details_code

      sig { returns(Document) }
      attr_reader :document

      sig { returns(String) }
      attr_reader :status
    end

    sig { returns(String) }
    attr_reader :account

    sig { returns(AdditionalTosAcceptances) }
    attr_reader :additional_tos_acceptances

    sig { returns(Address) }
    attr_reader :address

    sig { returns(T.nilable(AddressKana)) }
    attr_reader :address_kana

    sig { returns(T.nilable(AddressKanji)) }
    attr_reader :address_kanji

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(Dob) }
    attr_reader :dob

    sig { returns(T.nilable(String)) }
    attr_reader :email

    sig { returns(T.nilable(String)) }
    attr_reader :first_name

    sig { returns(T.nilable(String)) }
    attr_reader :first_name_kana

    sig { returns(T.nilable(String)) }
    attr_reader :first_name_kanji

    sig { returns(T::Array[String]) }
    attr_reader :full_name_aliases

    sig { returns(T.nilable(FutureRequirements)) }
    attr_reader :future_requirements

    sig { returns(T.nilable(String)) }
    attr_reader :gender

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :id_number_provided

    sig { returns(T::Boolean) }
    attr_reader :id_number_secondary_provided

    sig { returns(T.nilable(String)) }
    attr_reader :last_name

    sig { returns(T.nilable(String)) }
    attr_reader :last_name_kana

    sig { returns(T.nilable(String)) }
    attr_reader :last_name_kanji

    sig { returns(T.nilable(String)) }
    attr_reader :maiden_name

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :nationality

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(String)) }
    attr_reader :phone

    sig { returns(String) }
    attr_reader :political_exposure

    sig { returns(RegisteredAddress) }
    attr_reader :registered_address

    sig { returns(Relationship) }
    attr_reader :relationship

    sig { returns(T.nilable(Requirements)) }
    attr_reader :requirements

    sig { returns(T::Boolean) }
    attr_reader :ssn_last_4_provided

    sig { returns(Verification) }
    attr_reader :verification

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class Plan < APIResource
    class Tier < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :flat_amount

      sig { returns(T.nilable(String)) }
      attr_reader :flat_amount_decimal

      sig { returns(T.nilable(Integer)) }
      attr_reader :unit_amount

      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal

      sig { returns(T.nilable(Integer)) }
      attr_reader :up_to
    end

    class TransformUsage < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :divide_by

      sig { returns(String) }
      attr_reader :round
    end

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(T.nilable(String)) }
    attr_reader :aggregate_usage

    sig { returns(T.nilable(Integer)) }
    attr_reader :amount

    sig { returns(T.nilable(String)) }
    attr_reader :amount_decimal

    sig { returns(String) }
    attr_reader :billing_scheme

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :interval

    sig { returns(Integer) }
    attr_reader :interval_count

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :meter

    sig { returns(T.nilable(String)) }
    attr_reader :nickname

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Product))) }
    attr_reader :product

    sig { returns(T::Array[Tier]) }
    attr_reader :tiers

    sig { returns(T.nilable(String)) }
    attr_reader :tiers_mode

    sig { returns(T.nilable(TransformUsage)) }
    attr_reader :transform_usage

    sig { returns(T.nilable(Integer)) }
    attr_reader :trial_period_days

    sig { returns(String) }
    attr_reader :usage_type

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class Price < APIResource
    class CurrencyOptions < Stripe::StripeObject
      class CustomUnitAmount < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum

        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum

        sig { returns(T.nilable(Integer)) }
        attr_reader :preset
      end

      class Tier < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :flat_amount

        sig { returns(T.nilable(String)) }
        attr_reader :flat_amount_decimal

        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_amount

        sig { returns(T.nilable(String)) }
        attr_reader :unit_amount_decimal

        sig { returns(T.nilable(Integer)) }
        attr_reader :up_to
      end

      sig { returns(T.nilable(CustomUnitAmount)) }
      attr_reader :custom_unit_amount

      sig { returns(T.nilable(String)) }
      attr_reader :tax_behavior

      sig { returns(T::Array[Tier]) }
      attr_reader :tiers

      sig { returns(T.nilable(Integer)) }
      attr_reader :unit_amount

      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal
    end

    class CustomUnitAmount < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :maximum

      sig { returns(T.nilable(Integer)) }
      attr_reader :minimum

      sig { returns(T.nilable(Integer)) }
      attr_reader :preset
    end

    class Recurring < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :aggregate_usage

      sig { returns(String) }
      attr_reader :interval

      sig { returns(Integer) }
      attr_reader :interval_count

      sig { returns(T.nilable(String)) }
      attr_reader :meter

      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days

      sig { returns(String) }
      attr_reader :usage_type
    end

    class Tier < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :flat_amount

      sig { returns(T.nilable(String)) }
      attr_reader :flat_amount_decimal

      sig { returns(T.nilable(Integer)) }
      attr_reader :unit_amount

      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal

      sig { returns(T.nilable(Integer)) }
      attr_reader :up_to
    end

    class TransformQuantity < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :divide_by

      sig { returns(String) }
      attr_reader :round
    end

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(String) }
    attr_reader :billing_scheme

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T::Hash[String, CurrencyOptions]) }
    attr_reader :currency_options

    sig { returns(T.nilable(CustomUnitAmount)) }
    attr_reader :custom_unit_amount

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(String)) }
    attr_reader :lookup_key

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :nickname

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.any(String, Stripe::Product)) }
    attr_reader :product

    sig { returns(T.nilable(Recurring)) }
    attr_reader :recurring

    sig { returns(T.nilable(String)) }
    attr_reader :tax_behavior

    sig { returns(T::Array[Tier]) }
    attr_reader :tiers

    sig { returns(T.nilable(String)) }
    attr_reader :tiers_mode

    sig { returns(T.nilable(TransformQuantity)) }
    attr_reader :transform_quantity

    sig { returns(String) }
    attr_reader :type

    sig { returns(T.nilable(Integer)) }
    attr_reader :unit_amount

    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_decimal

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class Product < APIResource
    class MarketingFeature < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :name
    end

    class PackageDimensions < Stripe::StripeObject
      sig { returns(Float) }
      attr_reader :height

      sig { returns(Float) }
      attr_reader :length

      sig { returns(Float) }
      attr_reader :weight

      sig { returns(Float) }
      attr_reader :width
    end

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(T.any(String, Stripe::Price))) }
    attr_reader :default_price

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Array[String]) }
    attr_reader :images

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Array[MarketingFeature]) }
    attr_reader :marketing_features

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :name

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(PackageDimensions)) }
    attr_reader :package_dimensions

    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :shippable

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    sig { returns(T.nilable(T.any(String, Stripe::TaxCode))) }
    attr_reader :tax_code

    sig { returns(String) }
    attr_reader :type

    sig { returns(T.nilable(String)) }
    attr_reader :unit_label

    sig { returns(Integer) }
    attr_reader :updated

    sig { returns(T.nilable(String)) }
    attr_reader :url

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class ProductFeature < APIResource
    sig { returns(Stripe::Entitlements::Feature) }
    attr_reader :entitlement_feature

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class PromotionCode < APIResource
    class Restrictions < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :minimum_amount
      end

      sig { returns(T::Hash[String, CurrencyOptions]) }
      attr_reader :currency_options

      sig { returns(T::Boolean) }
      attr_reader :first_time_transaction

      sig { returns(T.nilable(Integer)) }
      attr_reader :minimum_amount

      sig { returns(T.nilable(String)) }
      attr_reader :minimum_amount_currency
    end

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(String) }
    attr_reader :code

    sig { returns(Stripe::Coupon) }
    attr_reader :coupon

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(Integer)) }
    attr_reader :max_redemptions

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(Restrictions) }
    attr_reader :restrictions

    sig { returns(Integer) }
    attr_reader :times_redeemed
  end
end

module Stripe
  class Quote < APIResource
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T::Boolean) }
      attr_reader :enabled

      sig { returns(T.nilable(Liability)) }
      attr_reader :liability

      sig { returns(T.nilable(String)) }
      attr_reader :status
    end

    class Computed < Stripe::StripeObject
      class Recurring < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount

              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end

            class Tax < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount

              sig { returns(Stripe::TaxRate) }
              attr_reader :rate

              sig { returns(T.nilable(String)) }
              attr_reader :taxability_reason

              sig { returns(T.nilable(Integer)) }
              attr_reader :taxable_amount
            end

            sig { returns(T::Array[Discount]) }
            attr_reader :discounts

            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end

          sig { returns(Integer) }
          attr_reader :amount_discount

          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping

          sig { returns(Integer) }
          attr_reader :amount_tax

          sig { returns(Breakdown) }
          attr_reader :breakdown
        end

        sig { returns(Integer) }
        attr_reader :amount_subtotal

        sig { returns(Integer) }
        attr_reader :amount_total

        sig { returns(String) }
        attr_reader :interval

        sig { returns(Integer) }
        attr_reader :interval_count

        sig { returns(TotalDetails) }
        attr_reader :total_details
      end

      class Upfront < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount

              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end

            class Tax < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount

              sig { returns(Stripe::TaxRate) }
              attr_reader :rate

              sig { returns(T.nilable(String)) }
              attr_reader :taxability_reason

              sig { returns(T.nilable(Integer)) }
              attr_reader :taxable_amount
            end

            sig { returns(T::Array[Discount]) }
            attr_reader :discounts

            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end

          sig { returns(Integer) }
          attr_reader :amount_discount

          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping

          sig { returns(Integer) }
          attr_reader :amount_tax

          sig { returns(Breakdown) }
          attr_reader :breakdown
        end

        sig { returns(Integer) }
        attr_reader :amount_subtotal

        sig { returns(Integer) }
        attr_reader :amount_total

        sig { returns(Stripe::ListObject) }
        attr_reader :line_items

        sig { returns(TotalDetails) }
        attr_reader :total_details
      end

      sig { returns(T.nilable(Recurring)) }
      attr_reader :recurring

      sig { returns(Upfront) }
      attr_reader :upfront
    end

    class FromQuote < Stripe::StripeObject
      sig { returns(T::Boolean) }
      attr_reader :is_revision

      sig { returns(T.any(String, Stripe::Quote)) }
      attr_reader :quote
    end

    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T.nilable(Integer)) }
      attr_reader :days_until_due

      sig { returns(Issuer) }
      attr_reader :issuer
    end

    class StatusTransitions < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :accepted_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at

      sig { returns(T.nilable(Integer)) }
      attr_reader :finalized_at
    end

    class SubscriptionData < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(T.nilable(Integer)) }
      attr_reader :effective_date

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
    end

    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(Stripe::Discount) }
          attr_reader :discount
        end

        class Tax < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(Stripe::TaxRate) }
          attr_reader :rate

          sig { returns(T.nilable(String)) }
          attr_reader :taxability_reason

          sig { returns(T.nilable(Integer)) }
          attr_reader :taxable_amount
        end

        sig { returns(T::Array[Discount]) }
        attr_reader :discounts

        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end

      sig { returns(Integer) }
      attr_reader :amount_discount

      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_shipping

      sig { returns(Integer) }
      attr_reader :amount_tax

      sig { returns(Breakdown) }
      attr_reader :breakdown
    end

    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { returns(T.nilable(Float)) }
      attr_reader :amount_percent

      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end

    sig { returns(Integer) }
    attr_reader :amount_subtotal

    sig { returns(Integer) }
    attr_reader :amount_total

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    sig { returns(T.nilable(Float)) }
    attr_reader :application_fee_percent

    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax

    sig { returns(String) }
    attr_reader :collection_method

    sig { returns(Computed) }
    attr_reader :computed

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(String)) }
    attr_reader :currency

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T::Array[T.any(String, Stripe::TaxRate)]) }
    attr_reader :default_tax_rates

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts

    sig { returns(Integer) }
    attr_reader :expires_at

    sig { returns(T.nilable(String)) }
    attr_reader :footer

    sig { returns(T.nilable(FromQuote)) }
    attr_reader :from_quote

    sig { returns(T.nilable(String)) }
    attr_reader :header

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice

    sig { returns(InvoiceSettings) }
    attr_reader :invoice_settings

    sig { returns(Stripe::ListObject) }
    attr_reader :line_items

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(T.nilable(String)) }
    attr_reader :number

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(String) }
    attr_reader :status

    sig { returns(StatusTransitions) }
    attr_reader :status_transitions

    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription

    sig { returns(SubscriptionData) }
    attr_reader :subscription_data

    sig { returns(T.nilable(T.any(String, Stripe::SubscriptionSchedule))) }
    attr_reader :subscription_schedule

    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    sig { returns(TotalDetails) }
    attr_reader :total_details

    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data
  end
end

module Stripe
  module Radar
    class EarlyFraudWarning < APIResource
      sig { returns(T::Boolean) }
      attr_reader :actionable

      sig { returns(T.any(String, Stripe::Charge)) }
      attr_reader :charge

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :fraud_type

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end
  end
end

module Stripe
  module Radar
    class ValueList < APIResource
      sig { returns(String) }
      attr_reader :alias

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :created_by

      sig { returns(String) }
      attr_reader :id

      sig { returns(String) }
      attr_reader :item_type

      sig { returns(Stripe::ListObject) }
      attr_reader :list_items

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end

module Stripe
  module Radar
    class ValueListItem < APIResource
      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :created_by

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :value

      sig { returns(String) }
      attr_reader :value_list

      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end

module Stripe
  class Refund < APIResource
    class DestinationDetails < Stripe::StripeObject
      class Affirm < Stripe::StripeObject
      end

      class AfterpayClearpay < Stripe::StripeObject
      end

      class Alipay < Stripe::StripeObject
      end

      class Alma < Stripe::StripeObject
      end

      class AmazonPay < Stripe::StripeObject
      end

      class AuBankTransfer < Stripe::StripeObject
      end

      class Blik < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class BrBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class Card < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reference

        sig { returns(String) }
        attr_reader :reference_status

        sig { returns(String) }
        attr_reader :reference_type

        sig { returns(String) }
        attr_reader :type
      end

      class Cashapp < Stripe::StripeObject
      end

      class CustomerCashBalance < Stripe::StripeObject
      end

      class Eps < Stripe::StripeObject
      end

      class EuBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class GbBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class Giropay < Stripe::StripeObject
      end

      class Grabpay < Stripe::StripeObject
      end

      class JpBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class Klarna < Stripe::StripeObject
      end

      class Multibanco < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class MxBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class P24 < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class Paynow < Stripe::StripeObject
      end

      class Paypal < Stripe::StripeObject
      end

      class Pix < Stripe::StripeObject
      end

      class Revolut < Stripe::StripeObject
      end

      class Sofort < Stripe::StripeObject
      end

      class Swish < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class ThBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class UsBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference

        sig { returns(T.nilable(String)) }
        attr_reader :reference_status
      end

      class WechatPay < Stripe::StripeObject
      end

      class Zip < Stripe::StripeObject
      end

      sig { returns(Affirm) }
      attr_reader :affirm

      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay

      sig { returns(Alipay) }
      attr_reader :alipay

      sig { returns(Alma) }
      attr_reader :alma

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(AuBankTransfer) }
      attr_reader :au_bank_transfer

      sig { returns(Blik) }
      attr_reader :blik

      sig { returns(BrBankTransfer) }
      attr_reader :br_bank_transfer

      sig { returns(Card) }
      attr_reader :card

      sig { returns(Cashapp) }
      attr_reader :cashapp

      sig { returns(CustomerCashBalance) }
      attr_reader :customer_cash_balance

      sig { returns(Eps) }
      attr_reader :eps

      sig { returns(EuBankTransfer) }
      attr_reader :eu_bank_transfer

      sig { returns(GbBankTransfer) }
      attr_reader :gb_bank_transfer

      sig { returns(Giropay) }
      attr_reader :giropay

      sig { returns(Grabpay) }
      attr_reader :grabpay

      sig { returns(JpBankTransfer) }
      attr_reader :jp_bank_transfer

      sig { returns(Klarna) }
      attr_reader :klarna

      sig { returns(Multibanco) }
      attr_reader :multibanco

      sig { returns(MxBankTransfer) }
      attr_reader :mx_bank_transfer

      sig { returns(P24) }
      attr_reader :p24

      sig { returns(Paynow) }
      attr_reader :paynow

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(Pix) }
      attr_reader :pix

      sig { returns(Revolut) }
      attr_reader :revolut

      sig { returns(Sofort) }
      attr_reader :sofort

      sig { returns(Swish) }
      attr_reader :swish

      sig { returns(ThBankTransfer) }
      attr_reader :th_bank_transfer

      sig { returns(String) }
      attr_reader :type

      sig { returns(UsBankTransfer) }
      attr_reader :us_bank_transfer

      sig { returns(WechatPay) }
      attr_reader :wechat_pay

      sig { returns(Zip) }
      attr_reader :zip
    end

    class NextAction < Stripe::StripeObject
      class DisplayDetails < Stripe::StripeObject
        class EmailSent < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :email_sent_at

          sig { returns(String) }
          attr_reader :email_sent_to
        end

        sig { returns(EmailSent) }
        attr_reader :email_sent

        sig { returns(Integer) }
        attr_reader :expires_at
      end

      sig { returns(DisplayDetails) }
      attr_reader :display_details

      sig { returns(String) }
      attr_reader :type
    end

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :charge

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(String) }
    attr_reader :description

    sig { returns(DestinationDetails) }
    attr_reader :destination_details

    sig { returns(T.any(String, Stripe::BalanceTransaction)) }
    attr_reader :failure_balance_transaction

    sig { returns(String) }
    attr_reader :failure_reason

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :instructions_email

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(NextAction) }
    attr_reader :next_action

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    attr_reader :payment_intent

    sig { returns(T.nilable(String)) }
    attr_reader :reason

    sig { returns(T.nilable(String)) }
    attr_reader :receipt_number

    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    attr_reader :source_transfer_reversal

    sig { returns(T.nilable(String)) }
    attr_reader :status

    sig { returns(T.nilable(T.any(String, Stripe::Reversal))) }
    attr_reader :transfer_reversal
  end
end

module Stripe
  module Reporting
    class ReportRun < APIResource
      class Parameters < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :columns

        sig { returns(String) }
        attr_reader :connected_account

        sig { returns(String) }
        attr_reader :currency

        sig { returns(Integer) }
        attr_reader :interval_end

        sig { returns(Integer) }
        attr_reader :interval_start

        sig { returns(String) }
        attr_reader :payout

        sig { returns(String) }
        attr_reader :reporting_category

        sig { returns(String) }
        attr_reader :timezone
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(String)) }
      attr_reader :error

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(Parameters) }
      attr_reader :parameters

      sig { returns(String) }
      attr_reader :report_type

      sig { returns(T.nilable(Stripe::File)) }
      attr_reader :result

      sig { returns(String) }
      attr_reader :status

      sig { returns(T.nilable(Integer)) }
      attr_reader :succeeded_at
    end
  end
end

module Stripe
  module Reporting
    class ReportType < APIResource
      sig { returns(Integer) }
      attr_reader :data_available_end

      sig { returns(Integer) }
      attr_reader :data_available_start

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :default_columns

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(Integer) }
      attr_reader :updated

      sig { returns(Integer) }
      attr_reader :version
    end
  end
end

module Stripe
  class Reversal < APIResource
    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(T.any(String, Stripe::Refund))) }
    attr_reader :destination_payment_refund

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Refund))) }
    attr_reader :source_refund

    sig { returns(T.any(String, Stripe::Transfer)) }
    attr_reader :transfer
  end
end

module Stripe
  class Review < APIResource
    class IpAddressLocation < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(Float)) }
      attr_reader :latitude

      sig { returns(T.nilable(Float)) }
      attr_reader :longitude

      sig { returns(T.nilable(String)) }
      attr_reader :region
    end

    class Session < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :browser

      sig { returns(T.nilable(String)) }
      attr_reader :device

      sig { returns(T.nilable(String)) }
      attr_reader :platform

      sig { returns(T.nilable(String)) }
      attr_reader :version
    end

    sig { returns(T.nilable(String)) }
    attr_reader :billing_zip

    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :charge

    sig { returns(T.nilable(String)) }
    attr_reader :closed_reason

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(String)) }
    attr_reader :ip_address

    sig { returns(T.nilable(IpAddressLocation)) }
    attr_reader :ip_address_location

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Boolean) }
    attr_reader :open

    sig { returns(String) }
    attr_reader :opened_reason

    sig { returns(T.any(String, Stripe::PaymentIntent)) }
    attr_reader :payment_intent

    sig { returns(String) }
    attr_reader :reason

    sig { returns(T.nilable(Session)) }
    attr_reader :session
  end
end

module Stripe
  class SetupAttempt < APIResource
    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
      end

      class AmazonPay < Stripe::StripeObject
      end

      class AuBecsDebit < Stripe::StripeObject
      end

      class BacsDebit < Stripe::StripeObject
      end

      class Bancontact < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit

        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate

        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4

        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class Boleto < Stripe::StripeObject
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :address_line1_check

          sig { returns(T.nilable(String)) }
          attr_reader :address_postal_code_check

          sig { returns(T.nilable(String)) }
          attr_reader :cvc_check
        end

        class ThreeDSecure < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :authentication_flow

          sig { returns(T.nilable(String)) }
          attr_reader :electronic_commerce_indicator

          sig { returns(T.nilable(String)) }
          attr_reader :result

          sig { returns(T.nilable(String)) }
          attr_reader :result_reason

          sig { returns(T.nilable(String)) }
          attr_reader :transaction_id

          sig { returns(T.nilable(String)) }
          attr_reader :version
        end

        class Wallet < Stripe::StripeObject
          class ApplePay < Stripe::StripeObject
          end

          class GooglePay < Stripe::StripeObject
          end

          sig { returns(ApplePay) }
          attr_reader :apple_pay

          sig { returns(GooglePay) }
          attr_reader :google_pay

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(String)) }
        attr_reader :brand

        sig { returns(T.nilable(Checks)) }
        attr_reader :checks

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(T.nilable(Integer)) }
        attr_reader :exp_month

        sig { returns(T.nilable(Integer)) }
        attr_reader :exp_year

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :funding

        sig { returns(T.nilable(String)) }
        attr_reader :iin

        sig { returns(T.nilable(String)) }
        attr_reader :issuer

        sig { returns(T.nilable(String)) }
        attr_reader :last4

        sig { returns(T.nilable(String)) }
        attr_reader :network

        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure

        sig { returns(T.nilable(Wallet)) }
        attr_reader :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :stored_at

          sig { returns(T.nilable(String)) }
          attr_reader :type
        end

        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_card

        sig { returns(T.nilable(Offline)) }
        attr_reader :offline
      end

      class Cashapp < Stripe::StripeObject
      end

      class Ideal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit

        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate

        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class KakaoPay < Stripe::StripeObject
      end

      class Klarna < Stripe::StripeObject
      end

      class KrCard < Stripe::StripeObject
      end

      class Link < Stripe::StripeObject
      end

      class Paypal < Stripe::StripeObject
      end

      class RevolutPay < Stripe::StripeObject
      end

      class SepaDebit < Stripe::StripeObject
      end

      class Sofort < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code

        sig { returns(T.nilable(String)) }
        attr_reader :bank_name

        sig { returns(T.nilable(String)) }
        attr_reader :bic

        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit

        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate

        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4

        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language

        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end

      class UsBankAccount < Stripe::StripeObject
      end

      sig { returns(AcssDebit) }
      attr_reader :acss_debit

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit

      sig { returns(BacsDebit) }
      attr_reader :bacs_debit

      sig { returns(Bancontact) }
      attr_reader :bancontact

      sig { returns(Boleto) }
      attr_reader :boleto

      sig { returns(Card) }
      attr_reader :card

      sig { returns(CardPresent) }
      attr_reader :card_present

      sig { returns(Cashapp) }
      attr_reader :cashapp

      sig { returns(Ideal) }
      attr_reader :ideal

      sig { returns(KakaoPay) }
      attr_reader :kakao_pay

      sig { returns(Klarna) }
      attr_reader :klarna

      sig { returns(KrCard) }
      attr_reader :kr_card

      sig { returns(Link) }
      attr_reader :link

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(RevolutPay) }
      attr_reader :revolut_pay

      sig { returns(SepaDebit) }
      attr_reader :sepa_debit

      sig { returns(Sofort) }
      attr_reader :sofort

      sig { returns(String) }
      attr_reader :type

      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
    end

    class SetupError < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge

      sig { returns(String) }
      attr_reader :code

      sig { returns(String) }
      attr_reader :decline_code

      sig { returns(String) }
      attr_reader :doc_url

      sig { returns(String) }
      attr_reader :message

      sig { returns(String) }
      attr_reader :param

      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent

      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method

      sig { returns(String) }
      attr_reader :payment_method_type

      sig { returns(String) }
      attr_reader :request_log_url

      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent

      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source

      sig { returns(String) }
      attr_reader :type
    end

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T::Boolean) }
    attr_reader :attach_to_self

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :flow_directions

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(T.any(String, Stripe::PaymentMethod)) }
    attr_reader :payment_method

    sig { returns(PaymentMethodDetails) }
    attr_reader :payment_method_details

    sig { returns(T.nilable(SetupError)) }
    attr_reader :setup_error

    sig { returns(T.any(String, Stripe::SetupIntent)) }
    attr_reader :setup_intent

    sig { returns(String) }
    attr_reader :status

    sig { returns(String) }
    attr_reader :usage
  end
end

module Stripe
  class SetupIntent < APIResource
    class AutomaticPaymentMethods < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :allow_redirects

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled
    end

    class LastSetupError < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge

      sig { returns(String) }
      attr_reader :code

      sig { returns(String) }
      attr_reader :decline_code

      sig { returns(String) }
      attr_reader :doc_url

      sig { returns(String) }
      attr_reader :message

      sig { returns(String) }
      attr_reader :param

      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent

      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method

      sig { returns(String) }
      attr_reader :payment_method_type

      sig { returns(String) }
      attr_reader :request_log_url

      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent

      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source

      sig { returns(String) }
      attr_reader :type
    end

    class NextAction < Stripe::StripeObject
      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :expires_at

          sig { returns(String) }
          attr_reader :image_url_png

          sig { returns(String) }
          attr_reader :image_url_svg
        end

        sig { returns(String) }
        attr_reader :hosted_instructions_url

        sig { returns(String) }
        attr_reader :mobile_auth_url

        sig { returns(QrCode) }
        attr_reader :qr_code
      end

      class RedirectToUrl < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :return_url

        sig { returns(T.nilable(String)) }
        attr_reader :url
      end

      class VerifyWithMicrodeposits < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :arrival_date

        sig { returns(String) }
        attr_reader :hosted_verification_url

        sig { returns(T.nilable(String)) }
        attr_reader :microdeposit_type
      end

      sig { returns(CashappHandleRedirectOrDisplayQrCode) }
      attr_reader :cashapp_handle_redirect_or_display_qr_code

      sig { returns(RedirectToUrl) }
      attr_reader :redirect_to_url

      sig { returns(String) }
      attr_reader :type

      sig { returns(T::Hash[String, T.any()]) }
      attr_reader :use_stripe_sdk

      sig { returns(VerifyWithMicrodeposits) }
      attr_reader :verify_with_microdeposits
    end

    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(String)) }
      attr_reader :parent
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :custom_mandate_url

          sig { returns(T::Array[String]) }
          attr_reader :default_for

          sig { returns(T.nilable(String)) }
          attr_reader :interval_description

          sig { returns(T.nilable(String)) }
          attr_reader :payment_schedule

          sig { returns(T.nilable(String)) }
          attr_reader :transaction_type
        end

        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { returns(MandateOptions) }
        attr_reader :mandate_options

        sig { returns(String) }
        attr_reader :verification_method
      end

      class AmazonPay < Stripe::StripeObject
      end

      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
        end

        sig { returns(MandateOptions) }
        attr_reader :mandate_options
      end

      class Card < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(String) }
          attr_reader :amount_type

          sig { returns(String) }
          attr_reader :currency

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { returns(T.nilable(Integer)) }
          attr_reader :end_date

          sig { returns(String) }
          attr_reader :interval

          sig { returns(T.nilable(Integer)) }
          attr_reader :interval_count

          sig { returns(String) }
          attr_reader :reference

          sig { returns(Integer) }
          attr_reader :start_date

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :supported_types
        end

        sig { returns(T.nilable(MandateOptions)) }
        attr_reader :mandate_options

        sig { returns(T.nilable(String)) }
        attr_reader :network

        sig { returns(T.nilable(String)) }
        attr_reader :request_three_d_secure
      end

      class CardPresent < Stripe::StripeObject
      end

      class Link < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :persistent_token
      end

      class Paypal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :billing_agreement_id
      end

      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
        end

        sig { returns(MandateOptions) }
        attr_reader :mandate_options
      end

      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            sig { returns(T::Array[String]) }
            attr_reader :account_subcategories
          end

          sig { returns(Filters) }
          attr_reader :filters

          sig { returns(T::Array[String]) }
          attr_reader :permissions

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :prefetch

          sig { returns(String) }
          attr_reader :return_url
        end

        class MandateOptions < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :collection_method
        end

        sig { returns(FinancialConnections) }
        attr_reader :financial_connections

        sig { returns(MandateOptions) }
        attr_reader :mandate_options

        sig { returns(String) }
        attr_reader :verification_method
      end

      sig { returns(AcssDebit) }
      attr_reader :acss_debit

      sig { returns(AmazonPay) }
      attr_reader :amazon_pay

      sig { returns(BacsDebit) }
      attr_reader :bacs_debit

      sig { returns(Card) }
      attr_reader :card

      sig { returns(CardPresent) }
      attr_reader :card_present

      sig { returns(Link) }
      attr_reader :link

      sig { returns(Paypal) }
      attr_reader :paypal

      sig { returns(SepaDebit) }
      attr_reader :sepa_debit

      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
    end

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T::Boolean) }
    attr_reader :attach_to_self

    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    attr_reader :automatic_payment_methods

    sig { returns(T.nilable(String)) }
    attr_reader :cancellation_reason

    sig { returns(T.nilable(String)) }
    attr_reader :client_secret

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :flow_directions

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(LastSetupError)) }
    attr_reader :last_setup_error

    sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
    attr_reader :latest_attempt

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    attr_reader :mandate

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(T.nilable(NextAction)) }
    attr_reader :next_action

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    attr_reader :payment_method

    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    attr_reader :payment_method_configuration_details

    sig { returns(T.nilable(PaymentMethodOptions)) }
    attr_reader :payment_method_options

    sig { returns(T::Array[String]) }
    attr_reader :payment_method_types

    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    attr_reader :single_use_mandate

    sig { returns(String) }
    attr_reader :status

    sig { returns(String) }
    attr_reader :usage
  end
end

module Stripe
  class ShippingRate < APIResource
    class DeliveryEstimate < Stripe::StripeObject
      class Maximum < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :unit

        sig { returns(Integer) }
        attr_reader :value
      end

      class Minimum < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :unit

        sig { returns(Integer) }
        attr_reader :value
      end

      sig { returns(T.nilable(Maximum)) }
      attr_reader :maximum

      sig { returns(T.nilable(Minimum)) }
      attr_reader :minimum
    end

    class FixedAmount < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(String) }
        attr_reader :tax_behavior
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T::Hash[String, CurrencyOptions]) }
      attr_reader :currency_options
    end

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(DeliveryEstimate)) }
    attr_reader :delivery_estimate

    sig { returns(T.nilable(String)) }
    attr_reader :display_name

    sig { returns(FixedAmount) }
    attr_reader :fixed_amount

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(String)) }
    attr_reader :tax_behavior

    sig { returns(T.nilable(T.any(String, Stripe::TaxCode))) }
    attr_reader :tax_code

    sig { returns(String) }
    attr_reader :type
  end
end

module Stripe
  module Sigma
    class ScheduledQueryRun < APIResource
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(Integer) }
      attr_reader :data_load_time

      sig { returns(Error) }
      attr_reader :error

      sig { returns(T.nilable(Stripe::File)) }
      attr_reader :file

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(Integer) }
      attr_reader :result_available_until

      sig { returns(String) }
      attr_reader :sql

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :title
    end
  end
end

module Stripe
  class Source < APIResource
    class AchCreditTransfer < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_type

      sig { returns(T.nilable(String)) }
      attr_reader :refund_routing_number

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { returns(T.nilable(String)) }
      attr_reader :swift_code
    end

    class AchDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { returns(T.nilable(String)) }
      attr_reader :type
    end

    class AcssDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_city

      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_line_1

      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_line_2

      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_postal_code

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :category

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
    end

    class Alipay < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :data_string

      sig { returns(T.nilable(String)) }
      attr_reader :native_url

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end

    class AuBecsDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bsb_number

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end

    class Bancontact < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :bic

      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4

      sig { returns(T.nilable(String)) }
      attr_reader :preferred_language

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end

    class Card < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :address_line1_check

      sig { returns(T.nilable(String)) }
      attr_reader :address_zip_check

      sig { returns(T.nilable(String)) }
      attr_reader :brand

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :cvc_check

      sig { returns(String) }
      attr_reader :description

      sig { returns(T.nilable(String)) }
      attr_reader :dynamic_last4

      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month

      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year

      sig { returns(String) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :funding

      sig { returns(String) }
      attr_reader :iin

      sig { returns(String) }
      attr_reader :issuer

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :three_d_secure

      sig { returns(T.nilable(String)) }
      attr_reader :tokenization_method
    end

    class CardPresent < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :application_cryptogram

      sig { returns(String) }
      attr_reader :application_preferred_name

      sig { returns(T.nilable(String)) }
      attr_reader :authorization_code

      sig { returns(String) }
      attr_reader :authorization_response_code

      sig { returns(T.nilable(String)) }
      attr_reader :brand

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(String) }
      attr_reader :cvm_type

      sig { returns(T.nilable(String)) }
      attr_reader :data_type

      sig { returns(String) }
      attr_reader :dedicated_file_name

      sig { returns(String) }
      attr_reader :description

      sig { returns(String) }
      attr_reader :emv_auth_data

      sig { returns(T.nilable(String)) }
      attr_reader :evidence_customer_signature

      sig { returns(T.nilable(String)) }
      attr_reader :evidence_transaction_certificate

      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month

      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year

      sig { returns(String) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :funding

      sig { returns(String) }
      attr_reader :iin

      sig { returns(String) }
      attr_reader :issuer

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :pos_device_id

      sig { returns(String) }
      attr_reader :pos_entry_mode

      sig { returns(T.nilable(String)) }
      attr_reader :read_method

      sig { returns(T.nilable(String)) }
      attr_reader :reader

      sig { returns(String) }
      attr_reader :terminal_verification_results

      sig { returns(String) }
      attr_reader :transaction_status_information
    end

    class CodeVerification < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :attempts_remaining

      sig { returns(String) }
      attr_reader :status
    end

    class Eps < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :reference

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end

    class Giropay < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :bic

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end

    class Ideal < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank

      sig { returns(T.nilable(String)) }
      attr_reader :bic

      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end

    class Klarna < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :background_image_url

      sig { returns(T.nilable(String)) }
      attr_reader :client_token

      sig { returns(String) }
      attr_reader :first_name

      sig { returns(String) }
      attr_reader :last_name

      sig { returns(String) }
      attr_reader :locale

      sig { returns(String) }
      attr_reader :logo_url

      sig { returns(String) }
      attr_reader :page_title

      sig { returns(String) }
      attr_reader :pay_later_asset_urls_descriptive

      sig { returns(String) }
      attr_reader :pay_later_asset_urls_standard

      sig { returns(String) }
      attr_reader :pay_later_name

      sig { returns(String) }
      attr_reader :pay_later_redirect_url

      sig { returns(String) }
      attr_reader :pay_now_asset_urls_descriptive

      sig { returns(String) }
      attr_reader :pay_now_asset_urls_standard

      sig { returns(String) }
      attr_reader :pay_now_name

      sig { returns(String) }
      attr_reader :pay_now_redirect_url

      sig { returns(String) }
      attr_reader :pay_over_time_asset_urls_descriptive

      sig { returns(String) }
      attr_reader :pay_over_time_asset_urls_standard

      sig { returns(String) }
      attr_reader :pay_over_time_name

      sig { returns(String) }
      attr_reader :pay_over_time_redirect_url

      sig { returns(String) }
      attr_reader :payment_method_categories

      sig { returns(String) }
      attr_reader :purchase_country

      sig { returns(String) }
      attr_reader :purchase_type

      sig { returns(String) }
      attr_reader :redirect_url

      sig { returns(Integer) }
      attr_reader :shipping_delay

      sig { returns(String) }
      attr_reader :shipping_first_name

      sig { returns(String) }
      attr_reader :shipping_last_name
    end

    class Multibanco < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :entity

      sig { returns(T.nilable(String)) }
      attr_reader :reference

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_city

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_country

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line1

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line2

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_postal_code

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_state

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name

      sig { returns(T.nilable(String)) }
      attr_reader :refund_iban
    end

    class Owner < Stripe::StripeObject
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

      class VerifiedAddress < Stripe::StripeObject
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

      sig { returns(T.nilable(Address)) }
      attr_reader :address

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { returns(T.nilable(VerifiedAddress)) }
      attr_reader :verified_address

      sig { returns(T.nilable(String)) }
      attr_reader :verified_email

      sig { returns(T.nilable(String)) }
      attr_reader :verified_name

      sig { returns(T.nilable(String)) }
      attr_reader :verified_phone
    end

    class P24 < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :reference
    end

    class Receiver < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { returns(Integer) }
      attr_reader :amount_charged

      sig { returns(Integer) }
      attr_reader :amount_received

      sig { returns(Integer) }
      attr_reader :amount_returned

      sig { returns(String) }
      attr_reader :refund_attributes_method

      sig { returns(String) }
      attr_reader :refund_attributes_status
    end

    class Redirect < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :failure_reason

      sig { returns(String) }
      attr_reader :return_url

      sig { returns(String) }
      attr_reader :status

      sig { returns(String) }
      attr_reader :url
    end

    class SepaCreditTransfer < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :bic

      sig { returns(T.nilable(String)) }
      attr_reader :iban

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_city

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_country

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line1

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line2

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_postal_code

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_state

      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name

      sig { returns(T.nilable(String)) }
      attr_reader :refund_iban
    end

    class SepaDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code

      sig { returns(T.nilable(String)) }
      attr_reader :branch_code

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :mandate_reference

      sig { returns(T.nilable(String)) }
      attr_reader :mandate_url
    end

    class Sofort < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code

      sig { returns(T.nilable(String)) }
      attr_reader :bank_name

      sig { returns(T.nilable(String)) }
      attr_reader :bic

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4

      sig { returns(T.nilable(String)) }
      attr_reader :preferred_language

      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end

    class SourceOrder < Stripe::StripeObject
      class Item < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount

        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { returns(T.nilable(String)) }
        attr_reader :parent

        sig { returns(Integer) }
        attr_reader :quantity

        sig { returns(T.nilable(String)) }
        attr_reader :type
      end

      class Shipping < Stripe::StripeObject
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

        sig { returns(Address) }
        attr_reader :address

        sig { returns(T.nilable(String)) }
        attr_reader :carrier

        sig { returns(String) }
        attr_reader :name

        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency

      sig { returns(String) }
      attr_reader :email

      sig { returns(T.nilable(T::Array[Item])) }
      attr_reader :items

      sig { returns(Shipping) }
      attr_reader :shipping
    end

    class ThreeDSecure < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :address_line1_check

      sig { returns(T.nilable(String)) }
      attr_reader :address_zip_check

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :authenticated

      sig { returns(T.nilable(String)) }
      attr_reader :brand

      sig { returns(T.nilable(String)) }
      attr_reader :card

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { returns(T.nilable(String)) }
      attr_reader :customer

      sig { returns(T.nilable(String)) }
      attr_reader :cvc_check

      sig { returns(String) }
      attr_reader :description

      sig { returns(T.nilable(String)) }
      attr_reader :dynamic_last4

      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month

      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year

      sig { returns(String) }
      attr_reader :fingerprint

      sig { returns(T.nilable(String)) }
      attr_reader :funding

      sig { returns(String) }
      attr_reader :iin

      sig { returns(String) }
      attr_reader :issuer

      sig { returns(T.nilable(String)) }
      attr_reader :last4

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :three_d_secure

      sig { returns(T.nilable(String)) }
      attr_reader :tokenization_method
    end

    class Wechat < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :prepay_id

      sig { returns(T.nilable(String)) }
      attr_reader :qr_code_url

      sig { returns(String) }
      attr_reader :statement_descriptor
    end

    sig { returns(AchCreditTransfer) }
    attr_reader :ach_credit_transfer

    sig { returns(AchDebit) }
    attr_reader :ach_debit

    sig { returns(AcssDebit) }
    attr_reader :acss_debit

    sig { returns(Alipay) }
    attr_reader :alipay

    sig { returns(T.nilable(Integer)) }
    attr_reader :amount

    sig { returns(AuBecsDebit) }
    attr_reader :au_becs_debit

    sig { returns(Bancontact) }
    attr_reader :bancontact

    sig { returns(Card) }
    attr_reader :card

    sig { returns(CardPresent) }
    attr_reader :card_present

    sig { returns(String) }
    attr_reader :client_secret

    sig { returns(CodeVerification) }
    attr_reader :code_verification

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(String)) }
    attr_reader :currency

    sig { returns(String) }
    attr_reader :customer

    sig { returns(Eps) }
    attr_reader :eps

    sig { returns(String) }
    attr_reader :flow

    sig { returns(Giropay) }
    attr_reader :giropay

    sig { returns(String) }
    attr_reader :id

    sig { returns(Ideal) }
    attr_reader :ideal

    sig { returns(Klarna) }
    attr_reader :klarna

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(Multibanco) }
    attr_reader :multibanco

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(Owner)) }
    attr_reader :owner

    sig { returns(P24) }
    attr_reader :p24

    sig { returns(Receiver) }
    attr_reader :receiver

    sig { returns(Redirect) }
    attr_reader :redirect

    sig { returns(SepaCreditTransfer) }
    attr_reader :sepa_credit_transfer

    sig { returns(SepaDebit) }
    attr_reader :sepa_debit

    sig { returns(Sofort) }
    attr_reader :sofort

    sig { returns(SourceOrder) }
    attr_reader :source_order

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    sig { returns(String) }
    attr_reader :status

    sig { returns(ThreeDSecure) }
    attr_reader :three_d_secure

    sig { returns(String) }
    attr_reader :type

    sig { returns(T.nilable(String)) }
    attr_reader :usage

    sig { returns(Wechat) }
    attr_reader :wechat
  end
end

module Stripe
  class SourceTransaction < StripeObject
    class AchCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :customer_data

      sig { returns(String) }
      attr_reader :fingerprint

      sig { returns(String) }
      attr_reader :last4

      sig { returns(String) }
      attr_reader :routing_number
    end

    class ChfCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :reference

      sig { returns(String) }
      attr_reader :sender_address_country

      sig { returns(String) }
      attr_reader :sender_address_line1

      sig { returns(String) }
      attr_reader :sender_iban

      sig { returns(String) }
      attr_reader :sender_name
    end

    class GbpCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :fingerprint

      sig { returns(String) }
      attr_reader :funding_method

      sig { returns(String) }
      attr_reader :last4

      sig { returns(String) }
      attr_reader :reference

      sig { returns(String) }
      attr_reader :sender_account_number

      sig { returns(String) }
      attr_reader :sender_name

      sig { returns(String) }
      attr_reader :sender_sort_code
    end

    class PaperCheck < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :available_at

      sig { returns(String) }
      attr_reader :invoices
    end

    class SepaCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :reference

      sig { returns(String) }
      attr_reader :sender_iban

      sig { returns(String) }
      attr_reader :sender_name
    end

    sig { returns(AchCreditTransfer) }
    attr_reader :ach_credit_transfer

    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(ChfCreditTransfer) }
    attr_reader :chf_credit_transfer

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(GbpCreditTransfer) }
    attr_reader :gbp_credit_transfer

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(PaperCheck) }
    attr_reader :paper_check

    sig { returns(SepaCreditTransfer) }
    attr_reader :sepa_credit_transfer

    sig { returns(String) }
    attr_reader :source

    sig { returns(String) }
    attr_reader :status

    sig { returns(String) }
    attr_reader :type
  end
end

module Stripe
  class Subscription < APIResource
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T::Boolean) }
      attr_reader :enabled

      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
    end

    class BillingCycleAnchorConfig < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :day_of_month

      sig { returns(T.nilable(Integer)) }
      attr_reader :hour

      sig { returns(T.nilable(Integer)) }
      attr_reader :minute

      sig { returns(T.nilable(Integer)) }
      attr_reader :month

      sig { returns(T.nilable(Integer)) }
      attr_reader :second
    end

    class BillingThresholds < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_gte

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :reset_billing_cycle_anchor
    end

    class CancellationDetails < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :comment

      sig { returns(T.nilable(String)) }
      attr_reader :feedback

      sig { returns(T.nilable(String)) }
      attr_reader :reason
    end

    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
      attr_reader :account_tax_ids

      sig { returns(Issuer) }
      attr_reader :issuer
    end

    class PauseCollection < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :behavior

      sig { returns(T.nilable(Integer)) }
      attr_reader :resumes_at
    end

    class PaymentSettings < Stripe::StripeObject
      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :transaction_type
          end

          sig { returns(MandateOptions) }
          attr_reader :mandate_options

          sig { returns(String) }
          attr_reader :verification_method
        end

        class Bancontact < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :preferred_language
        end

        class Card < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :amount

            sig { returns(T.nilable(String)) }
            attr_reader :amount_type

            sig { returns(T.nilable(String)) }
            attr_reader :description
          end

          sig { returns(MandateOptions) }
          attr_reader :mandate_options

          sig { returns(T.nilable(String)) }
          attr_reader :network

          sig { returns(T.nilable(String)) }
          attr_reader :request_three_d_secure
        end

        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :country
            end

            sig { returns(EuBankTransfer) }
            attr_reader :eu_bank_transfer

            sig { returns(T.nilable(String)) }
            attr_reader :type
          end

          sig { returns(BankTransfer) }
          attr_reader :bank_transfer

          sig { returns(T.nilable(String)) }
          attr_reader :funding_type
        end

        class Konbini < Stripe::StripeObject
        end

        class SepaDebit < Stripe::StripeObject
        end

        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              sig { returns(T::Array[String]) }
              attr_reader :account_subcategories
            end

            sig { returns(Filters) }
            attr_reader :filters

            sig { returns(T::Array[String]) }
            attr_reader :permissions

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :prefetch
          end

          sig { returns(FinancialConnections) }
          attr_reader :financial_connections

          sig { returns(String) }
          attr_reader :verification_method
        end

        sig { returns(T.nilable(AcssDebit)) }
        attr_reader :acss_debit

        sig { returns(T.nilable(Bancontact)) }
        attr_reader :bancontact

        sig { returns(T.nilable(Card)) }
        attr_reader :card

        sig { returns(T.nilable(CustomerBalance)) }
        attr_reader :customer_balance

        sig { returns(T.nilable(Konbini)) }
        attr_reader :konbini

        sig { returns(T.nilable(SepaDebit)) }
        attr_reader :sepa_debit

        sig { returns(T.nilable(UsBankAccount)) }
        attr_reader :us_bank_account
      end

      sig { returns(T.nilable(PaymentMethodOptions)) }
      attr_reader :payment_method_options

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_method_types

      sig { returns(T.nilable(String)) }
      attr_reader :save_default_payment_method
    end

    class PendingInvoiceItemInterval < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :interval

      sig { returns(Integer) }
      attr_reader :interval_count
    end

    class PendingUpdate < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :billing_cycle_anchor

      sig { returns(Integer) }
      attr_reader :expires_at

      sig { returns(T.nilable(T::Array[Stripe::SubscriptionItem])) }
      attr_reader :subscription_items

      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :trial_from_plan
    end

    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Float)) }
      attr_reader :amount_percent

      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end

    class TrialSettings < Stripe::StripeObject
      class EndBehavior < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :missing_payment_method
      end

      sig { returns(EndBehavior) }
      attr_reader :end_behavior
    end

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T.nilable(Float)) }
    attr_reader :application_fee_percent

    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax

    sig { returns(Integer) }
    attr_reader :billing_cycle_anchor

    sig { returns(T.nilable(BillingCycleAnchorConfig)) }
    attr_reader :billing_cycle_anchor_config

    sig { returns(T.nilable(BillingThresholds)) }
    attr_reader :billing_thresholds

    sig { returns(T.nilable(Integer)) }
    attr_reader :cancel_at

    sig { returns(T::Boolean) }
    attr_reader :cancel_at_period_end

    sig { returns(T.nilable(Integer)) }
    attr_reader :canceled_at

    sig { returns(T.nilable(CancellationDetails)) }
    attr_reader :cancellation_details

    sig { returns(String) }
    attr_reader :collection_method

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(Integer) }
    attr_reader :current_period_end

    sig { returns(Integer) }
    attr_reader :current_period_start

    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    sig { returns(T.nilable(Integer)) }
    attr_reader :days_until_due

    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    attr_reader :default_payment_method

    sig { returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)))) }
    attr_reader :default_source

    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    attr_reader :default_tax_rates

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(Stripe::Discount)) }
    attr_reader :discount

    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts

    sig { returns(T.nilable(Integer)) }
    attr_reader :ended_at

    sig { returns(String) }
    attr_reader :id

    sig { returns(InvoiceSettings) }
    attr_reader :invoice_settings

    sig { returns(Stripe::ListObject) }
    attr_reader :items

    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :latest_invoice

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(T.nilable(Integer)) }
    attr_reader :next_pending_invoice_item_invoice

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    sig { returns(T.nilable(PauseCollection)) }
    attr_reader :pause_collection

    sig { returns(T.nilable(PaymentSettings)) }
    attr_reader :payment_settings

    sig { returns(T.nilable(PendingInvoiceItemInterval)) }
    attr_reader :pending_invoice_item_interval

    sig { returns(T.nilable(T.any(String, Stripe::SetupIntent))) }
    attr_reader :pending_setup_intent

    sig { returns(T.nilable(PendingUpdate)) }
    attr_reader :pending_update

    sig { returns(T.nilable(T.any(String, Stripe::SubscriptionSchedule))) }
    attr_reader :schedule

    sig { returns(Integer) }
    attr_reader :start_date

    sig { returns(String) }
    attr_reader :status

    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data

    sig { returns(T.nilable(Integer)) }
    attr_reader :trial_end

    sig { returns(T.nilable(TrialSettings)) }
    attr_reader :trial_settings

    sig { returns(T.nilable(Integer)) }
    attr_reader :trial_start
  end
end

module Stripe
  class SubscriptionItem < APIResource
    class BillingThresholds < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :usage_gte
    end

    sig { returns(T.nilable(BillingThresholds)) }
    attr_reader :billing_thresholds

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(Stripe::Plan) }
    attr_reader :plan

    sig { returns(Stripe::Price) }
    attr_reader :price

    sig { returns(Integer) }
    attr_reader :quantity

    sig { returns(String) }
    attr_reader :subscription

    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    attr_reader :tax_rates

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class SubscriptionSchedule < APIResource
    class CurrentPhase < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :end_date

      sig { returns(Integer) }
      attr_reader :start_date
    end

    class DefaultSettings < Stripe::StripeObject
      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(T.nilable(Liability)) }
        attr_reader :liability
      end

      class BillingThresholds < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_gte

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reset_billing_cycle_anchor
      end

      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :account_tax_ids

        sig { returns(T.nilable(Integer)) }
        attr_reader :days_until_due

        sig { returns(Issuer) }
        attr_reader :issuer
      end

      class TransferData < Stripe::StripeObject
        sig { returns(T.nilable(Float)) }
        attr_reader :amount_percent

        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :destination
      end

      sig { returns(T.nilable(Float)) }
      attr_reader :application_fee_percent

      sig { returns(AutomaticTax) }
      attr_reader :automatic_tax

      sig { returns(String) }
      attr_reader :billing_cycle_anchor

      sig { returns(T.nilable(BillingThresholds)) }
      attr_reader :billing_thresholds

      sig { returns(T.nilable(String)) }
      attr_reader :collection_method

      sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
      attr_reader :default_payment_method

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(InvoiceSettings) }
      attr_reader :invoice_settings

      sig { returns(T.nilable(T.any(String, Stripe::Account))) }
      attr_reader :on_behalf_of

      sig { returns(T.nilable(TransferData)) }
      attr_reader :transfer_data
    end

    class Phase < Stripe::StripeObject
      class AddInvoiceItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
          attr_reader :coupon

          sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
          attr_reader :discount

          sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
          attr_reader :promotion_code
        end

        sig { returns(T::Array[Discount]) }
        attr_reader :discounts

        sig { returns(T.any(String, Stripe::Price)) }
        attr_reader :price

        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
        attr_reader :tax_rates
      end

      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T::Boolean) }
        attr_reader :enabled

        sig { returns(T.nilable(Liability)) }
        attr_reader :liability
      end

      class BillingThresholds < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_gte

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reset_billing_cycle_anchor
      end

      class Discount < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
        attr_reader :coupon

        sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
        attr_reader :discount

        sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
        attr_reader :promotion_code
      end

      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :account_tax_ids

        sig { returns(T.nilable(Integer)) }
        attr_reader :days_until_due

        sig { returns(T.nilable(Issuer)) }
        attr_reader :issuer
      end

      class Item < Stripe::StripeObject
        class BillingThresholds < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :usage_gte
        end

        class Discount < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
          attr_reader :coupon

          sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
          attr_reader :discount

          sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
          attr_reader :promotion_code
        end

        sig { returns(T.nilable(BillingThresholds)) }
        attr_reader :billing_thresholds

        sig { returns(T::Array[Discount]) }
        attr_reader :discounts

        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata

        sig { returns(T.any(String, Stripe::Plan)) }
        attr_reader :plan

        sig { returns(T.any(String, Stripe::Price)) }
        attr_reader :price

        sig { returns(Integer) }
        attr_reader :quantity

        sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
        attr_reader :tax_rates
      end

      class TransferData < Stripe::StripeObject
        sig { returns(T.nilable(Float)) }
        attr_reader :amount_percent

        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :destination
      end

      sig { returns(T::Array[AddInvoiceItem]) }
      attr_reader :add_invoice_items

      sig { returns(T.nilable(Float)) }
      attr_reader :application_fee_percent

      sig { returns(AutomaticTax) }
      attr_reader :automatic_tax

      sig { returns(T.nilable(String)) }
      attr_reader :billing_cycle_anchor

      sig { returns(T.nilable(BillingThresholds)) }
      attr_reader :billing_thresholds

      sig { returns(T.nilable(String)) }
      attr_reader :collection_method

      sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
      attr_reader :coupon

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
      attr_reader :default_payment_method

      sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
      attr_reader :default_tax_rates

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(T::Array[Discount]) }
      attr_reader :discounts

      sig { returns(Integer) }
      attr_reader :end_date

      sig { returns(T.nilable(InvoiceSettings)) }
      attr_reader :invoice_settings

      sig { returns(T::Array[Item]) }
      attr_reader :items

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(T.nilable(T.any(String, Stripe::Account))) }
      attr_reader :on_behalf_of

      sig { returns(String) }
      attr_reader :proration_behavior

      sig { returns(Integer) }
      attr_reader :start_date

      sig { returns(T.nilable(TransferData)) }
      attr_reader :transfer_data

      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_end
    end

    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    sig { returns(T.nilable(Integer)) }
    attr_reader :canceled_at

    sig { returns(T.nilable(Integer)) }
    attr_reader :completed_at

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(CurrentPhase)) }
    attr_reader :current_phase

    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    sig { returns(DefaultSettings) }
    attr_reader :default_settings

    sig { returns(String) }
    attr_reader :end_behavior

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T::Array[Phase]) }
    attr_reader :phases

    sig { returns(T.nilable(Integer)) }
    attr_reader :released_at

    sig { returns(T.nilable(String)) }
    attr_reader :released_subscription

    sig { returns(String) }
    attr_reader :status

    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription

    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock
  end
end

module Stripe
  module Tax
    class Calculation < APIResource
      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { returns(String) }
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

        class TaxId < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type

          sig { returns(String) }
          attr_reader :value
        end

        sig { returns(T.nilable(Address)) }
        attr_reader :address

        sig { returns(T.nilable(String)) }
        attr_reader :address_source

        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { returns(T::Array[TaxId]) }
        attr_reader :tax_ids

        sig { returns(String) }
        attr_reader :taxability_override
      end

      class ShipFromDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { returns(String) }
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

        sig { returns(Address) }
        attr_reader :address
      end

      class ShippingCost < Stripe::StripeObject
        class TaxBreakdown < Stripe::StripeObject
          class Jurisdiction < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :country

            sig { returns(String) }
            attr_reader :display_name

            sig { returns(String) }
            attr_reader :level

            sig { returns(T.nilable(String)) }
            attr_reader :state
          end

          class TaxRateDetails < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :display_name

            sig { returns(String) }
            attr_reader :percentage_decimal

            sig { returns(String) }
            attr_reader :tax_type
          end

          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(Jurisdiction) }
          attr_reader :jurisdiction

          sig { returns(String) }
          attr_reader :sourcing

          sig { returns(T.nilable(TaxRateDetails)) }
          attr_reader :tax_rate_details

          sig { returns(String) }
          attr_reader :taxability_reason

          sig { returns(Integer) }
          attr_reader :taxable_amount
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(Integer) }
        attr_reader :amount_tax

        sig { returns(String) }
        attr_reader :shipping_rate

        sig { returns(String) }
        attr_reader :tax_behavior

        sig { returns(T::Array[TaxBreakdown]) }
        attr_reader :tax_breakdown

        sig { returns(String) }
        attr_reader :tax_code
      end

      class TaxBreakdown < Stripe::StripeObject
        class TaxRateDetails < Stripe::StripeObject
          class FlatAmount < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :amount

            sig { returns(String) }
            attr_reader :currency
          end

          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { returns(T.nilable(FlatAmount)) }
          attr_reader :flat_amount

          sig { returns(String) }
          attr_reader :percentage_decimal

          sig { returns(T.nilable(String)) }
          attr_reader :rate_type

          sig { returns(T.nilable(String)) }
          attr_reader :state

          sig { returns(T.nilable(String)) }
          attr_reader :tax_type
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(T::Boolean) }
        attr_reader :inclusive

        sig { returns(TaxRateDetails) }
        attr_reader :tax_rate_details

        sig { returns(String) }
        attr_reader :taxability_reason

        sig { returns(Integer) }
        attr_reader :taxable_amount
      end

      sig { returns(Integer) }
      attr_reader :amount_total

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(String)) }
      attr_reader :customer

      sig { returns(CustomerDetails) }
      attr_reader :customer_details

      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { returns(T.nilable(Stripe::ListObject)) }
      attr_reader :line_items

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(ShipFromDetails)) }
      attr_reader :ship_from_details

      sig { returns(T.nilable(ShippingCost)) }
      attr_reader :shipping_cost

      sig { returns(Integer) }
      attr_reader :tax_amount_exclusive

      sig { returns(Integer) }
      attr_reader :tax_amount_inclusive

      sig { returns(T::Array[TaxBreakdown]) }
      attr_reader :tax_breakdown

      sig { returns(Integer) }
      attr_reader :tax_date
    end
  end
end

module Stripe
  module Tax
    class CalculationLineItem < APIResource
      class TaxBreakdown < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :country

          sig { returns(String) }
          attr_reader :display_name

          sig { returns(String) }
          attr_reader :level

          sig { returns(T.nilable(String)) }
          attr_reader :state
        end

        class TaxRateDetails < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :display_name

          sig { returns(String) }
          attr_reader :percentage_decimal

          sig { returns(String) }
          attr_reader :tax_type
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(Jurisdiction) }
        attr_reader :jurisdiction

        sig { returns(String) }
        attr_reader :sourcing

        sig { returns(T.nilable(TaxRateDetails)) }
        attr_reader :tax_rate_details

        sig { returns(String) }
        attr_reader :taxability_reason

        sig { returns(Integer) }
        attr_reader :taxable_amount
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Integer) }
      attr_reader :amount_tax

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(String)) }
      attr_reader :product

      sig { returns(Integer) }
      attr_reader :quantity

      sig { returns(T.nilable(String)) }
      attr_reader :reference

      sig { returns(String) }
      attr_reader :tax_behavior

      sig { returns(T.nilable(T::Array[TaxBreakdown])) }
      attr_reader :tax_breakdown

      sig { returns(String) }
      attr_reader :tax_code
    end
  end
end

module Stripe
  module Tax
    class Registration < APIResource
      class CountryOptions < Stripe::StripeObject
        class Ae < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class At < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Au < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Be < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Bg < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Bh < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class By < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Ca < Stripe::StripeObject
          class ProvinceStandard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :province
          end

          sig { returns(ProvinceStandard) }
          attr_reader :province_standard

          sig { returns(String) }
          attr_reader :type
        end

        class Ch < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Cl < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Co < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Cr < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Cy < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Cz < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class De < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Dk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Ec < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Ee < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Eg < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Es < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Fi < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Fr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Gb < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Ge < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Gr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Hr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Hu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Id < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Ie < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Is < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class It < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Jp < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Ke < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Kr < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Kz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Lt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Lu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Lv < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Ma < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Md < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Mt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Mx < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class My < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Ng < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Nl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class No < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Nz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Om < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Pl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Pt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Ro < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Rs < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Ru < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Sa < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Se < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Sg < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Si < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Sk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end

          sig { returns(Standard) }
          attr_reader :standard

          sig { returns(String) }
          attr_reader :type
        end

        class Th < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Tr < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Tz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Us < Stripe::StripeObject
          class LocalAmusementTax < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :jurisdiction
          end

          class LocalLeaseTax < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :jurisdiction
          end

          class StateSalesTax < Stripe::StripeObject
            class Election < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :jurisdiction

              sig { returns(String) }
              attr_reader :type
            end

            sig { returns(T::Array[Election]) }
            attr_reader :elections
          end

          sig { returns(LocalAmusementTax) }
          attr_reader :local_amusement_tax

          sig { returns(LocalLeaseTax) }
          attr_reader :local_lease_tax

          sig { returns(String) }
          attr_reader :state

          sig { returns(StateSalesTax) }
          attr_reader :state_sales_tax

          sig { returns(String) }
          attr_reader :type
        end

        class Uz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Vn < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        class Za < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(Ae) }
        attr_reader :ae

        sig { returns(At) }
        attr_reader :at

        sig { returns(Au) }
        attr_reader :au

        sig { returns(Be) }
        attr_reader :be

        sig { returns(Bg) }
        attr_reader :bg

        sig { returns(Bh) }
        attr_reader :bh

        sig { returns(By) }
        attr_reader :by

        sig { returns(Ca) }
        attr_reader :ca

        sig { returns(Ch) }
        attr_reader :ch

        sig { returns(Cl) }
        attr_reader :cl

        sig { returns(Co) }
        attr_reader :co

        sig { returns(Cr) }
        attr_reader :cr

        sig { returns(Cy) }
        attr_reader :cy

        sig { returns(Cz) }
        attr_reader :cz

        sig { returns(De) }
        attr_reader :de

        sig { returns(Dk) }
        attr_reader :dk

        sig { returns(Ec) }
        attr_reader :ec

        sig { returns(Ee) }
        attr_reader :ee

        sig { returns(Eg) }
        attr_reader :eg

        sig { returns(Es) }
        attr_reader :es

        sig { returns(Fi) }
        attr_reader :fi

        sig { returns(Fr) }
        attr_reader :fr

        sig { returns(Gb) }
        attr_reader :gb

        sig { returns(Ge) }
        attr_reader :ge

        sig { returns(Gr) }
        attr_reader :gr

        sig { returns(Hr) }
        attr_reader :hr

        sig { returns(Hu) }
        attr_reader :hu

        sig { returns(Id) }
        attr_reader :id

        sig { returns(Ie) }
        attr_reader :ie

        sig { returns(Is) }
        attr_reader :is

        sig { returns(It) }
        attr_reader :it

        sig { returns(Jp) }
        attr_reader :jp

        sig { returns(Ke) }
        attr_reader :ke

        sig { returns(Kr) }
        attr_reader :kr

        sig { returns(Kz) }
        attr_reader :kz

        sig { returns(Lt) }
        attr_reader :lt

        sig { returns(Lu) }
        attr_reader :lu

        sig { returns(Lv) }
        attr_reader :lv

        sig { returns(Ma) }
        attr_reader :ma

        sig { returns(Md) }
        attr_reader :md

        sig { returns(Mt) }
        attr_reader :mt

        sig { returns(Mx) }
        attr_reader :mx

        sig { returns(My) }
        attr_reader :my

        sig { returns(Ng) }
        attr_reader :ng

        sig { returns(Nl) }
        attr_reader :nl

        sig { returns(No) }
        attr_reader :no

        sig { returns(Nz) }
        attr_reader :nz

        sig { returns(Om) }
        attr_reader :om

        sig { returns(Pl) }
        attr_reader :pl

        sig { returns(Pt) }
        attr_reader :pt

        sig { returns(Ro) }
        attr_reader :ro

        sig { returns(Rs) }
        attr_reader :rs

        sig { returns(Ru) }
        attr_reader :ru

        sig { returns(Sa) }
        attr_reader :sa

        sig { returns(Se) }
        attr_reader :se

        sig { returns(Sg) }
        attr_reader :sg

        sig { returns(Si) }
        attr_reader :si

        sig { returns(Sk) }
        attr_reader :sk

        sig { returns(Th) }
        attr_reader :th

        sig { returns(Tr) }
        attr_reader :tr

        sig { returns(Tz) }
        attr_reader :tz

        sig { returns(Us) }
        attr_reader :us

        sig { returns(Uz) }
        attr_reader :uz

        sig { returns(Vn) }
        attr_reader :vn

        sig { returns(Za) }
        attr_reader :za
      end

      sig { returns(Integer) }
      attr_reader :active_from

      sig { returns(String) }
      attr_reader :country

      sig { returns(CountryOptions) }
      attr_reader :country_options

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status
    end
  end
end

module Stripe
  module Tax
    class Settings < SingletonAPIResource
      class Defaults < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :tax_behavior

        sig { returns(T.nilable(String)) }
        attr_reader :tax_code
      end

      class HeadOffice < Stripe::StripeObject
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

        sig { returns(Address) }
        attr_reader :address
      end

      class StatusDetails < Stripe::StripeObject
        class Active < Stripe::StripeObject
        end

        class Pending < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :missing_fields
        end

        sig { returns(Active) }
        attr_reader :active

        sig { returns(Pending) }
        attr_reader :pending
      end

      sig { returns(Defaults) }
      attr_reader :defaults

      sig { returns(T.nilable(HeadOffice)) }
      attr_reader :head_office

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
  end
end

module Stripe
  module Tax
    class Transaction < APIResource
      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { returns(String) }
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

        class TaxId < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type

          sig { returns(String) }
          attr_reader :value
        end

        sig { returns(T.nilable(Address)) }
        attr_reader :address

        sig { returns(T.nilable(String)) }
        attr_reader :address_source

        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { returns(T::Array[TaxId]) }
        attr_reader :tax_ids

        sig { returns(String) }
        attr_reader :taxability_override
      end

      class Reversal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :original_transaction
      end

      class ShipFromDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { returns(String) }
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

        sig { returns(Address) }
        attr_reader :address
      end

      class ShippingCost < Stripe::StripeObject
        class TaxBreakdown < Stripe::StripeObject
          class Jurisdiction < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :country

            sig { returns(String) }
            attr_reader :display_name

            sig { returns(String) }
            attr_reader :level

            sig { returns(T.nilable(String)) }
            attr_reader :state
          end

          class TaxRateDetails < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :display_name

            sig { returns(String) }
            attr_reader :percentage_decimal

            sig { returns(String) }
            attr_reader :tax_type
          end

          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(Jurisdiction) }
          attr_reader :jurisdiction

          sig { returns(String) }
          attr_reader :sourcing

          sig { returns(T.nilable(TaxRateDetails)) }
          attr_reader :tax_rate_details

          sig { returns(String) }
          attr_reader :taxability_reason

          sig { returns(Integer) }
          attr_reader :taxable_amount
        end

        sig { returns(Integer) }
        attr_reader :amount

        sig { returns(Integer) }
        attr_reader :amount_tax

        sig { returns(String) }
        attr_reader :shipping_rate

        sig { returns(String) }
        attr_reader :tax_behavior

        sig { returns(T::Array[TaxBreakdown]) }
        attr_reader :tax_breakdown

        sig { returns(String) }
        attr_reader :tax_code
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(String)) }
      attr_reader :customer

      sig { returns(CustomerDetails) }
      attr_reader :customer_details

      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(Stripe::ListObject)) }
      attr_reader :line_items

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(Integer) }
      attr_reader :posted_at

      sig { returns(String) }
      attr_reader :reference

      sig { returns(T.nilable(Reversal)) }
      attr_reader :reversal

      sig { returns(T.nilable(ShipFromDetails)) }
      attr_reader :ship_from_details

      sig { returns(T.nilable(ShippingCost)) }
      attr_reader :shipping_cost

      sig { returns(Integer) }
      attr_reader :tax_date

      sig { returns(String) }
      attr_reader :type
    end
  end
end

module Stripe
  module Tax
    class TransactionLineItem < APIResource
      class Reversal < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :original_line_item
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Integer) }
      attr_reader :amount_tax

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(String)) }
      attr_reader :product

      sig { returns(Integer) }
      attr_reader :quantity

      sig { returns(String) }
      attr_reader :reference

      sig { returns(T.nilable(Reversal)) }
      attr_reader :reversal

      sig { returns(String) }
      attr_reader :tax_behavior

      sig { returns(String) }
      attr_reader :tax_code

      sig { returns(String) }
      attr_reader :type
    end
  end
end

module Stripe
  class TaxCode < APIResource
    sig { returns(String) }
    attr_reader :description

    sig { returns(String) }
    attr_reader :id

    sig { returns(String) }
    attr_reader :name

    sig { returns(String) }
    attr_reader :object
  end
end

module Stripe
  class TaxId < APIResource
    class Owner < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :account

      sig { returns(T.any(String, Stripe::Application)) }
      attr_reader :application

      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer

      sig { returns(String) }
      attr_reader :type
    end

    class Verification < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :status

      sig { returns(T.nilable(String)) }
      attr_reader :verified_address

      sig { returns(T.nilable(String)) }
      attr_reader :verified_name
    end

    sig { returns(T.nilable(String)) }
    attr_reader :country

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(Owner)) }
    attr_reader :owner

    sig { returns(String) }
    attr_reader :type

    sig { returns(String) }
    attr_reader :value

    sig { returns(T.nilable(Verification)) }
    attr_reader :verification

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end

module Stripe
  class TaxRate < APIResource
    class FlatAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(String) }
      attr_reader :currency
    end

    sig { returns(T::Boolean) }
    attr_reader :active

    sig { returns(T.nilable(String)) }
    attr_reader :country

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(String) }
    attr_reader :display_name

    sig { returns(T.nilable(Float)) }
    attr_reader :effective_percentage

    sig { returns(T.nilable(FlatAmount)) }
    attr_reader :flat_amount

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :inclusive

    sig { returns(T.nilable(String)) }
    attr_reader :jurisdiction

    sig { returns(T.nilable(String)) }
    attr_reader :jurisdiction_level

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(Float) }
    attr_reader :percentage

    sig { returns(T.nilable(String)) }
    attr_reader :rate_type

    sig { returns(T.nilable(String)) }
    attr_reader :state

    sig { returns(T.nilable(String)) }
    attr_reader :tax_type
  end
end

module Stripe
  module Terminal
    class Configuration < APIResource
      class BbposWiseposE < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end

      class Offline < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled
      end

      class RebootWindow < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :end_hour

        sig { returns(Integer) }
        attr_reader :start_hour
      end

      class StripeS700 < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end

      class Tipping < Stripe::StripeObject
        class Aud < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Cad < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Chf < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Czk < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Dkk < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Eur < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Gbp < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Hkd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Myr < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Nok < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Nzd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Pln < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Sek < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Sgd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        class Usd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages

          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end

        sig { returns(Aud) }
        attr_reader :aud

        sig { returns(Cad) }
        attr_reader :cad

        sig { returns(Chf) }
        attr_reader :chf

        sig { returns(Czk) }
        attr_reader :czk

        sig { returns(Dkk) }
        attr_reader :dkk

        sig { returns(Eur) }
        attr_reader :eur

        sig { returns(Gbp) }
        attr_reader :gbp

        sig { returns(Hkd) }
        attr_reader :hkd

        sig { returns(Myr) }
        attr_reader :myr

        sig { returns(Nok) }
        attr_reader :nok

        sig { returns(Nzd) }
        attr_reader :nzd

        sig { returns(Pln) }
        attr_reader :pln

        sig { returns(Sek) }
        attr_reader :sek

        sig { returns(Sgd) }
        attr_reader :sgd

        sig { returns(Usd) }
        attr_reader :usd
      end

      class VerifoneP400 < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end

      sig { returns(BbposWiseposE) }
      attr_reader :bbpos_wisepos_e

      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_account_default

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(Offline) }
      attr_reader :offline

      sig { returns(RebootWindow) }
      attr_reader :reboot_window

      sig { returns(StripeS700) }
      attr_reader :stripe_s700

      sig { returns(Tipping) }
      attr_reader :tipping

      sig { returns(VerifoneP400) }
      attr_reader :verifone_p400

      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end

module Stripe
  module Terminal
    class ConnectionToken < APIResource
      sig { returns(String) }
      attr_reader :location

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :secret
    end
  end
end

module Stripe
  module Terminal
    class Location < APIResource
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

      sig { returns(Address) }
      attr_reader :address

      sig { returns(String) }
      attr_reader :configuration_overrides

      sig { returns(String) }
      attr_reader :display_name

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end

module Stripe
  module Terminal
    class Reader < APIResource
      class Action < Stripe::StripeObject
        class ProcessPaymentIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount_eligible
            end

            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation

            sig { returns(T::Boolean) }
            attr_reader :skip_tipping

            sig { returns(Tipping) }
            attr_reader :tipping
          end

          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent

          sig { returns(ProcessConfig) }
          attr_reader :process_config
        end

        class ProcessSetupIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
          end

          sig { returns(String) }
          attr_reader :generated_card

          sig { returns(ProcessConfig) }
          attr_reader :process_config

          sig { returns(T.any(String, Stripe::SetupIntent)) }
          attr_reader :setup_intent
        end

        class RefundPayment < Stripe::StripeObject
          class RefundPaymentConfig < Stripe::StripeObject
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
          end

          sig { returns(Integer) }
          attr_reader :amount

          sig { returns(T.any(String, Stripe::Charge)) }
          attr_reader :charge

          sig { returns(T::Hash[String, String]) }
          attr_reader :metadata

          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent

          sig { returns(String) }
          attr_reader :reason

          sig { returns(T.any(String, Stripe::Refund)) }
          attr_reader :refund

          sig { returns(T::Boolean) }
          attr_reader :refund_application_fee

          sig { returns(RefundPaymentConfig) }
          attr_reader :refund_payment_config

          sig { returns(T::Boolean) }
          attr_reader :reverse_transfer
        end

        class SetReaderDisplay < Stripe::StripeObject
          class Cart < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount

              sig { returns(String) }
              attr_reader :description

              sig { returns(Integer) }
              attr_reader :quantity
            end

            sig { returns(String) }
            attr_reader :currency

            sig { returns(T::Array[LineItem]) }
            attr_reader :line_items

            sig { returns(T.nilable(Integer)) }
            attr_reader :tax

            sig { returns(Integer) }
            attr_reader :total
          end

          sig { returns(T.nilable(Cart)) }
          attr_reader :cart

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(String)) }
        attr_reader :failure_code

        sig { returns(T.nilable(String)) }
        attr_reader :failure_message

        sig { returns(ProcessPaymentIntent) }
        attr_reader :process_payment_intent

        sig { returns(ProcessSetupIntent) }
        attr_reader :process_setup_intent

        sig { returns(RefundPayment) }
        attr_reader :refund_payment

        sig { returns(SetReaderDisplay) }
        attr_reader :set_reader_display

        sig { returns(String) }
        attr_reader :status

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(T.nilable(Action)) }
      attr_reader :action

      sig { returns(T.nilable(String)) }
      attr_reader :device_sw_version

      sig { returns(String) }
      attr_reader :device_type

      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(String)) }
      attr_reader :ip_address

      sig { returns(String) }
      attr_reader :label

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(T.any(String, Stripe::Terminal::Location))) }
      attr_reader :location

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :serial_number

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end

module Stripe
  module TestHelpers
    class TestClock < APIResource
      class StatusDetails < Stripe::StripeObject
        class Advancing < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :target_frozen_time
        end

        sig { returns(Advancing) }
        attr_reader :advancing
      end

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(Integer) }
      attr_reader :deletes_after

      sig { returns(Integer) }
      attr_reader :frozen_time

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details

      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end

module Stripe
  class Token < APIResource
    sig { returns(Stripe::BankAccount) }
    attr_reader :bank_account

    sig { returns(Stripe::Card) }
    attr_reader :card

    sig { returns(T.nilable(String)) }
    attr_reader :client_ip

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :type

    sig { returns(T::Boolean) }
    attr_reader :used
  end
end

module Stripe
  class Topup < APIResource
    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(Integer)) }
    attr_reader :expected_availability_date

    sig { returns(T.nilable(String)) }
    attr_reader :failure_code

    sig { returns(T.nilable(String)) }
    attr_reader :failure_message

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(T.nilable(Stripe::Source)) }
    attr_reader :source

    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    sig { returns(String) }
    attr_reader :status

    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
  end
end

module Stripe
  class Transfer < APIResource
    sig { returns(Integer) }
    attr_reader :amount

    sig { returns(Integer) }
    attr_reader :amount_reversed

    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(String) }
    attr_reader :currency

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :destination

    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :destination_payment

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(Stripe::ListObject) }
    attr_reader :reversals

    sig { returns(T::Boolean) }
    attr_reader :reversed

    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :source_transaction

    sig { returns(String) }
    attr_reader :source_type

    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
  end
end

module Stripe
  module Treasury
    class CreditReversal < APIResource
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(String) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :network

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :received_credit

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end

module Stripe
  module Treasury
    class DebitReversal < APIResource
      class LinkedFlows < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_dispute
      end

      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :completed_at
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      sig { returns(String) }
      attr_reader :id

      sig { returns(T.nilable(LinkedFlows)) }
      attr_reader :linked_flows

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :network

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :received_debit

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end

module Stripe
  module Treasury
    class FinancialAccount < APIResource
      class Balance < Stripe::StripeObject
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :cash

        sig { returns(T::Hash[String, Integer]) }
        attr_reader :inbound_pending

        sig { returns(T::Hash[String, Integer]) }
        attr_reader :outbound_pending
      end

      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_holder_name

          sig { returns(T.nilable(String)) }
          attr_reader :account_number

          sig { returns(String) }
          attr_reader :account_number_last4

          sig { returns(String) }
          attr_reader :bank_name

          sig { returns(String) }
          attr_reader :routing_number
        end

        sig { returns(Aba) }
        attr_reader :aba

        sig { returns(T::Array[String]) }
        attr_reader :supported_networks

        sig { returns(String) }
        attr_reader :type
      end

      class PlatformRestrictions < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :inbound_flows

        sig { returns(T.nilable(String)) }
        attr_reader :outbound_flows
      end

      class StatusDetails < Stripe::StripeObject
        class Closed < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end

        sig { returns(T.nilable(Closed)) }
        attr_reader :closed
      end

      sig { returns(T::Array[String]) }
      attr_reader :active_features

      sig { returns(Balance) }
      attr_reader :balance

      sig { returns(String) }
      attr_reader :country

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(Stripe::Treasury::FinancialAccountFeatures) }
      attr_reader :features

      sig { returns(T::Array[FinancialAddress]) }
      attr_reader :financial_addresses

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(T::Array[String]) }
      attr_reader :pending_features

      sig { returns(T.nilable(PlatformRestrictions)) }
      attr_reader :platform_restrictions

      sig { returns(T::Array[String]) }
      attr_reader :restricted_features

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusDetails) }
      attr_reader :status_details

      sig { returns(T::Array[String]) }
      attr_reader :supported_currencies
    end
  end
end

module Stripe
  module Treasury
    class FinancialAccountFeatures < APIResource
      class CardIssuing < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :resolution

          sig { returns(String) }
          attr_reader :restriction
        end

        sig { returns(T::Boolean) }
        attr_reader :requested

        sig { returns(String) }
        attr_reader :status

        sig { returns(T::Array[StatusDetail]) }
        attr_reader :status_details
      end

      class DepositInsurance < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :resolution

          sig { returns(String) }
          attr_reader :restriction
        end

        sig { returns(T::Boolean) }
        attr_reader :requested

        sig { returns(String) }
        attr_reader :status

        sig { returns(T::Array[StatusDetail]) }
        attr_reader :status_details
      end

      class FinancialAddresses < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code

            sig { returns(T.nilable(String)) }
            attr_reader :resolution

            sig { returns(String) }
            attr_reader :restriction
          end

          sig { returns(T::Boolean) }
          attr_reader :requested

          sig { returns(String) }
          attr_reader :status

          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end

        sig { returns(Aba) }
        attr_reader :aba
      end

      class InboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code

            sig { returns(T.nilable(String)) }
            attr_reader :resolution

            sig { returns(String) }
            attr_reader :restriction
          end

          sig { returns(T::Boolean) }
          attr_reader :requested

          sig { returns(String) }
          attr_reader :status

          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end

        sig { returns(Ach) }
        attr_reader :ach
      end

      class IntraStripeFlows < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :code

          sig { returns(T.nilable(String)) }
          attr_reader :resolution

          sig { returns(String) }
          attr_reader :restriction
        end

        sig { returns(T::Boolean) }
        attr_reader :requested

        sig { returns(String) }
        attr_reader :status

        sig { returns(T::Array[StatusDetail]) }
        attr_reader :status_details
      end

      class OutboundPayments < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code

            sig { returns(T.nilable(String)) }
            attr_reader :resolution

            sig { returns(String) }
            attr_reader :restriction
          end

          sig { returns(T::Boolean) }
          attr_reader :requested

          sig { returns(String) }
          attr_reader :status

          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end

        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code

            sig { returns(T.nilable(String)) }
            attr_reader :resolution

            sig { returns(String) }
            attr_reader :restriction
          end

          sig { returns(T::Boolean) }
          attr_reader :requested

          sig { returns(String) }
          attr_reader :status

          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end

        sig { returns(Ach) }
        attr_reader :ach

        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end

      class OutboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code

            sig { returns(T.nilable(String)) }
            attr_reader :resolution

            sig { returns(String) }
            attr_reader :restriction
          end

          sig { returns(T::Boolean) }
          attr_reader :requested

          sig { returns(String) }
          attr_reader :status

          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end

        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code

            sig { returns(T.nilable(String)) }
            attr_reader :resolution

            sig { returns(String) }
            attr_reader :restriction
          end

          sig { returns(T::Boolean) }
          attr_reader :requested

          sig { returns(String) }
          attr_reader :status

          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end

        sig { returns(Ach) }
        attr_reader :ach

        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end

      sig { returns(CardIssuing) }
      attr_reader :card_issuing

      sig { returns(DepositInsurance) }
      attr_reader :deposit_insurance

      sig { returns(FinancialAddresses) }
      attr_reader :financial_addresses

      sig { returns(InboundTransfers) }
      attr_reader :inbound_transfers

      sig { returns(IntraStripeFlows) }
      attr_reader :intra_stripe_flows

      sig { returns(String) }
      attr_reader :object

      sig { returns(OutboundPayments) }
      attr_reader :outbound_payments

      sig { returns(OutboundTransfers) }
      attr_reader :outbound_transfers
    end
  end
end

module Stripe
  module Treasury
    class InboundTransfer < APIResource
      class FailureDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
      end

      class LinkedFlows < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :received_debit
      end

      class OriginPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
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

          sig { returns(Address) }
          attr_reader :address

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { returns(T.nilable(String)) }
          attr_reader :name
        end

        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type

          sig { returns(T.nilable(String)) }
          attr_reader :account_type

          sig { returns(T.nilable(String)) }
          attr_reader :bank_name

          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint

          sig { returns(T.nilable(String)) }
          attr_reader :last4

          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate

          sig { returns(String) }
          attr_reader :network

          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end

        sig { returns(BillingDetails) }
        attr_reader :billing_details

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end

      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :succeeded_at
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T::Boolean) }
      attr_reader :cancelable

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(T.nilable(FailureDetails)) }
      attr_reader :failure_details

      sig { returns(String) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      sig { returns(String) }
      attr_reader :id

      sig { returns(LinkedFlows) }
      attr_reader :linked_flows

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :origin_payment_method

      sig { returns(T.nilable(OriginPaymentMethodDetails)) }
      attr_reader :origin_payment_method_details

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :returned

      sig { returns(String) }
      attr_reader :statement_descriptor

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end

module Stripe
  module Treasury
    class OutboundPayment < APIResource
      class DestinationPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
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

          sig { returns(Address) }
          attr_reader :address

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { returns(T.nilable(String)) }
          attr_reader :name
        end

        class FinancialAccount < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :id

          sig { returns(String) }
          attr_reader :network
        end

        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type

          sig { returns(T.nilable(String)) }
          attr_reader :account_type

          sig { returns(T.nilable(String)) }
          attr_reader :bank_name

          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint

          sig { returns(T.nilable(String)) }
          attr_reader :last4

          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate

          sig { returns(String) }
          attr_reader :network

          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end

        sig { returns(BillingDetails) }
        attr_reader :billing_details

        sig { returns(FinancialAccount) }
        attr_reader :financial_account

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end

      class EndUserDetails < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { returns(T::Boolean) }
        attr_reader :present
      end

      class ReturnedDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code

        sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
        attr_reader :transaction
      end

      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :returned_at
      end

      class TrackingDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :trace_id
        end

        class UsDomesticWire < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :chips

          sig { returns(T.nilable(String)) }
          attr_reader :imad

          sig { returns(T.nilable(String)) }
          attr_reader :omad
        end

        sig { returns(Ach) }
        attr_reader :ach

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T::Boolean) }
      attr_reader :cancelable

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(String)) }
      attr_reader :customer

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(T.nilable(String)) }
      attr_reader :destination_payment_method

      sig { returns(T.nilable(DestinationPaymentMethodDetails)) }
      attr_reader :destination_payment_method_details

      sig { returns(T.nilable(EndUserDetails)) }
      attr_reader :end_user_details

      sig { returns(Integer) }
      attr_reader :expected_arrival_date

      sig { returns(String) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(ReturnedDetails)) }
      attr_reader :returned_details

      sig { returns(String) }
      attr_reader :statement_descriptor

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      sig { returns(T.nilable(TrackingDetails)) }
      attr_reader :tracking_details

      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
      attr_reader :transaction
    end
  end
end

module Stripe
  module Treasury
    class OutboundTransfer < APIResource
      class DestinationPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
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

          sig { returns(Address) }
          attr_reader :address

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { returns(T.nilable(String)) }
          attr_reader :name
        end

        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type

          sig { returns(T.nilable(String)) }
          attr_reader :account_type

          sig { returns(T.nilable(String)) }
          attr_reader :bank_name

          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint

          sig { returns(T.nilable(String)) }
          attr_reader :last4

          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate

          sig { returns(String) }
          attr_reader :network

          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end

        sig { returns(BillingDetails) }
        attr_reader :billing_details

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end

      class ReturnedDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code

        sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
        attr_reader :transaction
      end

      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :returned_at
      end

      class TrackingDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :trace_id
        end

        class UsDomesticWire < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :chips

          sig { returns(T.nilable(String)) }
          attr_reader :imad

          sig { returns(T.nilable(String)) }
          attr_reader :omad
        end

        sig { returns(Ach) }
        attr_reader :ach

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(T::Boolean) }
      attr_reader :cancelable

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { returns(T.nilable(String)) }
      attr_reader :destination_payment_method

      sig { returns(DestinationPaymentMethodDetails) }
      attr_reader :destination_payment_method_details

      sig { returns(Integer) }
      attr_reader :expected_arrival_date

      sig { returns(String) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(ReturnedDetails)) }
      attr_reader :returned_details

      sig { returns(String) }
      attr_reader :statement_descriptor

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      sig { returns(T.nilable(TrackingDetails)) }
      attr_reader :tracking_details

      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
      attr_reader :transaction
    end
  end
end

module Stripe
  module Treasury
    class ReceivedCredit < APIResource
      class InitiatingPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
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

          sig { returns(Address) }
          attr_reader :address

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { returns(T.nilable(String)) }
          attr_reader :name
        end

        class FinancialAccount < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :id

          sig { returns(String) }
          attr_reader :network
        end

        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name

          sig { returns(T.nilable(String)) }
          attr_reader :last4

          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end

        sig { returns(String) }
        attr_reader :balance

        sig { returns(BillingDetails) }
        attr_reader :billing_details

        sig { returns(FinancialAccount) }
        attr_reader :financial_account

        sig { returns(String) }
        attr_reader :issuing_card

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end

      class LinkedFlows < Stripe::StripeObject
        class SourceFlowDetails < Stripe::StripeObject
          sig { returns(Stripe::Treasury::CreditReversal) }
          attr_reader :credit_reversal

          sig { returns(Stripe::Treasury::OutboundPayment) }
          attr_reader :outbound_payment

          sig { returns(Stripe::Payout) }
          attr_reader :payout

          sig { returns(String) }
          attr_reader :type
        end

        sig { returns(T.nilable(String)) }
        attr_reader :credit_reversal

        sig { returns(T.nilable(String)) }
        attr_reader :issuing_authorization

        sig { returns(T.nilable(String)) }
        attr_reader :issuing_transaction

        sig { returns(T.nilable(String)) }
        attr_reader :source_flow

        sig { returns(T.nilable(SourceFlowDetails)) }
        attr_reader :source_flow_details

        sig { returns(T.nilable(String)) }
        attr_reader :source_flow_type
      end

      class ReversalDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :deadline

        sig { returns(T.nilable(String)) }
        attr_reader :restricted_reason
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(String) }
      attr_reader :description

      sig { returns(T.nilable(String)) }
      attr_reader :failure_code

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      sig { returns(String) }
      attr_reader :id

      sig { returns(InitiatingPaymentMethodDetails) }
      attr_reader :initiating_payment_method_details

      sig { returns(LinkedFlows) }
      attr_reader :linked_flows

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :network

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(ReversalDetails)) }
      attr_reader :reversal_details

      sig { returns(String) }
      attr_reader :status

      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end

module Stripe
  module Treasury
    class ReceivedDebit < APIResource
      class InitiatingPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
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

          sig { returns(Address) }
          attr_reader :address

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { returns(T.nilable(String)) }
          attr_reader :name
        end

        class FinancialAccount < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :id

          sig { returns(String) }
          attr_reader :network
        end

        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name

          sig { returns(T.nilable(String)) }
          attr_reader :last4

          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end

        sig { returns(String) }
        attr_reader :balance

        sig { returns(BillingDetails) }
        attr_reader :billing_details

        sig { returns(FinancialAccount) }
        attr_reader :financial_account

        sig { returns(String) }
        attr_reader :issuing_card

        sig { returns(String) }
        attr_reader :type

        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end

      class LinkedFlows < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :debit_reversal

        sig { returns(T.nilable(String)) }
        attr_reader :inbound_transfer

        sig { returns(T.nilable(String)) }
        attr_reader :issuing_authorization

        sig { returns(T.nilable(String)) }
        attr_reader :issuing_transaction

        sig { returns(T.nilable(String)) }
        attr_reader :payout
      end

      class ReversalDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :deadline

        sig { returns(T.nilable(String)) }
        attr_reader :restricted_reason
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(String) }
      attr_reader :description

      sig { returns(T.nilable(String)) }
      attr_reader :failure_code

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      sig { returns(String) }
      attr_reader :id

      sig { returns(InitiatingPaymentMethodDetails) }
      attr_reader :initiating_payment_method_details

      sig { returns(LinkedFlows) }
      attr_reader :linked_flows

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :network

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(ReversalDetails)) }
      attr_reader :reversal_details

      sig { returns(String) }
      attr_reader :status

      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end

module Stripe
  module Treasury
    class Transaction < APIResource
      class BalanceImpact < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :cash

        sig { returns(Integer) }
        attr_reader :inbound_pending

        sig { returns(Integer) }
        attr_reader :outbound_pending
      end

      class FlowDetails < Stripe::StripeObject
        sig { returns(Stripe::Treasury::CreditReversal) }
        attr_reader :credit_reversal

        sig { returns(Stripe::Treasury::DebitReversal) }
        attr_reader :debit_reversal

        sig { returns(Stripe::Treasury::InboundTransfer) }
        attr_reader :inbound_transfer

        sig { returns(Stripe::Issuing::Authorization) }
        attr_reader :issuing_authorization

        sig { returns(Stripe::Treasury::OutboundPayment) }
        attr_reader :outbound_payment

        sig { returns(Stripe::Treasury::OutboundTransfer) }
        attr_reader :outbound_transfer

        sig { returns(Stripe::Treasury::ReceivedCredit) }
        attr_reader :received_credit

        sig { returns(Stripe::Treasury::ReceivedDebit) }
        attr_reader :received_debit

        sig { returns(String) }
        attr_reader :type
      end

      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :void_at
      end

      sig { returns(Integer) }
      attr_reader :amount

      sig { returns(BalanceImpact) }
      attr_reader :balance_impact

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(String) }
      attr_reader :description

      sig { returns(T.nilable(Stripe::ListObject)) }
      attr_reader :entries

      sig { returns(String) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :flow

      sig { returns(T.nilable(FlowDetails)) }
      attr_reader :flow_details

      sig { returns(String) }
      attr_reader :flow_type

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(String) }
      attr_reader :status

      sig { returns(StatusTransitions) }
      attr_reader :status_transitions
    end
  end
end

module Stripe
  module Treasury
    class TransactionEntry < APIResource
      class BalanceImpact < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :cash

        sig { returns(Integer) }
        attr_reader :inbound_pending

        sig { returns(Integer) }
        attr_reader :outbound_pending
      end

      class FlowDetails < Stripe::StripeObject
        sig { returns(Stripe::Treasury::CreditReversal) }
        attr_reader :credit_reversal

        sig { returns(Stripe::Treasury::DebitReversal) }
        attr_reader :debit_reversal

        sig { returns(Stripe::Treasury::InboundTransfer) }
        attr_reader :inbound_transfer

        sig { returns(Stripe::Issuing::Authorization) }
        attr_reader :issuing_authorization

        sig { returns(Stripe::Treasury::OutboundPayment) }
        attr_reader :outbound_payment

        sig { returns(Stripe::Treasury::OutboundTransfer) }
        attr_reader :outbound_transfer

        sig { returns(Stripe::Treasury::ReceivedCredit) }
        attr_reader :received_credit

        sig { returns(Stripe::Treasury::ReceivedDebit) }
        attr_reader :received_debit

        sig { returns(String) }
        attr_reader :type
      end

      sig { returns(BalanceImpact) }
      attr_reader :balance_impact

      sig { returns(Integer) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :currency

      sig { returns(Integer) }
      attr_reader :effective_at

      sig { returns(String) }
      attr_reader :financial_account

      sig { returns(T.nilable(String)) }
      attr_reader :flow

      sig { returns(T.nilable(FlowDetails)) }
      attr_reader :flow_details

      sig { returns(String) }
      attr_reader :flow_type

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
      attr_reader :transaction

      sig { returns(String) }
      attr_reader :type
    end
  end
end

module Stripe
  class UsageRecord < APIResource
    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(Integer) }
    attr_reader :quantity

    sig { returns(String) }
    attr_reader :subscription_item

    sig { returns(Integer) }
    attr_reader :timestamp
  end
end

module Stripe
  class UsageRecordSummary < StripeObject
    class Period < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :end

      sig { returns(T.nilable(Integer)) }
      attr_reader :start
    end

    sig { returns(String) }
    attr_reader :id

    sig { returns(T.nilable(String)) }
    attr_reader :invoice

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(String) }
    attr_reader :object

    sig { returns(Period) }
    attr_reader :period

    sig { returns(String) }
    attr_reader :subscription_item

    sig { returns(Integer) }
    attr_reader :total_usage
  end
end

module Stripe
  module V2
    class Amount
      sig { returns(Integer) }
      attr_reader :value

      sig { returns(String) }
      attr_reader :currency
    end
  end
end

module Stripe
  module V2
    module Billing
      class MeterEvent < APIResource
        sig { returns(String) }
        attr_reader :created

        sig { returns(String) }
        attr_reader :event_name

        sig { returns(String) }
        attr_reader :identifier

        sig { returns(T::Boolean) }
        attr_reader :livemode

        sig { returns(String) }
        attr_reader :object

        sig { returns(T::Hash[String, String]) }
        attr_reader :payload

        sig { returns(String) }
        attr_reader :timestamp
      end
    end
  end
end

module Stripe
  module V2
    module Billing
      class MeterEventAdjustment < APIResource
        class Cancel < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :identifier
        end

        sig { returns(Cancel) }
        attr_reader :cancel

        sig { returns(String) }
        attr_reader :created

        sig { returns(String) }
        attr_reader :event_name

        sig { returns(String) }
        attr_reader :id

        sig { returns(T::Boolean) }
        attr_reader :livemode

        sig { returns(String) }
        attr_reader :object

        sig { returns(String) }
        attr_reader :status

        sig { returns(String) }
        attr_reader :type
      end
    end
  end
end

module Stripe
  module V2
    module Billing
      class MeterEventSession < APIResource
        sig { returns(String) }
        attr_reader :authentication_token

        sig { returns(String) }
        attr_reader :created

        sig { returns(String) }
        attr_reader :expires_at

        sig { returns(String) }
        attr_reader :id

        sig { returns(T::Boolean) }
        attr_reader :livemode

        sig { returns(String) }
        attr_reader :object
      end
    end
  end
end

module Stripe
  module V2
    class Event < APIResource
      class Reason < Stripe::StripeObject
        class Request < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :id

          sig { returns(String) }
          attr_reader :idempotency_key
        end

        sig { returns(String) }
        attr_reader :type

        sig { returns(T.nilable(Request)) }
        attr_reader :request
      end

      sig { returns(T.nilable(String)) }
      attr_reader :context

      sig { returns(String) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(Reason)) }
      attr_reader :reason

      sig { returns(String) }
      attr_reader :type
    end
  end
end

module Stripe
  module V2
    class EventDestination < APIResource
      class StatusDetails < Stripe::StripeObject
        class Disabled < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :reason
        end

        sig { returns(T.nilable(Disabled)) }
        attr_reader :disabled
      end

      class AmazonEventbridge < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :aws_account_id

        sig { returns(String) }
        attr_reader :aws_event_source_arn

        sig { returns(String) }
        attr_reader :aws_event_source_status
      end

      class WebhookEndpoint < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :signing_secret

        sig { returns(T.nilable(String)) }
        attr_reader :url
      end

      sig { returns(String) }
      attr_reader :created

      sig { returns(String) }
      attr_reader :description

      sig { returns(T::Array[String]) }
      attr_reader :enabled_events

      sig { returns(String) }
      attr_reader :event_payload

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :events_from

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :livemode

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      sig { returns(String) }
      attr_reader :name

      sig { returns(String) }
      attr_reader :object

      sig { returns(T.nilable(String)) }
      attr_reader :snapshot_api_version

      sig { returns(String) }
      attr_reader :status

      sig { returns(T.nilable(StatusDetails)) }
      attr_reader :status_details

      sig { returns(String) }
      attr_reader :type

      sig { returns(String) }
      attr_reader :updated

      sig { returns(T.nilable(AmazonEventbridge)) }
      attr_reader :amazon_eventbridge

      sig { returns(T.nilable(WebhookEndpoint)) }
      attr_reader :webhook_endpoint
    end
  end
end

module Stripe
  class WebhookEndpoint < APIResource
    sig { returns(T.nilable(String)) }
    attr_reader :api_version

    sig { returns(T.nilable(String)) }
    attr_reader :application

    sig { returns(Integer) }
    attr_reader :created

    sig { returns(T.nilable(String)) }
    attr_reader :description

    sig { returns(T::Array[String]) }
    attr_reader :enabled_events

    sig { returns(String) }
    attr_reader :id

    sig { returns(T::Boolean) }
    attr_reader :livemode

    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    sig { returns(String) }
    attr_reader :object

    sig { returns(String) }
    attr_reader :secret

    sig { returns(String) }
    attr_reader :status

    sig { returns(String) }
    attr_reader :url

    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end
