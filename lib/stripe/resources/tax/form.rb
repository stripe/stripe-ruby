# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # Tax forms are legal documents which are delivered to one or more tax authorities for information reporting purposes.
    #
    # Related guide: [US tax reporting for Connect platforms](https://stripe.com/docs/connect/tax-reporting)
    class Form < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "tax.form"
      def self.object_name
        "tax.form"
      end

      class AuSerr < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_start_date

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CaMrdp < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_start_date

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class EuDac7 < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_start_date

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
          attr_reader :country
          # Indicates the level of the jurisdiction where the form was filed.
          attr_reader :level
          # [ISO 3166-2 U.S. state code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix, if any. For example, "NY" for New York, United States. Null for non-U.S. forms.
          attr_reader :state

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time when the filing status was updated.
        attr_reader :effective_at
        # Attribute for field jurisdiction
        attr_reader :jurisdiction
        # The current status of the filed form.
        attr_reader :value

        def self.inner_class_types
          @inner_class_types = { jurisdiction: Jurisdiction }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class GbMrdp < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_start_date

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class NzMrdp < ::Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        attr_reader :reporting_period_start_date

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Payee < ::Stripe::StripeObject
        # The ID of the payee's Stripe account.
        attr_reader :account
        # The external reference to this payee.
        attr_reader :external_reference
        # Specifies the payee type.
        attr_reader :type

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
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CashTips < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FederalIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MonthlyVolume < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PaymentTransactionsCount < ::Stripe::StripeObject
          # The effective number of transactions.
          attr_reader :count
          # The signed adjustment included in the effective count. Only present for drafts.
          attr_reader :delta

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StateIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field card_not_present_transactions
        attr_reader :card_not_present_transactions
        # Attribute for field cash_tips
        attr_reader :cash_tips
        # The currency of the amounts on the form. Always `usd`.
        attr_reader :currency
        # Attribute for field federal_income_tax_withheld
        attr_reader :federal_income_tax_withheld
        # The gross amount of payment transactions, as a decimal string in USD.
        attr_reader :gross_amount_of_transactions_decimal
        # The gross amounts for each month, ordered from January through December.
        attr_reader :monthly_volumes
        # Attribute for field payment_transactions_count
        attr_reader :payment_transactions_count
        # Year represented by the information reported on the tax form.
        attr_reader :reporting_year
        # Attribute for field state_income_tax_withheld
        attr_reader :state_income_tax_withheld

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
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CropInsuranceProceeds < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ExcessGoldenParachutePayments < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FederalIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FishPurchasedForResale < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FishingBoatProceeds < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class GrossProceedsPaidToAnAttorney < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MedicalAndHealthCarePayments < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class NonqualifiedDeferredCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class OtherIncome < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class OvertimeCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Rents < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Royalties < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Section409aDeferrals < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StateIncome < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StateTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class SubstitutePayments < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field cash_tips
        attr_reader :cash_tips
        # Attribute for field crop_insurance_proceeds
        attr_reader :crop_insurance_proceeds
        # The currency of the amounts on the form. Always `usd`.
        attr_reader :currency
        # Whether direct sales of at least $5,000 of consumer products were made for resale.
        attr_reader :direct_sales_for_resale
        # Attribute for field excess_golden_parachute_payments
        attr_reader :excess_golden_parachute_payments
        # Whether the FATCA filing requirement applies.
        attr_reader :fatca_filing_required
        # Attribute for field federal_income_tax_withheld
        attr_reader :federal_income_tax_withheld
        # Attribute for field fish_purchased_for_resale
        attr_reader :fish_purchased_for_resale
        # Attribute for field fishing_boat_proceeds
        attr_reader :fishing_boat_proceeds
        # Attribute for field gross_proceeds_paid_to_an_attorney
        attr_reader :gross_proceeds_paid_to_an_attorney
        # Attribute for field medical_and_health_care_payments
        attr_reader :medical_and_health_care_payments
        # Attribute for field nonqualified_deferred_compensation
        attr_reader :nonqualified_deferred_compensation
        # Attribute for field other_income
        attr_reader :other_income
        # Attribute for field overtime_compensation
        attr_reader :overtime_compensation
        # Attribute for field rents
        attr_reader :rents
        # Year represented by the information reported on the tax form.
        attr_reader :reporting_year
        # Attribute for field royalties
        attr_reader :royalties
        # Attribute for field section_409a_deferrals
        attr_reader :section_409a_deferrals
        # Attribute for field state_income
        attr_reader :state_income
        # Attribute for field state_tax_withheld
        attr_reader :state_tax_withheld
        # Attribute for field substitute_payments
        attr_reader :substitute_payments

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
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FederalIncomeTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class NonemployeeCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class OvertimeCompensation < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StateIncome < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StateTaxWithheld < ::Stripe::StripeObject
          # The signed adjustment included in the effective amount, as a decimal string. Only present for drafts.
          attr_reader :delta_decimal
          # The effective amount in the form's currency, as a decimal string.
          attr_reader :volume_decimal

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field cash_tips
        attr_reader :cash_tips
        # The currency of the amounts on the form. Always `usd`.
        attr_reader :currency
        # Whether direct sales of at least $5,000 of consumer products were made for resale.
        attr_reader :direct_sales_indicator
        # Whether the FATCA filing requirement applies.
        attr_reader :fatca_filing_requirement
        # Attribute for field federal_income_tax_withheld
        attr_reader :federal_income_tax_withheld
        # Attribute for field nonemployee_compensation
        attr_reader :nonemployee_compensation
        # Attribute for field overtime_compensation
        attr_reader :overtime_compensation
        # Year represented by the information reported on the tax form.
        attr_reader :reporting_year
        # Attribute for field state_income
        attr_reader :state_income
        # Attribute for field state_tax_withheld
        attr_reader :state_tax_withheld

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
      attr_reader :au_serr
      # Attribute for field ca_mrdp
      attr_reader :ca_mrdp
      # The form that corrects this form, if any.
      attr_reader :corrected_by
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Attribute for field eu_dac7
      attr_reader :eu_dac7
      # A list of tax filing statuses. Note that a filing status will only be included if the form has been filed directly with the jurisdiction’s tax authority.
      attr_reader :filing_statuses
      # Attribute for field gb_mrdp
      attr_reader :gb_mrdp
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Attribute for field nz_mrdp
      attr_reader :nz_mrdp
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Attribute for field payee
      attr_reader :payee
      # Whether the tax form is a mutable draft or a finalized form.
      attr_reader :status
      # The type of the tax form. An additional hash is included on the tax form with a name matching this value. It contains additional information specific to the tax form type.
      attr_reader :type
      # Attribute for field us_1099_k
      attr_reader :us_1099_k
      # Attribute for field us_1099_misc
      attr_reader :us_1099_misc
      # Attribute for field us_1099_nec
      attr_reader :us_1099_nec

      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/tax/forms", params: params, opts: opts)
      end

      # Download the PDF for a tax form.
      def pdf(params = {}, opts = {}, &read_body_chunk_block)
        opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
        request_stream(
          method: :get,
          path: format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts,
          base_address: :files,
          &read_body_chunk_block
        )
      end

      # Download the PDF for a tax form.
      def self.pdf(id, params = {}, opts = {}, &read_body_chunk_block)
        opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
        execute_resource_request_stream(
          :get,
          format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(id) }),
          :files,
          params,
          opts,
          &read_body_chunk_block
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          au_serr: AuSerr,
          ca_mrdp: CaMrdp,
          eu_dac7: EuDac7,
          filing_statuses: FilingStatus,
          gb_mrdp: GbMrdp,
          nz_mrdp: NzMrdp,
          payee: Payee,
          us_1099_k: Us1099K,
          us_1099_misc: Us1099Misc,
          us_1099_nec: Us1099Nec,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
