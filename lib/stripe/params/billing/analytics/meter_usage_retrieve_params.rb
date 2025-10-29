# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    module Analytics
      class MeterUsageRetrieveParams < ::Stripe::RequestParams
        class Meter < ::Stripe::RequestParams
          # Key-value pairs used to filter usage events by meter dimension values. If specified, usage will be filtered for matching usage events.
          attr_accessor :dimension_filters
          # List of meter dimension keys to group by. If specified, usage events will be grouped by the given meter dimension key's values.
          attr_accessor :dimension_group_by_keys
          # Meter id to query usage for.
          attr_accessor :meter
          # Key-value pairs used to filter usage events by high cardinality tenant dimension values. If specified, usage will be filtered for matching usage events.
          attr_accessor :tenant_filters
          # List of high cardinality tenant dimension keys to group by. If specified, usage events will be grouped by the given tenant dimension key's values.
          attr_accessor :tenant_group_by_keys

          def initialize(
            dimension_filters: nil,
            dimension_group_by_keys: nil,
            meter: nil,
            tenant_filters: nil,
            tenant_group_by_keys: nil
          )
            @dimension_filters = dimension_filters
            @dimension_group_by_keys = dimension_group_by_keys
            @meter = meter
            @tenant_filters = tenant_filters
            @tenant_group_by_keys = tenant_group_by_keys
          end
        end
        # The customer id to fetch meter usage data for.
        attr_accessor :customer
        # The timestamp from when to stop aggregating meter events (exclusive). Must be aligned with minute boundaries.
        attr_accessor :ends_at
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # An array of meter parameters to specify which meters to include in the usage data. If not specified, usage across all meters for the customer is included.
        attr_accessor :meters
        # The timestamp from when to start aggregating meter events (inclusive). Must be aligned with minute boundaries.
        attr_accessor :starts_at
        # The timezone to use for the start and end times. Defaults to UTC if not specified.
        attr_accessor :timezone
        # Specifies what granularity to use when aggregating meter usage events. If not specified, a single event would be returned for the specified time range.
        attr_accessor :value_grouping_window

        def initialize(
          customer: nil,
          ends_at: nil,
          expand: nil,
          meters: nil,
          starts_at: nil,
          timezone: nil,
          value_grouping_window: nil
        )
          @customer = customer
          @ends_at = ends_at
          @expand = expand
          @meters = meters
          @starts_at = starts_at
          @timezone = timezone
          @value_grouping_window = value_grouping_window
        end
      end
    end
  end
end
