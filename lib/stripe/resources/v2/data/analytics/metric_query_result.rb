# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      module Analytics
        # The result of a metric query.
        class MetricQueryResult < APIResource
          OBJECT_NAME = "v2.data.analytics.metric_query_result"
          def self.object_name
            "v2.data.analytics.metric_query_result"
          end

          class Data < ::Stripe::StripeObject
            class Result < ::Stripe::StripeObject
              # If this is a monetary metric, the currency it is returned in. Otherwise null.
              attr_reader :currency
              # The Gen6 ID of this metric.
              attr_reader :metric
              # The common name of this metric.
              attr_reader :name
              # The numeric value of this metric.
              attr_reader :value

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { value: :int64_string }
              end
            end
            # A hash of dimension type to dimension instance, if group_by was specified.
            attr_reader :dimensions
            # A unique identifier for this row.
            attr_reader :id
            # Array of metric values returned from this query.
            attr_reader :results
            # Timestamp denoting the start of this time bucket.
            attr_reader :timestamp

            def self.inner_class_types
              @inner_class_types = { results: Result }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                results: { kind: :array, element: { kind: :object, fields: { value: :int64_string } } },
              }
            end
          end
          # The timestamp at which this metric query result was created.
          attr_reader :created
          # An array of timeseries data rows.
          attr_reader :data
          # The unique identifier of this metric query result.
          attr_reader :id
          # Whether this query was run in live mode.
          attr_reader :livemode
          # Pagination future-proofing: URL to fetch the next page; always null for now.
          attr_reader :next_page_url
          # String representing the object's type. Objects of the same type share the same value of the object field.
          attr_reader :object
          # Pagination future-proofing: URL to fetch the previous page; always null for now.
          attr_reader :previous_page_url
          # A timestamp representing the freshness of the data this metric is aggregated from.
          attr_reader :refreshed_at

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              data: {
                kind: :array,
                element: {
                  kind: :object,
                  fields: {
                    results: {
                      kind: :array,
                      element: { kind: :object, fields: { value: :int64_string } },
                    },
                  },
                },
              },
            }
          end
        end
      end
    end
  end
end
