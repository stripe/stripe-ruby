# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class BatchJobService < StripeService
        # Cancels an existing batch job.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/batch_jobs/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a new batch job.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/batch_jobs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an existing batch job.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/batch_jobs/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
