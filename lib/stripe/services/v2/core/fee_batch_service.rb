# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class FeeBatchService < StripeService
        # Lists FeeBatches, optionally filtered by `collection_record`, `statuses`, or
        # creation time. If `statuses` is omitted or empty, only pending and billed
        # FeeBatches are returned. Canceled FeeBatches are returned only when explicitly
        # requested.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/core/fee_batches",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a FeeBatch by id.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/fee_batches/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
