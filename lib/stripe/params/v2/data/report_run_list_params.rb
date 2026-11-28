# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class ReportRunListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Only return runs created after this time.
          attr_accessor :gt
          # Only return runs created at or after this time.
          attr_accessor :gte
          # Only return runs created before this time.
          attr_accessor :lt
          # Only return runs created at or before this time.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # If supplied, only return report runs created within this time range.
        attr_accessor :created
        # The maximum number of results per page. Defaults to 10. Maximum is 100.
        attr_accessor :limit
        # If supplied, only return report runs of the `Report` with this ID.
        attr_accessor :report
        # If supplied, only return report runs that have any of these statuses.
        attr_accessor :statuses

        def initialize(created: nil, limit: nil, report: nil, statuses: nil)
          @created = created
          @limit = limit
          @report = report
          @statuses = statuses
        end
      end
    end
  end
end
