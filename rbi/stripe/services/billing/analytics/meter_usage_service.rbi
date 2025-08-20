# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    module Analytics
      class MeterUsageService < StripeService
        class RetrieveParams < Stripe::RequestParams
          class Meter < Stripe::RequestParams
            # Key-value pairs used to filter usage events by meter dimension values. If specified, usage will be filtered for matching usage events.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :dimension_filters
            # List of meter dimension keys to group by. If specified, usage events will be grouped by the given meter dimension key's values.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :dimension_group_by_keys
            # Meter id to query usage for.
            sig { returns(String) }
            attr_accessor :meter_id
            # Key-value pairs used to filter usage events by high cardinality tenant dimension values. If specified, usage will be filtered for matching usage events.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :tenant_filters
            sig {
              params(dimension_filters: T.nilable(T::Hash[String, String]), dimension_group_by_keys: T.nilable(T::Array[String]), meter_id: String, tenant_filters: T.nilable(T::Hash[String, String])).void
             }
            def initialize(
              dimension_filters: nil,
              dimension_group_by_keys: nil,
              meter_id: nil,
              tenant_filters: nil
            ); end
          end
          # The customer id to fetch meter usage data for.
          sig { returns(String) }
          attr_accessor :customer
          # The timestamp from when to stop aggregating meter events (exclusive). Must be aligned with minute boundaries.
          sig { returns(Integer) }
          attr_accessor :end_time
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # An array of meter parameters to specify which meters to include in the usage data. If not specified, usage across all meters for the customer is included.
          sig {
            returns(T.nilable(T::Array[::Stripe::Billing::Analytics::MeterUsageService::RetrieveParams::Meter]))
           }
          attr_accessor :meters
          # The timestamp from when to start aggregating meter events (inclusive). Must be aligned with minute boundaries.
          sig { returns(Integer) }
          attr_accessor :start_time
          # The timezone to use for the start and end times. Defaults to UTC if not specified.
          sig { returns(T.nilable(String)) }
          attr_accessor :timezone
          # Specifies what granularity to use when aggregating meter usage events. If not specified, a single event would be returned for the specified time range.
          sig { returns(T.nilable(String)) }
          attr_accessor :value_grouping_window
          sig {
            params(customer: String, end_time: Integer, expand: T.nilable(T::Array[String]), meters: T.nilable(T::Array[::Stripe::Billing::Analytics::MeterUsageService::RetrieveParams::Meter]), start_time: Integer, timezone: T.nilable(String), value_grouping_window: T.nilable(String)).void
           }
          def initialize(
            customer: nil,
            end_time: nil,
            expand: nil,
            meters: nil,
            start_time: nil,
            timezone: nil,
            value_grouping_window: nil
          ); end
        end
        # Returns aggregated meter usage data for a customer within a specified time interval. The data can be grouped by various dimensions and can include multiple meters if specified.
        sig {
          params(params: T.any(::Stripe::Billing::Analytics::MeterUsageService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Analytics::MeterUsage)
         }
        def retrieve(params = {}, opts = {}); end
      end
    end
  end
end