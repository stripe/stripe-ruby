# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      class FormService < StripeService
        # Retrieves a risk Form by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/risk/forms/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Submits a response to a risk Form.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/risk/forms/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
