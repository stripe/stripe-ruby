# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class FeeEntryService < StripeService
        # List FeeEntries optionally filtered by incurred_by, fee_batch, or collection_record (at most one filter at a time).
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/core/fee_entries",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a FeeEntry by id.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/fee_entries/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
