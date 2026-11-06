# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class CertificateService < StripeService
      # Create a tax certificate associated with a tax exemption.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/certificates",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Delete a tax certificate associated with a tax exemption.
      def delete(id, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/tax/certificates/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # List certificates for an existing tax exemption.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/tax/certificates",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a tax certificate associated with a tax exemption.
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
