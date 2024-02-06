# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reporting
    # The Report Type resource corresponds to a particular type of report, such as
    # the "Activity summary" or "Itemized payouts" reports. These objects are
    # identified by an ID belonging to a set of enumerated values. See
    # [API Access to Reports documentation](https://stripe.com/docs/reporting/statements/api)
    # for those Report Type IDs, along with required and optional parameters.
    #
    # Note that certain report types can only be run based on your live-mode data (not test-mode
    # data), and will error when queried without a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).
    class ReportType < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "reporting.report_type"

      # Returns a full list of Report Types.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/reporting/report_types",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
