# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Reporting
      class ReportService < StripeService
        # Retrieves metadata about a specific `Report` template, including its name, description,
        # and the parameters it accepts. It's useful for understanding the capabilities and
        # requirements of a particular `Report` before requesting a `ReportRun`.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/reporting/reports/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
