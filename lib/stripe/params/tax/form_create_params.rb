# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class FormCreateParams < ::Stripe::RequestParams
      class PayeeDetails < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # The city of the payee's address.
          attr_accessor :city
          # The two-letter country code of the payee's address.
          attr_accessor :country
          # The first line of the payee's address.
          attr_accessor :line1
          # The second line of the payee's address. An empty string clears this field.
          attr_accessor :line2
          # The postal code of the payee's address.
          attr_accessor :postal_code
          # The state of the payee's address.
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
        # The payee's replacement address fields. Omitted fields remain unchanged.
        attr_accessor :address
        # The payee's merchant category code.
        attr_accessor :merchant_category_code
        # The first line of the payee's name.
        attr_accessor :name_line_1
        # The second line of the payee's name. An empty string clears this field.
        attr_accessor :name_line_2
        # The payee's US taxpayer identification number.
        attr_accessor :tax_id_number
        # The payee's Treasury tipped occupation code, where supported by the reporting year and form type.
        attr_accessor :treasury_tipped_occupation_code

        def initialize(
          address: nil,
          merchant_category_code: nil,
          name_line_1: nil,
          name_line_2: nil,
          tax_id_number: nil,
          treasury_tipped_occupation_code: nil
        )
          @address = address
          @merchant_category_code = merchant_category_code
          @name_line_1 = name_line_1
          @name_line_2 = name_line_2
          @tax_id_number = tax_id_number
          @treasury_tipped_occupation_code = treasury_tipped_occupation_code
        end
      end

      class Us1099K < ::Stripe::RequestParams
        class CardNotPresentTransactions < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class CashTips < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class FederalIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class MonthlyVolume < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class PaymentTransactionsCount < ::Stripe::RequestParams
          # The replacement non-negative transaction count.
          attr_accessor :count

          def initialize(count: nil)
            @count = count
          end
        end

        class StateIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end
        # Replacement card-not-present transaction amount.
        attr_accessor :card_not_present_transactions
        # Replacement cash tips, where supported by the reporting year.
        attr_accessor :cash_tips
        # Replacement federal income tax withheld.
        attr_accessor :federal_income_tax_withheld
        # Replacement amounts for all twelve months, from January through December.
        attr_accessor :monthly_volumes
        # Replacement payment transaction count.
        attr_accessor :payment_transactions_count
        # Replacement state income tax withheld.
        attr_accessor :state_income_tax_withheld

        def initialize(
          card_not_present_transactions: nil,
          cash_tips: nil,
          federal_income_tax_withheld: nil,
          monthly_volumes: nil,
          payment_transactions_count: nil,
          state_income_tax_withheld: nil
        )
          @card_not_present_transactions = card_not_present_transactions
          @cash_tips = cash_tips
          @federal_income_tax_withheld = federal_income_tax_withheld
          @monthly_volumes = monthly_volumes
          @payment_transactions_count = payment_transactions_count
          @state_income_tax_withheld = state_income_tax_withheld
        end
      end

      class Us1099Misc < ::Stripe::RequestParams
        class CashTips < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class CropInsuranceProceeds < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class ExcessGoldenParachutePayments < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class FederalIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class FishPurchasedForResale < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class FishingBoatProceeds < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class GrossProceedsPaidToAnAttorney < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class MedicalAndHealthCarePayments < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class NonqualifiedDeferredCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class OtherIncome < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class OvertimeCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class Rents < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class Royalties < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class Section409aDeferrals < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class StateIncome < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class StateTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class SubstitutePayments < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end
        # Replacement cash tips, where supported by the reporting year.
        attr_accessor :cash_tips
        # Replacement crop insurance proceeds.
        attr_accessor :crop_insurance_proceeds
        # Replacement direct-sales-for-resale indicator.
        attr_accessor :direct_sales_for_resale
        # Replacement excess golden parachute payments, where supported by the reporting year.
        attr_accessor :excess_golden_parachute_payments
        # Replacement FATCA filing requirement; cannot be supplied without a substantive correction.
        attr_accessor :fatca_filing_required
        # Replacement federal income tax withheld.
        attr_accessor :federal_income_tax_withheld
        # Replacement fish purchased for resale.
        attr_accessor :fish_purchased_for_resale
        # Replacement fishing boat proceeds.
        attr_accessor :fishing_boat_proceeds
        # Replacement gross proceeds paid to an attorney.
        attr_accessor :gross_proceeds_paid_to_an_attorney
        # Replacement medical and health care payments.
        attr_accessor :medical_and_health_care_payments
        # Replacement nonqualified deferred compensation.
        attr_accessor :nonqualified_deferred_compensation
        # Replacement other income.
        attr_accessor :other_income
        # Replacement overtime compensation, where supported by the reporting year.
        attr_accessor :overtime_compensation
        # Replacement rents.
        attr_accessor :rents
        # Replacement royalties.
        attr_accessor :royalties
        # Replacement section 409A deferrals.
        attr_accessor :section_409a_deferrals
        # Replacement state income.
        attr_accessor :state_income
        # Replacement state tax withheld.
        attr_accessor :state_tax_withheld
        # Replacement substitute payments.
        attr_accessor :substitute_payments

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
        )
          @cash_tips = cash_tips
          @crop_insurance_proceeds = crop_insurance_proceeds
          @direct_sales_for_resale = direct_sales_for_resale
          @excess_golden_parachute_payments = excess_golden_parachute_payments
          @fatca_filing_required = fatca_filing_required
          @federal_income_tax_withheld = federal_income_tax_withheld
          @fish_purchased_for_resale = fish_purchased_for_resale
          @fishing_boat_proceeds = fishing_boat_proceeds
          @gross_proceeds_paid_to_an_attorney = gross_proceeds_paid_to_an_attorney
          @medical_and_health_care_payments = medical_and_health_care_payments
          @nonqualified_deferred_compensation = nonqualified_deferred_compensation
          @other_income = other_income
          @overtime_compensation = overtime_compensation
          @rents = rents
          @royalties = royalties
          @section_409a_deferrals = section_409a_deferrals
          @state_income = state_income
          @state_tax_withheld = state_tax_withheld
          @substitute_payments = substitute_payments
        end
      end

      class Us1099Nec < ::Stripe::RequestParams
        class CashTips < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class FederalIncomeTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class NonemployeeCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class OvertimeCompensation < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class StateIncome < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end

        class StateTaxWithheld < ::Stripe::RequestParams
          # The replacement amount in major currency units, with at most two decimal places. Must be non-negative.
          attr_accessor :volume_decimal

          def initialize(volume_decimal: nil)
            @volume_decimal = volume_decimal
          end
        end
        # Replacement cash tips, where supported by the reporting year.
        attr_accessor :cash_tips
        # Replacement direct-sales indicator.
        attr_accessor :direct_sales_indicator
        # Replacement federal income tax withheld.
        attr_accessor :federal_income_tax_withheld
        # Replacement nonemployee compensation.
        attr_accessor :nonemployee_compensation
        # Replacement overtime compensation, where supported by the reporting year.
        attr_accessor :overtime_compensation
        # Replacement state income.
        attr_accessor :state_income
        # Replacement state tax withheld.
        attr_accessor :state_tax_withheld

        def initialize(
          cash_tips: nil,
          direct_sales_indicator: nil,
          federal_income_tax_withheld: nil,
          nonemployee_compensation: nil,
          overtime_compensation: nil,
          state_income: nil,
          state_tax_withheld: nil
        )
          @cash_tips = cash_tips
          @direct_sales_indicator = direct_sales_indicator
          @federal_income_tax_withheld = federal_income_tax_withheld
          @nonemployee_compensation = nonemployee_compensation
          @overtime_compensation = overtime_compensation
          @state_income = state_income
          @state_tax_withheld = state_tax_withheld
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Replacement payee details. Cannot be combined with numerical correction fields. Omitted fields remain unchanged.
      attr_accessor :payee_details
      # Whether a second TIN notice was received. Supported for K and MISC forms only; cannot be supplied without a substantive correction.
      attr_accessor :second_tin_notice
      # Replacement numerical values for a 1099-K. Supply only the group matching the original form. Omitted fields remain unchanged.
      attr_accessor :us_1099_k
      # Replacement numerical values for a 1099-MISC. Supply only the group matching the original form. Omitted fields remain unchanged.
      attr_accessor :us_1099_misc
      # Replacement numerical values for a 1099-NEC. Supply only the group matching the original form. Omitted fields remain unchanged.
      attr_accessor :us_1099_nec

      def initialize(
        expand: nil,
        payee_details: nil,
        second_tin_notice: nil,
        us_1099_k: nil,
        us_1099_misc: nil,
        us_1099_nec: nil
      )
        @expand = expand
        @payee_details = payee_details
        @second_tin_notice = second_tin_notice
        @us_1099_k = us_1099_k
        @us_1099_misc = us_1099_misc
        @us_1099_nec = us_1099_nec
      end
    end
  end
end
