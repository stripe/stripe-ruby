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

      class AuSerr < Stripe::StripeObject
        attr_reader :reporting_period_end_date, :reporting_period_start_date
      end

      class CaMrdp < Stripe::StripeObject
        attr_reader :reporting_period_end_date, :reporting_period_start_date
      end

      class EuDac7 < Stripe::StripeObject
        attr_reader :reporting_period_end_date, :reporting_period_start_date
      end

      class FilingStatus < Stripe::StripeObject
        class Jurisdiction < Stripe::StripeObject
          attr_reader :country, :level, :state
        end
        attr_reader :effective_at, :jurisdiction, :value
      end

      class GbMrdp < Stripe::StripeObject
        attr_reader :reporting_period_end_date, :reporting_period_start_date
      end

      class NzMrdp < Stripe::StripeObject
        attr_reader :reporting_period_end_date, :reporting_period_start_date
      end

      class Payee < Stripe::StripeObject
        attr_reader :account, :external_reference, :type
      end

      class Us1099K < Stripe::StripeObject
        attr_reader :reporting_year
      end

      class Us1099Misc < Stripe::StripeObject
        attr_reader :reporting_year
      end

      class Us1099Nec < Stripe::StripeObject
        attr_reader :reporting_year
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
    end
  end
end
