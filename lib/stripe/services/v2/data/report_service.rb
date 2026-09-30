# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class ReportService < StripeService
        # Returns a list of Stripe-defined reports that the caller can create a `ReportRun` for.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/data/reports",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves metadata about a specific `Report`, including its name, description, and
        # the parameters it accepts. It's useful for understanding the capabilities and
        # requirements of a particular `Report` before requesting a `ReportRun`.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/data/reports/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
