# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # Tax exemption and resale certificates associated with tax exemptions.
    class Certificate < APIResource
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Whether the certificate has been deleted.
      sig { returns(T::Boolean) }
      def deleted; end
      # The uploaded certificate file.
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
      # The tax exemption associated with this certificate.
      sig { returns(T.nilable(T.any(String, ::Stripe::CustomerTaxExemption))) }
      def tax_exemption; end
      # Create a tax certificate associated with a tax exemption.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def self.create(params = {}, opts = {}); end

      # Delete a tax certificate associated with a tax exemption.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::CertificateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def self.delete(id, params = {}, opts = {}); end

      # Delete a tax certificate associated with a tax exemption.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def delete(params = {}, opts = {}); end

      # List certificates for an existing tax exemption.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end