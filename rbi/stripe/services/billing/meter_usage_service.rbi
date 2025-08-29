# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class MeterUsageService < StripeService
      class RetrieveParams < Stripe::RequestParams
        class Meter < Stripe::RequestParams
          # Key-value pairs used to filter usage events by meter dimension values. If specified, usage will be filtered for matching usage events.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def dimension_filters; end
          sig {
            params(_dimension_filters: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def dimension_filters=(_dimension_filters); end
          # List of meter dimension keys to group by. If specified, usage events will be grouped by the given meter dimension key's values.
          sig { returns(T.nilable(T::Array[String])) }
          def dimension_group_by_keys; end
          sig {
            params(_dimension_group_by_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def dimension_group_by_keys=(_dimension_group_by_keys); end
          # Meter id to query usage for.
          sig { returns(String) }
          def meter_id; end
          sig { params(_meter_id: String).returns(String) }
          def meter_id=(_meter_id); end
          # Key-value pairs used to filter usage events by high cardinality tenant dimension values. If specified, usage will be filtered for matching usage events.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def tenant_filters; end
          sig {
            params(_tenant_filters: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def tenant_filters=(_tenant_filters); end
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
        def customer; end
        sig { params(_customer: String).returns(String) }
        def customer=(_customer); end
        # The timestamp from when to stop aggregating meter events (exclusive). Must be aligned with minute boundaries.
        sig { returns(Integer) }
        def end_time; end
        sig { params(_end_time: Integer).returns(Integer) }
        def end_time=(_end_time); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # An array of meter parameters to specify which meters to include in the usage data. If not specified, usage across all meters for the customer is included.
        sig {
          returns(T.nilable(T::Array[::Stripe::Billing::MeterUsageService::RetrieveParams::Meter]))
         }
        def meters; end
        sig {
          params(_meters: T.nilable(T::Array[::Stripe::Billing::MeterUsageService::RetrieveParams::Meter])).returns(T.nilable(T::Array[::Stripe::Billing::MeterUsageService::RetrieveParams::Meter]))
         }
        def meters=(_meters); end
        # The timestamp from when to start aggregating meter events (inclusive). Must be aligned with minute boundaries.
        sig { returns(Integer) }
        def start_time; end
        sig { params(_start_time: Integer).returns(Integer) }
        def start_time=(_start_time); end
        # The timezone to use for the start and end times. Defaults to UTC if not specified.
        sig { returns(T.nilable(String)) }
        def timezone; end
        sig { params(_timezone: T.nilable(String)).returns(T.nilable(String)) }
        def timezone=(_timezone); end
        # Specifies what granularity to use when aggregating meter usage events. If not specified, a single event would be returned for the specified time range.
        sig { returns(T.nilable(String)) }
        def value_grouping_window; end
        sig { params(_value_grouping_window: T.nilable(String)).returns(T.nilable(String)) }
        def value_grouping_window=(_value_grouping_window); end
        sig {
          params(customer: String, end_time: Integer, expand: T.nilable(T::Array[String]), meters: T.nilable(T::Array[::Stripe::Billing::MeterUsageService::RetrieveParams::Meter]), start_time: Integer, timezone: T.nilable(String), value_grouping_window: T.nilable(String)).void
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
        params(params: T.any(::Stripe::Billing::MeterUsageService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::MeterUsage)
       }
      def retrieve(params = {}, opts = {}); end
    end
  end
end