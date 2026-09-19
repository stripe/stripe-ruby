# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reporting
    class ReportTypeService < StripeService
      # Returns a full list of Report Types.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/reporting/report_types",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a Report Type. (Certain report types require a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).)
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/reporting/report_types/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
