# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    class PlanService < StripeService
      # Returns a list of ReservePlans on your account or on one of your connected accounts. The ReservePlans are returned in sorted order, with the most recent ReservePlans appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/reserve/plans",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a ReservePlan on your account or on one of your connected accounts.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/reserve/plans/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
