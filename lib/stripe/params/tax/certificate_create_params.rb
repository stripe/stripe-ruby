# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class CertificateCreateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The ID of a file uploaded with purpose `tax_certificate`.
      attr_accessor :file
      # The ID of an existing tax exemption.
      attr_accessor :tax_exemption

      def initialize(expand: nil, file: nil, tax_exemption: nil)
        @expand = expand
        @file = file
        @tax_exemption = tax_exemption
      end
    end
  end
end
