# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # Tax forms are legal documents which are delivered to one or more tax authorities for information reporting purposes.
    #
    # Related guide: [US tax reporting for Connect platforms](https://stripe.com/docs/connect/tax-reporting)
    class Form < APIResource
      class AuSerr < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class CaMrdp < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class EuDac7 < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class FilingStatus < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)). Always `US`.
          sig { returns(String) }
          attr_reader :country
          # Indicates the level of the jurisdiction where the form was filed.
          sig { returns(String) }
          attr_reader :level
          # [ISO 3166-2 U.S. state code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix, if any. For example, "NY" for New York, United States.
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        # Time when the filing status was updated.
        sig { returns(Integer) }
        attr_reader :effective_at
        # Attribute for field jurisdiction
        sig { returns(Jurisdiction) }
        attr_reader :jurisdiction
        # The current status of the filed form.
        sig { returns(String) }
        attr_reader :value
      end
      class GbMrdp < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class NzMrdp < Stripe::StripeObject
        # End date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        # Start date of the period represented by the information reported on the tax form.
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class Payee < Stripe::StripeObject
        # The ID of the payee's Stripe account.
        sig { returns(T.nilable(T.any(String, Stripe::Account))) }
        attr_reader :account
        # The external reference to this payee.
        sig { returns(T.nilable(String)) }
        attr_reader :external_reference
        # Either `account` or `external_reference`.
        sig { returns(String) }
        attr_reader :type
      end
      class Us1099K < Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        attr_reader :reporting_year
      end
      class Us1099Misc < Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        attr_reader :reporting_year
      end
      class Us1099Nec < Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        sig { returns(Integer) }
        attr_reader :reporting_year
      end
      # Attribute for field au_serr
      sig { returns(AuSerr) }
      attr_reader :au_serr

      # Attribute for field ca_mrdp
      sig { returns(CaMrdp) }
      attr_reader :ca_mrdp

      # The form that corrects this form, if any.
      sig { returns(T.nilable(T.any(String, Stripe::Tax::Form))) }
      attr_reader :corrected_by

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Attribute for field eu_dac7
      sig { returns(EuDac7) }
      attr_reader :eu_dac7

      # A list of tax filing statuses. Note that a filing status will only be included if the form has been filed directly with the jurisdiction’s tax authority.
      sig { returns(T::Array[FilingStatus]) }
      attr_reader :filing_statuses

      # Attribute for field gb_mrdp
      sig { returns(GbMrdp) }
      attr_reader :gb_mrdp

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Attribute for field nz_mrdp
      sig { returns(NzMrdp) }
      attr_reader :nz_mrdp

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Attribute for field payee
      sig { returns(Payee) }
      attr_reader :payee

      # The type of the tax form. An additional hash is included on the tax form with a name matching this value. It contains additional information specific to the tax form type.
      sig { returns(String) }
      attr_reader :type

      # Attribute for field us_1099_k
      sig { returns(Us1099K) }
      attr_reader :us_1099_k

      # Attribute for field us_1099_misc
      sig { returns(Us1099Misc) }
      attr_reader :us_1099_misc

      # Attribute for field us_1099_nec
      sig { returns(Us1099Nec) }
      attr_reader :us_1099_nec
    end
  end
end