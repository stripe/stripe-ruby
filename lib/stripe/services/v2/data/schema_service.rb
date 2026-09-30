# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class SchemaService < StripeService
        # Returns a list of schemas describing the tables available to query.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/data/schemas",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the schema for a particular table.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/data/schemas/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
