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

      def pdf(params = {}, opts = {}, &read_body_chunk_block)
        config = opts[:client]&.config || Stripe.config
        opts = { api_base: config.uploads_base }.merge(opts)
        request_stream(
          method: :get,
          path: format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts,
          &read_body_chunk_block
        )
      end

      def self.pdf(id, params = {}, opts = {}, &read_body_chunk_block)
        config = opts[:client]&.config || Stripe.config
        opts = { api_base: config.uploads_base }.merge(opts)
        execute_resource_request_stream(
          :get,
          format("/v1/tax/forms/%<id>s/pdf", { id: CGI.escape(id) }),
          params,
          opts,
          &read_body_chunk_block
        )
      end
    end
  end
end
