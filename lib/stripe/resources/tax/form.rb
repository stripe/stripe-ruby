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
        # Either `account` or `external_reference`.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Us1099K < ::Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        attr_reader :reporting_year

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Us1099Misc < ::Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        attr_reader :reporting_year

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Us1099Nec < ::Stripe::StripeObject
        # Year represented by the information reported on the tax form.
        attr_reader :reporting_year

        def self.inner_class_types
          @inner_class_types = {}
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
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Attribute for field nz_mrdp
      attr_reader :nz_mrdp
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Attribute for field payee
      attr_reader :payee
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
