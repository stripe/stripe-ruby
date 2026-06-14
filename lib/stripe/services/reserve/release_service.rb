# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    class ReleaseService < StripeService
      # Returns a list of ReserveReleases previously created. The ReserveReleases are returned in sorted order, with the most recent ReserveReleases appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/reserve/releases",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a ReserveRelease.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/reserve/releases/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
