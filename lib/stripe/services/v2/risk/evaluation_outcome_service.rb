# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      class EvaluationOutcomeService < StripeService
        # Lists all matching historical evaluation outcomes, newest first.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/risk/evaluation_outcomes",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an evaluation outcome by its ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/risk/evaluation_outcomes/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
