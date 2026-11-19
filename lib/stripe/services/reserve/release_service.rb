# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    class ReleaseService < StripeService
      # Returns a list of ReserveReleases on your account or on one of your connected accounts. The ReserveReleases are returned in sorted order, with the most recent ReserveReleases appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/reserve/releases",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a ReserveRelease on your account or on one of your connected accounts.
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
