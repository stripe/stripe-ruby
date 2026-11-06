# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class CertificateService < StripeService
      # Create a tax certificate associated with a tax exemption.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def create(params = {}, opts = {}); end

      # Delete a tax certificate associated with a tax exemption.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::CertificateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def delete(id, params = {}, opts = {}); end

      # List certificates for an existing tax exemption.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieve a tax certificate associated with a tax exemption.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::CertificateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end