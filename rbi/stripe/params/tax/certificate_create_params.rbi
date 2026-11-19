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
      # The ID of a [file](/api/files/object) uploaded with purpose `tax_certificate`. The file must belong to the same account and mode as the tax exemption. You can't use a deleted file or a file attached to another certificate that hasn't been deleted.
      sig { returns(String) }
      def file; end
      sig { params(_file: String).returns(String) }
      def file=(_file); end
      # The ID of an existing [customer tax exemption](/api/tax/exemptions/object) that hasn't been deleted.
      sig { returns(String) }
      def tax_exemption; end
      sig { params(_tax_exemption: String).returns(String) }
      def tax_exemption=(_tax_exemption); end
      sig { params(expand: T.nilable(T::Array[String]), file: String, tax_exemption: String).void }
      def initialize(expand: nil, file: nil, tax_exemption: nil); end
    end
  end
end