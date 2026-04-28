# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      module Analytics
        class MetricQueryCreateParams < ::Stripe::RequestParams
          class Metric < ::Stripe::RequestParams
            # The Gen6 ID for this metric, e.g. metric_61Sud3n5oAGVCWiSr5.
            attr_accessor :id
            # The common name for this metric, e.g. mrr_minor_units.
            attr_accessor :name

            def initialize(id: nil, name: nil)
              @id = id
              @name = name
            end
          end
          # Which currency to return monetary metric results in.
          attr_accessor :currency
          # Timestamp denoting the end of the time range to request data for.
          attr_accessor :ends_at
          # Which dimension values to filter on; keys are dimension names, values are arrays of dimension values to filter on.
          attr_accessor :filters
          # The time granularity to aggregate results by.
          attr_accessor :granularity
          # Which dimension keys to group by; if not specified no grouping is performed.
          attr_accessor :group_by
          # The maximum number of rows in the response.
          attr_accessor :limit
          # A list of the metrics to be returned; all metrics must share the same metric namespace.
          attr_accessor :metrics
          # Pagination future-proofing: page token for navigating to next/previous batch of rows.
          attr_accessor :page
          # Timestamp denoting the beginning of the time range to request data for.
          attr_accessor :starts_at
          # The timezone results should be in; defaults to the merchant's timezone.
          attr_accessor :timezone

          def initialize(
            currency: nil,
            ends_at: nil,
            filters: nil,
            granularity: nil,
            group_by: nil,
            limit: nil,
            metrics: nil,
            page: nil,
            starts_at: nil,
            timezone: nil
          )
            @currency = currency
            @ends_at = ends_at
            @filters = filters
            @granularity = granularity
            @group_by = group_by
            @limit = limit
            @metrics = metrics
            @page = page
            @starts_at = starts_at
            @timezone = timezone
          end
        end
      end
    end
  end
end
