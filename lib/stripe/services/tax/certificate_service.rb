# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class CertificateService < StripeService
      # Creates a Tax Certificate associated with a tax exemption. Before creating the certificate, [upload a file](https://docs.stripe.com/api/files/create) with purpose tax_certificate.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/certificates",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deletes a Tax Certificate without deleting its uploaded file. You can reuse the file to create another certificate, and you can still retrieve the deleted certificate.
      def delete(id, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/tax/certificates/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Lists a tax exemption's certificates, ordered from newest to oldest. The list excludes deleted certificates.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/tax/certificates",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a Tax Certificate. Deleted certificates remain retrievable with all their fields and deleted set to true.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/certificates/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
