# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      class InquiryService < StripeService
        # Lists risk inquiries for a connected account.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/risk/inquiries",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a risk inquiry by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/risk/inquiries/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Submits a response to a risk inquiry.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/risk/inquiries/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
