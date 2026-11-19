# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class CertificateCreateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The ID of a [file](/api/files/object) uploaded with purpose `tax_certificate`. The file must belong to the same account and mode as the tax exemption. You can't use a deleted file or a file attached to another certificate that hasn't been deleted.
      attr_accessor :file
      # The ID of an existing [customer tax exemption](/api/tax/exemptions/object) that hasn't been deleted.
      attr_accessor :tax_exemption

      def initialize(expand: nil, file: nil, tax_exemption: nil)
        @expand = expand
        @file = file
        @tax_exemption = tax_exemption
      end
    end
  end
end
