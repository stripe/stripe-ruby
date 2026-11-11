# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    class HoldService < StripeService
      # Returns a list of ReserveHolds on your account or on one of your connected accounts. The ReserveHolds are returned in sorted order, with the most recent ReserveHolds appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/reserve/holds",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a ReserveHold on your account or on one of your connected accounts.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/reserve/holds/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
