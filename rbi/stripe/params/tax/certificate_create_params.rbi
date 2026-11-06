# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class CertificateCreateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The ID of a file uploaded with purpose `tax_certificate`.
      sig { returns(String) }
      def file; end
      sig { params(_file: String).returns(String) }
      def file=(_file); end
      # The ID of an existing tax exemption.
      sig { returns(String) }
      def tax_exemption; end
      sig { params(_tax_exemption: String).returns(String) }
      def tax_exemption=(_tax_exemption); end
      sig { params(expand: T.nilable(T::Array[String]), file: String, tax_exemption: String).void }
      def initialize(expand: nil, file: nil, tax_exemption: nil); end
    end
  end
end