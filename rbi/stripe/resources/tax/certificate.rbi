# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # A Tax Certificate associates an uploaded exemption or resale certificate file with a customer's tax exemption. A tax exemption can have multiple certificates. Deleting a tax exemption also deletes its certificates, but retains their uploaded files.
    class Certificate < APIResource
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # If `true`, the certificate has been deleted. If `false`, it hasn't been deleted.
      sig { returns(T::Boolean) }
      def deleted; end
      # The ID of the uploaded certificate [file](/api/files/object).
      sig { returns(T.any(String, ::Stripe::File)) }
      def file; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The ID of the [customer tax exemption](/api/tax/exemptions/object) associated with this certificate.
      sig { returns(T.nilable(T.any(String, ::Stripe::CustomerTaxExemption))) }
      def tax_exemption; end
      # Creates a Tax Certificate associated with a tax exemption. Before creating the certificate, [upload a file](https://docs.stripe.com/api/files/create) with purpose tax_certificate.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def self.create(params = {}, opts = {}); end

      # Deletes a Tax Certificate without deleting its uploaded file. You can reuse the file to create another certificate, and you can still retrieve the deleted certificate.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::CertificateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def self.delete(id, params = {}, opts = {}); end

      # Deletes a Tax Certificate without deleting its uploaded file. You can reuse the file to create another certificate, and you can still retrieve the deleted certificate.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def delete(params = {}, opts = {}); end

      # Lists a tax exemption's certificates, ordered from newest to oldest. The list excludes deleted certificates.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end