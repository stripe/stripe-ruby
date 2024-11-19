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
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class CaMrdp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class EuDac7 < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class FilingStatus < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :country
          sig { returns(String) }
          attr_reader :level
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        sig { returns(Integer) }
        attr_reader :effective_at
        sig { returns(Jurisdiction) }
        attr_reader :jurisdiction
        sig { returns(String) }
        attr_reader :value
      end
      class GbMrdp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class NzMrdp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reporting_period_end_date
        sig { returns(String) }
        attr_reader :reporting_period_start_date
      end
      class Payee < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::Account))) }
        attr_reader :account
        sig { returns(T.nilable(String)) }
        attr_reader :external_reference
        sig { returns(String) }
        attr_reader :type
      end
      class Us1099K < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :reporting_year
      end
      class Us1099Misc < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :reporting_year
      end
      class Us1099Nec < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :reporting_year
      end
      sig { returns(AuSerr) }
      # Attribute for field au_serr
      attr_reader :au_serr
      sig { returns(CaMrdp) }
      # Attribute for field ca_mrdp
      attr_reader :ca_mrdp
      sig { returns(T.nilable(T.any(String, Stripe::Tax::Form))) }
      # The form that corrects this form, if any.
      attr_reader :corrected_by
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(EuDac7) }
      # Attribute for field eu_dac7
      attr_reader :eu_dac7
      sig { returns(T::Array[FilingStatus]) }
      # A list of tax filing statuses. Note that a filing status will only be included if the form has been filed directly with the jurisdiction’s tax authority.
      attr_reader :filing_statuses
      sig { returns(GbMrdp) }
      # Attribute for field gb_mrdp
      attr_reader :gb_mrdp
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(NzMrdp) }
      # Attribute for field nz_mrdp
      attr_reader :nz_mrdp
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Payee) }
      # Attribute for field payee
      attr_reader :payee
      sig { returns(String) }
      # The type of the tax form. An additional hash is included on the tax form with a name matching this value. It contains additional information specific to the tax form type.
      attr_reader :type
      sig { returns(Us1099K) }
      # Attribute for field us_1099_k
      attr_reader :us_1099_k
      sig { returns(Us1099Misc) }
      # Attribute for field us_1099_misc
      attr_reader :us_1099_misc
      sig { returns(Us1099Nec) }
      # Attribute for field us_1099_nec
      attr_reader :us_1099_nec
    end
  end
end