# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class FormCreateParams < ::Stripe::RequestParams
      class PayeeDetails < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # The city of the payee's address.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # The two-letter country code of the payee's address.
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # The first line of the payee's address.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # The second line of the payee's address. An empty string clears this field.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # The postal code of the payee's address.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # The state of the payee's address.
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
        # The payee's replacement address fields. Omitted fields remain unchanged.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails::Address)).returns(T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails::Address))
         }
        def address=(_address); end
        # The payee's merchant category code.
        sig { returns(T.nilable(String)) }
        def merchant_category_code; end
        sig { params(_merchant_category_code: T.nilable(String)).returns(T.nilable(String)) }
        def merchant_category_code=(_merchant_category_code); end
        # The first line of the payee's name.
        sig { returns(T.nilable(String)) }
        def name_line_1; end
        sig { params(_name_line_1: T.nilable(String)).returns(T.nilable(String)) }
        def name_line_1=(_name_line_1); end
        # The second line of the payee's name. An empty string clears this field.
        sig { returns(T.nilable(String)) }
        def name_line_2; end
        sig { params(_name_line_2: T.nilable(String)).returns(T.nilable(String)) }
        def name_line_2=(_name_line_2); end
        # The payee's US taxpayer identification number.
        sig { returns(T.nilable(String)) }
        def tax_id_number; end
        sig { params(_tax_id_number: T.nilable(String)).returns(T.nilable(String)) }
        def tax_id_number=(_tax_id_number); end
        # The payee's Treasury tipped occupation code, where supported by the reporting year and form type.
        sig { returns(T.nilable(String)) }
        def treasury_tipped_occupation_code; end
        sig {
          params(_treasury_tipped_occupation_code: T.nilable(String)).returns(T.nilable(String))
         }
        def treasury_tipped_occupation_code=(_treasury_tipped_occupation_code); end
        sig {
          params(address: T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails::Address), merchant_category_code: T.nilable(String), name_line_1: T.nilable(String), name_line_2: T.nilable(String), tax_id_number: T.nilable(String), treasury_tipped_occupation_code: T.nilable(String)).void
         }
        def initialize(
          address: nil,
          merchant_category_code: nil,
          name_line_1: nil,
          name_line_2: nil,
          tax_id_number: nil,
          treasury_tipped_occupation_code: nil
        ); end
      end
      class Us1099K < ::Stripe::RequestParams
        class CardNotPresentTransactions < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class CashTips < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class FederalIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class MonthlyVolume < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class PaymentTransactionsCount < ::Stripe::RequestParams
          # The replacement non-negative transaction count.
          sig { returns(Integer) }
          def count; end
          sig { params(_count: Integer).returns(Integer) }
          def count=(_count); end
          sig { params(count: Integer).void }
          def initialize(count: nil); end
        end
        class StateIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        # Replacement card-not-present transaction amount.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CardNotPresentTransactions))
         }
        def card_not_present_transactions; end
        sig {
          params(_card_not_present_transactions: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CardNotPresentTransactions)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CardNotPresentTransactions))
         }
        def card_not_present_transactions=(_card_not_present_transactions); end
        # Replacement cash tips, where supported by the reporting year.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CashTips)) }
        def cash_tips; end
        sig {
          params(_cash_tips: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CashTips)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CashTips))
         }
        def cash_tips=(_cash_tips); end
        # Replacement federal income tax withheld.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::FederalIncomeTaxWithheld))
         }
        def federal_income_tax_withheld; end
        sig {
          params(_federal_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::FederalIncomeTaxWithheld)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::FederalIncomeTaxWithheld))
         }
        def federal_income_tax_withheld=(_federal_income_tax_withheld); end
        # Replacement amounts for all twelve months, from January through December.
        sig {
          returns(T.nilable(T::Array[::Stripe::Tax::FormCreateParams::Us1099K::MonthlyVolume]))
         }
        def monthly_volumes; end
        sig {
          params(_monthly_volumes: T.nilable(T::Array[::Stripe::Tax::FormCreateParams::Us1099K::MonthlyVolume])).returns(T.nilable(T::Array[::Stripe::Tax::FormCreateParams::Us1099K::MonthlyVolume]))
         }
        def monthly_volumes=(_monthly_volumes); end
        # Replacement payment transaction count.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::PaymentTransactionsCount))
         }
        def payment_transactions_count; end
        sig {
          params(_payment_transactions_count: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::PaymentTransactionsCount)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::PaymentTransactionsCount))
         }
        def payment_transactions_count=(_payment_transactions_count); end
        # Replacement state income tax withheld.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::StateIncomeTaxWithheld)) }
        def state_income_tax_withheld; end
        sig {
          params(_state_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::StateIncomeTaxWithheld)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::StateIncomeTaxWithheld))
         }
        def state_income_tax_withheld=(_state_income_tax_withheld); end
        sig {
          params(card_not_present_transactions: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CardNotPresentTransactions), cash_tips: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::CashTips), federal_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::FederalIncomeTaxWithheld), monthly_volumes: T.nilable(T::Array[::Stripe::Tax::FormCreateParams::Us1099K::MonthlyVolume]), payment_transactions_count: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::PaymentTransactionsCount), state_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K::StateIncomeTaxWithheld)).void
         }
        def initialize(
          card_not_present_transactions: nil,
          cash_tips: nil,
          federal_income_tax_withheld: nil,
          monthly_volumes: nil,
          payment_transactions_count: nil,
          state_income_tax_withheld: nil
        ); end
      end
      class Us1099Misc < ::Stripe::RequestParams
        class CashTips < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class CropInsuranceProceeds < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class ExcessGoldenParachutePayments < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class FederalIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class FishPurchasedForResale < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class FishingBoatProceeds < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class GrossProceedsPaidToAnAttorney < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class MedicalAndHealthCarePayments < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class NonqualifiedDeferredCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class OtherIncome < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class OvertimeCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class Rents < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class Royalties < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class Section409aDeferrals < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class StateIncome < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class StateTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class SubstitutePayments < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        # Replacement cash tips, where supported by the reporting year.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CashTips)) }
        def cash_tips; end
        sig {
          params(_cash_tips: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CashTips)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CashTips))
         }
        def cash_tips=(_cash_tips); end
        # Replacement crop insurance proceeds.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CropInsuranceProceeds))
         }
        def crop_insurance_proceeds; end
        sig {
          params(_crop_insurance_proceeds: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CropInsuranceProceeds)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CropInsuranceProceeds))
         }
        def crop_insurance_proceeds=(_crop_insurance_proceeds); end
        # Replacement direct-sales-for-resale indicator.
        sig { returns(T.nilable(T::Boolean)) }
        def direct_sales_for_resale; end
        sig {
          params(_direct_sales_for_resale: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def direct_sales_for_resale=(_direct_sales_for_resale); end
        # Replacement excess golden parachute payments, where supported by the reporting year.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::ExcessGoldenParachutePayments))
         }
        def excess_golden_parachute_payments; end
        sig {
          params(_excess_golden_parachute_payments: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::ExcessGoldenParachutePayments)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::ExcessGoldenParachutePayments))
         }
        def excess_golden_parachute_payments=(_excess_golden_parachute_payments); end
        # Replacement FATCA filing requirement; cannot be supplied without a substantive correction.
        sig { returns(T.nilable(T::Boolean)) }
        def fatca_filing_required; end
        sig { params(_fatca_filing_required: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def fatca_filing_required=(_fatca_filing_required); end
        # Replacement federal income tax withheld.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FederalIncomeTaxWithheld))
         }
        def federal_income_tax_withheld; end
        sig {
          params(_federal_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FederalIncomeTaxWithheld)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FederalIncomeTaxWithheld))
         }
        def federal_income_tax_withheld=(_federal_income_tax_withheld); end
        # Replacement fish purchased for resale.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishPurchasedForResale))
         }
        def fish_purchased_for_resale; end
        sig {
          params(_fish_purchased_for_resale: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishPurchasedForResale)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishPurchasedForResale))
         }
        def fish_purchased_for_resale=(_fish_purchased_for_resale); end
        # Replacement fishing boat proceeds.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishingBoatProceeds)) }
        def fishing_boat_proceeds; end
        sig {
          params(_fishing_boat_proceeds: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishingBoatProceeds)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishingBoatProceeds))
         }
        def fishing_boat_proceeds=(_fishing_boat_proceeds); end
        # Replacement gross proceeds paid to an attorney.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::GrossProceedsPaidToAnAttorney))
         }
        def gross_proceeds_paid_to_an_attorney; end
        sig {
          params(_gross_proceeds_paid_to_an_attorney: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::GrossProceedsPaidToAnAttorney)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::GrossProceedsPaidToAnAttorney))
         }
        def gross_proceeds_paid_to_an_attorney=(_gross_proceeds_paid_to_an_attorney); end
        # Replacement medical and health care payments.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::MedicalAndHealthCarePayments))
         }
        def medical_and_health_care_payments; end
        sig {
          params(_medical_and_health_care_payments: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::MedicalAndHealthCarePayments)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::MedicalAndHealthCarePayments))
         }
        def medical_and_health_care_payments=(_medical_and_health_care_payments); end
        # Replacement nonqualified deferred compensation.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::NonqualifiedDeferredCompensation))
         }
        def nonqualified_deferred_compensation; end
        sig {
          params(_nonqualified_deferred_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::NonqualifiedDeferredCompensation)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::NonqualifiedDeferredCompensation))
         }
        def nonqualified_deferred_compensation=(_nonqualified_deferred_compensation); end
        # Replacement other income.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OtherIncome)) }
        def other_income; end
        sig {
          params(_other_income: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OtherIncome)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OtherIncome))
         }
        def other_income=(_other_income); end
        # Replacement overtime compensation, where supported by the reporting year.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OvertimeCompensation))
         }
        def overtime_compensation; end
        sig {
          params(_overtime_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OvertimeCompensation)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OvertimeCompensation))
         }
        def overtime_compensation=(_overtime_compensation); end
        # Replacement rents.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Rents)) }
        def rents; end
        sig {
          params(_rents: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Rents)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Rents))
         }
        def rents=(_rents); end
        # Replacement royalties.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Royalties)) }
        def royalties; end
        sig {
          params(_royalties: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Royalties)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Royalties))
         }
        def royalties=(_royalties); end
        # Replacement section 409A deferrals.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Section409aDeferrals))
         }
        def section_409a_deferrals; end
        sig {
          params(_section_409a_deferrals: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Section409aDeferrals)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Section409aDeferrals))
         }
        def section_409a_deferrals=(_section_409a_deferrals); end
        # Replacement state income.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateIncome)) }
        def state_income; end
        sig {
          params(_state_income: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateIncome)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateIncome))
         }
        def state_income=(_state_income); end
        # Replacement state tax withheld.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateTaxWithheld)) }
        def state_tax_withheld; end
        sig {
          params(_state_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateTaxWithheld)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateTaxWithheld))
         }
        def state_tax_withheld=(_state_tax_withheld); end
        # Replacement substitute payments.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::SubstitutePayments)) }
        def substitute_payments; end
        sig {
          params(_substitute_payments: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::SubstitutePayments)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::SubstitutePayments))
         }
        def substitute_payments=(_substitute_payments); end
        sig {
          params(cash_tips: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CashTips), crop_insurance_proceeds: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::CropInsuranceProceeds), direct_sales_for_resale: T.nilable(T::Boolean), excess_golden_parachute_payments: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::ExcessGoldenParachutePayments), fatca_filing_required: T.nilable(T::Boolean), federal_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FederalIncomeTaxWithheld), fish_purchased_for_resale: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishPurchasedForResale), fishing_boat_proceeds: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::FishingBoatProceeds), gross_proceeds_paid_to_an_attorney: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::GrossProceedsPaidToAnAttorney), medical_and_health_care_payments: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::MedicalAndHealthCarePayments), nonqualified_deferred_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::NonqualifiedDeferredCompensation), other_income: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OtherIncome), overtime_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::OvertimeCompensation), rents: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Rents), royalties: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Royalties), section_409a_deferrals: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::Section409aDeferrals), state_income: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateIncome), state_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::StateTaxWithheld), substitute_payments: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc::SubstitutePayments)).void
         }
        def initialize(
          cash_tips: nil,
          crop_insurance_proceeds: nil,
          direct_sales_for_resale: nil,
          excess_golden_parachute_payments: nil,
          fatca_filing_required: nil,
          federal_income_tax_withheld: nil,
          fish_purchased_for_resale: nil,
          fishing_boat_proceeds: nil,
          gross_proceeds_paid_to_an_attorney: nil,
          medical_and_health_care_payments: nil,
          nonqualified_deferred_compensation: nil,
          other_income: nil,
          overtime_compensation: nil,
          rents: nil,
          royalties: nil,
          section_409a_deferrals: nil,
          state_income: nil,
          state_tax_withheld: nil,
          substitute_payments: nil
        ); end
      end
      class Us1099Nec < ::Stripe::RequestParams
        class CashTips < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class FederalIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class NonemployeeCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class OvertimeCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class StateIncome < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        class StateTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          sig { returns(String) }
          def volume_decimal; end
          sig { params(_volume_decimal: String).returns(String) }
          def volume_decimal=(_volume_decimal); end
          sig { params(volume_decimal: String).void }
          def initialize(volume_decimal: nil); end
        end
        # Replacement cash tips, where supported by the reporting year.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::CashTips)) }
        def cash_tips; end
        sig {
          params(_cash_tips: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::CashTips)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::CashTips))
         }
        def cash_tips=(_cash_tips); end
        # Replacement direct-sales indicator.
        sig { returns(T.nilable(T::Boolean)) }
        def direct_sales_indicator; end
        sig {
          params(_direct_sales_indicator: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def direct_sales_indicator=(_direct_sales_indicator); end
        # Replacement federal income tax withheld.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::FederalIncomeTaxWithheld))
         }
        def federal_income_tax_withheld; end
        sig {
          params(_federal_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::FederalIncomeTaxWithheld)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::FederalIncomeTaxWithheld))
         }
        def federal_income_tax_withheld=(_federal_income_tax_withheld); end
        # Replacement nonemployee compensation.
        sig {
          returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::NonemployeeCompensation))
         }
        def nonemployee_compensation; end
        sig {
          params(_nonemployee_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::NonemployeeCompensation)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::NonemployeeCompensation))
         }
        def nonemployee_compensation=(_nonemployee_compensation); end
        # Replacement overtime compensation, where supported by the reporting year.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::OvertimeCompensation)) }
        def overtime_compensation; end
        sig {
          params(_overtime_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::OvertimeCompensation)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::OvertimeCompensation))
         }
        def overtime_compensation=(_overtime_compensation); end
        # Replacement state income.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateIncome)) }
        def state_income; end
        sig {
          params(_state_income: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateIncome)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateIncome))
         }
        def state_income=(_state_income); end
        # Replacement state tax withheld.
        sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateTaxWithheld)) }
        def state_tax_withheld; end
        sig {
          params(_state_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateTaxWithheld)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateTaxWithheld))
         }
        def state_tax_withheld=(_state_tax_withheld); end
        sig {
          params(cash_tips: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::CashTips), direct_sales_indicator: T.nilable(T::Boolean), federal_income_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::FederalIncomeTaxWithheld), nonemployee_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::NonemployeeCompensation), overtime_compensation: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::OvertimeCompensation), state_income: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateIncome), state_tax_withheld: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec::StateTaxWithheld)).void
         }
        def initialize(
          cash_tips: nil,
          direct_sales_indicator: nil,
          federal_income_tax_withheld: nil,
          nonemployee_compensation: nil,
          overtime_compensation: nil,
          state_income: nil,
          state_tax_withheld: nil
        ); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Replacement payee details. Cannot be combined with numerical correction fields. Omitted fields remain unchanged.
      sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails)) }
      def payee_details; end
      sig {
        params(_payee_details: T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails)).returns(T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails))
       }
      def payee_details=(_payee_details); end
      # Whether a second TIN notice was received. Supported for K and MISC forms only; cannot be supplied without a substantive correction.
      sig { returns(T.nilable(T::Boolean)) }
      def second_tin_notice; end
      sig { params(_second_tin_notice: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def second_tin_notice=(_second_tin_notice); end
      # Replacement numerical values for a 1099-K. Supply only the group matching the original form. Omitted fields remain unchanged.
      sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K)) }
      def us_1099_k; end
      sig {
        params(_us_1099_k: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099K))
       }
      def us_1099_k=(_us_1099_k); end
      # Replacement numerical values for a 1099-MISC. Supply only the group matching the original form. Omitted fields remain unchanged.
      sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc)) }
      def us_1099_misc; end
      sig {
        params(_us_1099_misc: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc))
       }
      def us_1099_misc=(_us_1099_misc); end
      # Replacement numerical values for a 1099-NEC. Supply only the group matching the original form. Omitted fields remain unchanged.
      sig { returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec)) }
      def us_1099_nec; end
      sig {
        params(_us_1099_nec: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec)).returns(T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec))
       }
      def us_1099_nec=(_us_1099_nec); end
      sig {
        params(expand: T.nilable(T::Array[String]), payee_details: T.nilable(::Stripe::Tax::FormCreateParams::PayeeDetails), second_tin_notice: T.nilable(T::Boolean), us_1099_k: T.nilable(::Stripe::Tax::FormCreateParams::Us1099K), us_1099_misc: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Misc), us_1099_nec: T.nilable(::Stripe::Tax::FormCreateParams::Us1099Nec)).void
       }
      def initialize(
        expand: nil,
        payee_details: nil,
        second_tin_notice: nil,
        us_1099_k: nil,
        us_1099_misc: nil,
        us_1099_nec: nil
      ); end
    end
  end
end