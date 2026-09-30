# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # Tax forms are legal documents which are delivered to one or more tax authorities for information reporting purposes.
    #
    # Related guide: [US tax reporting for Connect platforms](https://stripe.com/docs/connect/tax-reporting)
    class Form < APIResource
      class AuSerr < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CaMrdp < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class EuDac7 < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class FilingStatus < ::Stripe::StripeObject
        class Jurisdiction < ::Stripe::StripeObject
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          # Indicates the level of the jurisdiction where the form was filed.
          sig { returns(String) }
          def level; end
          # [ISO 3166-2 U.S. state code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix, if any. For example, "NY" for New York, United States. Null for non-U.S. forms.
          sig { returns(T.nilable(String)) }
          def state; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time when the filing status was updated.
        sig { returns(Integer) }
        def effective_at; end
        # Attribute for field jurisdiction
        sig { returns(Jurisdiction) }
        def jurisdiction; end
        # The current status of the filed form.
        sig { returns(String) }
        def value; end
        def self.inner_class_types
          @inner_class_types = {jurisdiction: Jurisdiction}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class GbMrdp < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class NzMrdp < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_end_date; end
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        def reporting_period_start_date; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Payee < ::Stripe::StripeObject
        # The ID of the payee's Stripe account.
        sig { returns(T.nilable(T.any(String, ::Stripe::Account))) }
        def account; end
        # The external reference to this payee.
        sig { returns(T.nilable(String)) }
        def external_reference; end
        # Specifies the payee type.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Us1099K < ::Stripe::StripeObject
        class CardNotPresentTransactions < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CashTips < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class FederalIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class MonthlyVolume < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PaymentTransactionsCount < ::Stripe::StripeObject
          # The effective number of transactions.
          sig { returns(T.nilable(Integer)) }
          def count; end
          # The signed adjustment included in the effective count. Only present for drafts.
          sig { returns(T.nilable(Integer)) }
          def delta; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StateIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field card_not_present_transactions
        sig { returns(T.nilable(CardNotPresentTransactions)) }
        def card_not_present_transactions; end
        # Attribute for field cash_tips
        sig { returns(T.nilable(CashTips)) }
        def cash_tips; end
        # The currency of the amounts on the form. Always `usd`.
        sig { returns(T.nilable(String)) }
        def currency; end
        # Attribute for field federal_income_tax_withheld
        sig { returns(T.nilable(FederalIncomeTaxWithheld)) }
        def federal_income_tax_withheld; end
        # The gross amount of payment transactions, as a decimal string in USD.
        sig { returns(T.nilable(String)) }
        def gross_amount_of_transactions_decimal; end
        # The gross amounts for each month, ordered from January through December.
        sig { returns(T.nilable(T::Array[MonthlyVolume])) }
        def monthly_volumes; end
        # Attribute for field payment_transactions_count
        sig { returns(T.nilable(PaymentTransactionsCount)) }
        def payment_transactions_count; end
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        def reporting_year; end
        # Attribute for field state_income_tax_withheld
        sig { returns(T.nilable(StateIncomeTaxWithheld)) }
        def state_income_tax_withheld; end
        def self.inner_class_types
          @inner_class_types = {
            card_not_present_transactions: CardNotPresentTransactions,
            cash_tips: CashTips,
            federal_income_tax_withheld: FederalIncomeTaxWithheld,
            monthly_volumes: MonthlyVolume,
            payment_transactions_count: PaymentTransactionsCount,
            state_income_tax_withheld: StateIncomeTaxWithheld,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Us1099Misc < ::Stripe::StripeObject
        class CashTips < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CropInsuranceProceeds < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ExcessGoldenParachutePayments < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class FederalIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class FishPurchasedForResale < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class FishingBoatProceeds < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class GrossProceedsPaidToAnAttorney < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class MedicalAndHealthCarePayments < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class NonqualifiedDeferredCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class OtherIncome < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class OvertimeCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Rents < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Royalties < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Section409aDeferrals < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StateIncome < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StateTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class SubstitutePayments < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field cash_tips
        sig { returns(T.nilable(CashTips)) }
        def cash_tips; end
        # Attribute for field crop_insurance_proceeds
        sig { returns(T.nilable(CropInsuranceProceeds)) }
        def crop_insurance_proceeds; end
        # The currency of the amounts on the form. Always `usd`.
        sig { returns(T.nilable(String)) }
        def currency; end
        # Whether direct sales of at least $5,000 of consumer products were made for resale.
        sig { returns(T.nilable(T::Boolean)) }
        def direct_sales_for_resale; end
        # Attribute for field excess_golden_parachute_payments
        sig { returns(T.nilable(ExcessGoldenParachutePayments)) }
        def excess_golden_parachute_payments; end
        # Whether the FATCA filing requirement applies.
        sig { returns(T.nilable(T::Boolean)) }
        def fatca_filing_required; end
        # Attribute for field federal_income_tax_withheld
        sig { returns(T.nilable(FederalIncomeTaxWithheld)) }
        def federal_income_tax_withheld; end
        # Attribute for field fish_purchased_for_resale
        sig { returns(T.nilable(FishPurchasedForResale)) }
        def fish_purchased_for_resale; end
        # Attribute for field fishing_boat_proceeds
        sig { returns(T.nilable(FishingBoatProceeds)) }
        def fishing_boat_proceeds; end
        # Attribute for field gross_proceeds_paid_to_an_attorney
        sig { returns(T.nilable(GrossProceedsPaidToAnAttorney)) }
        def gross_proceeds_paid_to_an_attorney; end
        # Attribute for field medical_and_health_care_payments
        sig { returns(T.nilable(MedicalAndHealthCarePayments)) }
        def medical_and_health_care_payments; end
        # Attribute for field nonqualified_deferred_compensation
        sig { returns(T.nilable(NonqualifiedDeferredCompensation)) }
        def nonqualified_deferred_compensation; end
        # Attribute for field other_income
        sig { returns(T.nilable(OtherIncome)) }
        def other_income; end
        # Attribute for field overtime_compensation
        sig { returns(T.nilable(OvertimeCompensation)) }
        def overtime_compensation; end
        # Attribute for field rents
        sig { returns(T.nilable(Rents)) }
        def rents; end
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        def reporting_year; end
        # Attribute for field royalties
        sig { returns(T.nilable(Royalties)) }
        def royalties; end
        # Attribute for field section_409a_deferrals
        sig { returns(T.nilable(Section409aDeferrals)) }
        def section_409a_deferrals; end
        # Attribute for field state_income
        sig { returns(T.nilable(StateIncome)) }
        def state_income; end
        # Attribute for field state_tax_withheld
        sig { returns(T.nilable(StateTaxWithheld)) }
        def state_tax_withheld; end
        # Attribute for field substitute_payments
        sig { returns(T.nilable(SubstitutePayments)) }
        def substitute_payments; end
        def self.inner_class_types
          @inner_class_types = {
            cash_tips: CashTips,
            crop_insurance_proceeds: CropInsuranceProceeds,
            excess_golden_parachute_payments: ExcessGoldenParachutePayments,
            federal_income_tax_withheld: FederalIncomeTaxWithheld,
            fish_purchased_for_resale: FishPurchasedForResale,
            fishing_boat_proceeds: FishingBoatProceeds,
            gross_proceeds_paid_to_an_attorney: GrossProceedsPaidToAnAttorney,
            medical_and_health_care_payments: MedicalAndHealthCarePayments,
            nonqualified_deferred_compensation: NonqualifiedDeferredCompensation,
            other_income: OtherIncome,
            overtime_compensation: OvertimeCompensation,
            rents: Rents,
            royalties: Royalties,
            section_409a_deferrals: Section409aDeferrals,
            state_income: StateIncome,
            state_tax_withheld: StateTaxWithheld,
            substitute_payments: SubstitutePayments,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Us1099Nec < ::Stripe::StripeObject
        class CashTips < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class FederalIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class NonemployeeCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class OvertimeCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StateIncome < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StateTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          sig { returns(T.nilable(String)) }
          def delta_decimal; end
          # The effective amount in the form's currency, as a decimal string.
          sig { returns(T.nilable(String)) }
          def volume_decimal; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field cash_tips
        sig { returns(T.nilable(CashTips)) }
        def cash_tips; end
        # The currency of the amounts on the form. Always `usd`.
        sig { returns(T.nilable(String)) }
        def currency; end
        # Whether direct sales of at least $5,000 of consumer products were made for resale.
        sig { returns(T.nilable(T::Boolean)) }
        def direct_sales_indicator; end
        # Whether the FATCA filing requirement applies.
        sig { returns(T.nilable(T::Boolean)) }
        def fatca_filing_requirement; end
        # Attribute for field federal_income_tax_withheld
        sig { returns(T.nilable(FederalIncomeTaxWithheld)) }
        def federal_income_tax_withheld; end
        # Attribute for field nonemployee_compensation
        sig { returns(T.nilable(NonemployeeCompensation)) }
        def nonemployee_compensation; end
        # Attribute for field overtime_compensation
        sig { returns(T.nilable(OvertimeCompensation)) }
        def overtime_compensation; end
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        def reporting_year; end
        # Attribute for field state_income
        sig { returns(T.nilable(StateIncome)) }
        def state_income; end
        # Attribute for field state_tax_withheld
        sig { returns(T.nilable(StateTaxWithheld)) }
        def state_tax_withheld; end
        def self.inner_class_types
          @inner_class_types = {
            cash_tips: CashTips,
            federal_income_tax_withheld: FederalIncomeTaxWithheld,
            nonemployee_compensation: NonemployeeCompensation,
            overtime_compensation: OvertimeCompensation,
            state_income: StateIncome,
            state_tax_withheld: StateTaxWithheld,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field au_serr
      sig { returns(T.nilable(AuSerr)) }
      def au_serr; end
      # Attribute for field ca_mrdp
      sig { returns(T.nilable(CaMrdp)) }
      def ca_mrdp; end
      # The form that corrects this form, if any.
      sig { returns(T.nilable(T.any(String, ::Stripe::Tax::Form))) }
      def corrected_by; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Attribute for field eu_dac7
      sig { returns(T.nilable(EuDac7)) }
      def eu_dac7; end
      # A list of tax filing statuses. Note that a filing status will only be included if the form has been filed directly with the jurisdiction’s tax authority.
      sig { returns(T::Array[FilingStatus]) }
      def filing_statuses; end
      # Attribute for field gb_mrdp
      sig { returns(T.nilable(GbMrdp)) }
      def gb_mrdp; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Attribute for field nz_mrdp
      sig { returns(T.nilable(NzMrdp)) }
      def nz_mrdp; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Attribute for field payee
      sig { returns(Payee) }
      def payee; end
      # Whether the tax form is a mutable draft or a finalized form.
      sig { returns(T.nilable(String)) }
      def status; end
      # The type of the tax form. An additional hash is included on the tax form with a name matching this value. It contains additional information specific to the tax form type.
      sig { returns(String) }
      def type; end
      # Attribute for field us_1099_k
      sig { returns(T.nilable(Us1099K)) }
      def us_1099_k; end
      # Attribute for field us_1099_misc
      sig { returns(T.nilable(Us1099Misc)) }
      def us_1099_misc; end
      # Attribute for field us_1099_nec
      sig { returns(T.nilable(Us1099Nec)) }
      def us_1099_nec; end
      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      sig {
        params(params: T.any(::Stripe::Tax::FormListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Download the PDF for a tax form.
      sig {
        params(params: T.any(::Stripe::Tax::FormPdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
       }
      def pdf(params = {}, opts = {}, &read_body_chunk_block); end

      # Download the PDF for a tax form.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::FormPdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
       }
      def self.pdf(id, params = {}, opts = {}, &read_body_chunk_block); end
    end
  end
end