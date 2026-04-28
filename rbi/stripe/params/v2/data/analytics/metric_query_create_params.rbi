# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      module Analytics
        class MetricQueryCreateParams < ::Stripe::RequestParams
          class Metric < ::Stripe::RequestParams
            # The Gen6 ID for this metric, e.g. metric_61Sud3n5oAGVCWiSr5.
            sig { returns(T.nilable(String)) }
            def id; end
            sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
            def id=(_id); end
            # The common name for this metric, e.g. mrr_minor_units.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            sig { params(id: T.nilable(String), name: T.nilable(String)).void }
            def initialize(id: nil, name: nil); end
          end
          # Which currency to return monetary metric results in.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Timestamp denoting the end of the time range to request data for.
          sig { returns(String) }
          def ends_at; end
          sig { params(_ends_at: String).returns(String) }
          def ends_at=(_ends_at); end
          # Which dimension values to filter on; keys are dimension names, values are arrays of dimension values to filter on.
          sig { returns(T.nilable(T::Hash[String, T.untyped])) }
          def filters; end
          sig {
            params(_filters: T.nilable(T::Hash[String, T.untyped])).returns(T.nilable(T::Hash[String, T.untyped]))
           }
          def filters=(_filters); end
          # The time granularity to aggregate results by.
          sig { returns(String) }
          def granularity; end
          sig { params(_granularity: String).returns(String) }
          def granularity=(_granularity); end
          # Which dimension keys to group by; if not specified no grouping is performed.
          sig { returns(T.nilable(T::Array[String])) }
          def group_by; end
          sig {
            params(_group_by: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def group_by=(_group_by); end
          # The maximum number of rows in the response.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # A list of the metrics to be returned; all metrics must share the same metric namespace.
          sig { returns(T::Array[::Stripe::V2::Data::Analytics::MetricQueryCreateParams::Metric]) }
          def metrics; end
          sig {
            params(_metrics: T::Array[::Stripe::V2::Data::Analytics::MetricQueryCreateParams::Metric]).returns(T::Array[::Stripe::V2::Data::Analytics::MetricQueryCreateParams::Metric])
           }
          def metrics=(_metrics); end
          # Pagination future-proofing: page token for navigating to next/previous batch of rows.
          sig { returns(T.nilable(String)) }
          def page; end
          sig { params(_page: T.nilable(String)).returns(T.nilable(String)) }
          def page=(_page); end
          # Timestamp denoting the beginning of the time range to request data for.
          sig { returns(String) }
          def starts_at; end
          sig { params(_starts_at: String).returns(String) }
          def starts_at=(_starts_at); end
          # The timezone results should be in; defaults to the merchant's timezone.
          sig { returns(T.nilable(String)) }
          def timezone; end
          sig { params(_timezone: T.nilable(String)).returns(T.nilable(String)) }
          def timezone=(_timezone); end
          sig {
            params(currency: T.nilable(String), ends_at: String, filters: T.nilable(T::Hash[String, T.untyped]), granularity: String, group_by: T.nilable(T::Array[String]), limit: T.nilable(Integer), metrics: T::Array[::Stripe::V2::Data::Analytics::MetricQueryCreateParams::Metric], page: T.nilable(String), starts_at: String, timezone: T.nilable(String)).void
           }
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
          ); end
        end
      end
    end
  end
end