# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class CertificateService < StripeService
      # Creates a Tax Certificate associated with a tax exemption. Before creating the certificate, [upload a file](https://docs.stripe.com/api/files/create) with purpose tax_certificate.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def create(params = {}, opts = {}); end

      # Deletes a Tax Certificate without deleting its uploaded file. You can reuse the file to create another certificate, and you can still retrieve the deleted certificate.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::CertificateDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def delete(id, params = {}, opts = {}); end

      # Lists a tax exemption's certificates, ordered from newest to oldest. The list excludes deleted certificates.
      sig {
        params(params: T.any(::Stripe::Tax::CertificateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a Tax Certificate. Deleted certificates remain retrievable with all their fields and deleted set to true.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::CertificateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Certificate)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end