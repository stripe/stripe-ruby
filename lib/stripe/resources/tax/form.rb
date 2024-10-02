# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # Tax forms are legal documents which are delivered to one or more tax authorities for information reporting purposes.
    #
    # Related guide: [US tax reporting for Connect platforms](https://stripe.com/docs/connect/tax-reporting)
    class Form < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "tax.form"
      def self.object_name
        "tax.form"
      end

      # Returns a list of tax forms which were previously created. The tax forms are returned in sorted order, with the oldest tax forms appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/tax/forms", params: filters, opts: opts)
      end

      # Download the PDF for a tax form.
      def pdf(params = {}, opts = {}, &read_body_chunk_block)
        opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
        request_stream(
          method: :get,
          path: format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts,
          base_address: :files,
          &read_body_chunk_block
        )
      end

      # Download the PDF for a tax form.
      def self.pdf(id, params = {}, opts = {}, &read_body_chunk_block)
        opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
        execute_resource_request_stream(
          :get,
          format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(id) }),
          :files,
          params,
          opts,
          &read_body_chunk_block
        )
      end
    end
  end
end
