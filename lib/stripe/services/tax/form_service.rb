# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class FormService < StripeService
      # Creates a correction for a filed tax form. Supply either payee details or numerical values for the tax form type.
      #
      # Private preview. API access is invite-only. Contact Stripe to request access. Creating a correction doesn't file it; review, attestation, and filing remain in the Dashboard.
      def create(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/tax/forms/%<id>s/corrections", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      def list(params = {}, opts = {})
        request(method: :get, path: "/v1/tax/forms", params: params, opts: opts, base_address: :api)
      end

      # Download the PDF for a tax form.
      def pdf(id, params = {}, opts = {}, &read_body_chunk_block)
        opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
        request_stream(
          method: :get,
          path: format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :files,
          &read_body_chunk_block
        )
      end

      # Retrieves the details of a tax form that has previously been created. Supply the unique tax form ID that was returned from your previous request, and Stripe will return the corresponding tax form information.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/forms/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
