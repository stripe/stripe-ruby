# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      # A ranked set of public analytical resources matching a natural-language query.
      class SearchResultList < APIResource
        OBJECT_NAME = "v2.data.search_result_list"
        def self.object_name
          "v2.data.search_result_list"
        end

        class Context < ::Stripe::StripeObject
          class BusinessConcept < ::Stripe::StripeObject
            # What the term means in the context of this domain.
            attr_reader :definition
            # The name of the concept, for example "decline reason".
            attr_reader :term

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Domain vocabulary relevant to the request, so that callers interpret the
          # returned resources consistently with how Stripe defines these terms.
          attr_reader :business_concepts
          # The business domain the request was matched to, for example "payments".
          attr_reader :domain
          # High-level routing guidance for the agent. When `data` is empty, may
          # advise how to refine the request or browse canonical resources.
          attr_reader :guidance

          def self.inner_class_types
            @inner_class_types = { business_concepts: BusinessConcept }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Data < ::Stripe::StripeObject
          class ExecutionSpec < ::Stripe::StripeObject
            # The canonical run endpoint, e.g. "/v2/data/report_runs" or "/v2/data/query_runs".
            attr_reader :execution_url
            # The HTTP method for `execution_url`.
            attr_reader :http_method
            # The identifier to submit to `execution_url`, e.g. "report_123" or "table_123".
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Metrics < ::Stripe::StripeObject
            class Dimension < ::Stripe::StripeObject
              # A description of what the dimension represents.
              attr_reader :description
              # The public dimension name accepted by the metric query endpoint.
              attr_reader :name

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether the metric query endpoint accepts a `currency` parameter for this
            # metric. False for pure ratios and growth rates.
            attr_reader :accepts_currency
            # Dimensions the metric can be filtered and grouped by.
            attr_reader :dimensions
            # How the metric's value is formatted.
            attr_reader :measure_format
            # The metric namespace. Metrics queried together in one metric query request
            # must share a namespace.
            attr_reader :metric_namespace

            def self.inner_class_types
              @inner_class_types = { dimensions: Dimension }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Reports < ::Stripe::StripeObject
            class OutputColumn < ::Stripe::StripeObject
              # What the column represents.
              attr_reader :description
              # The name of the column in the report output.
              attr_reader :name
              # The data type of the column.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Parameters < ::Stripe::StripeObject
              class ArrayDetails < ::Stripe::StripeObject
                class EnumDetails < ::Stripe::StripeObject
                  # Allowed values of the enum.
                  attr_reader :allowed_values

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The data type of the elements in the array.
                attr_reader :element_type
                # Details about enum elements in the array.
                attr_reader :enum_details

                def self.inner_class_types
                  @inner_class_types = { enum_details: EnumDetails }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class EnumDetails < ::Stripe::StripeObject
                # Allowed values of the enum.
                attr_reader :allowed_values

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # For array parameters, details about the array elements.
              attr_reader :array_details
              # Explains the purpose and usage of the parameter.
              attr_reader :description
              # For enum parameters, the list of allowed values.
              attr_reader :enum_details
              # Indicates whether the parameter must be provided.
              attr_reader :required
              # The data type of the parameter.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = { array_details: ArrayDetails, enum_details: EnumDetails }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Shape of the report output when known.
            attr_reader :output_columns
            # Parameter schema, keyed by parameter name, matching the `/v2/data/reports`
            # resource.
            attr_reader :parameters

            def self.inner_class_types
              @inner_class_types = { output_columns: OutputColumn, parameters: Parameters }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Schemas < ::Stripe::StripeObject
            class Column < ::Stripe::StripeObject
              class ForeignKeysFrom < ::Stripe::StripeObject
                # The name of the referenced column.
                attr_reader :column
                # The identifier of the referenced schema.
                attr_reader :schema
                # The name of the referenced schema.
                attr_reader :schema_name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ForeignKeysTo < ::Stripe::StripeObject
                # The name of the referenced column.
                attr_reader :column
                # The identifier of the referenced schema.
                attr_reader :schema
                # The name of the referenced schema.
                attr_reader :schema_name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # A description of what the column represents.
              attr_reader :description
              # Columns in other schemas that reference this column as a foreign key.
              attr_reader :foreign_keys_from
              # Columns in other schemas that this column references as a foreign key.
              attr_reader :foreign_keys_to
              # Whether the column forms part of the table's primary key.
              attr_reader :is_primary_key
              # The name of the column.
              attr_reader :name
              # The data type of the column.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {
                  foreign_keys_from: ForeignKeysFrom,
                  foreign_keys_to: ForeignKeysTo,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class RelevantReport < ::Stripe::StripeObject
              # A description of the `Report`.
              attr_reader :description
              # The unique identifier of the `Report`.
              attr_reader :id
              # The human-readable name of the `Report`.
              attr_reader :name
              # Canonical API path for the `Report`, e.g. "/v2/data/reports/report_123".
              attr_reader :reference_url

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Compact schema projection.
            attr_reader :columns
            # The dataset used when submitting an ad-hoc query run.
            attr_reader :dataset
            # Stripe-defined reports that are relevant to this schema.
            attr_reader :relevant_reports

            def self.inner_class_types
              @inner_class_types = { columns: Column, relevant_reports: RelevantReport }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # What the canonical resource contains.
          attr_reader :description
          # How to execute this result.
          attr_reader :execution_spec
          # Per-result additional context: constraints, interpretation rules, and gotchas.
          attr_reader :extended_description
          # Canonical resource identity.
          attr_reader :id
          # Human-readable name of the canonical resource.
          attr_reader :name
          # The canonical resource type this result points at, e.g. "v2.data.schema"
          # or "v2.data.report". May name a resource that is not yet publicly
          # retrievable, in which case `reference_url` is omitted. Distinct from
          # `object`, which identifies this result itself.
          attr_reader :object_type
          # Canonical API path for retrieving the complete resource, e.g.
          # "/v2/data/reports/report_123".
          attr_reader :reference_url
          # Present for schemas when known; omitted for resource types without data
          # freshness.
          attr_reader :refreshed_at
          # Relative ordering signal from the search service (0-1). Not a
          # calibrated guarantee; callers must not use it as a configurable cutoff.
          attr_reader :relevance_score
          # Attribute for field catalog
          attr_reader :catalog
          # A pre-defined measure queryable through the metric query endpoint.
          attr_reader :metrics
          # A Stripe-defined report exposed by `/v2/data/reports`.
          attr_reader :reports
          # A queryable table exposed by `/v2/data/schemas`.
          attr_reader :schemas

          def self.inner_class_types
            @inner_class_types = {
              execution_spec: ExecutionSpec,
              metrics: Metrics,
              reports: Reports,
              schemas: Schemas,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = { relevance_score: :decimal_string }
          end
        end
        # Domain-level intelligence. Present when a known domain matches; omitted
        # when the system falls back to direct semantic search.
        attr_reader :context
        # Ranked public resources. Always present, including when empty.
        attr_reader :data
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Token for the next page.
        attr_reader :next_page_url
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Token for the previous page.
        attr_reader :previous_page_url

        def self.inner_class_types
          @inner_class_types = { context: Context, data: Data }
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
                  relevance_score: :decimal_string,
                  catalog: {
                    kind: :discriminated_union,
                    discriminator: "catalog",
                    variants: {
                      metrics: { kind: :object, fields: {} },
                      reports: { kind: :object, fields: {} },
                      schemas: { kind: :object, fields: {} },
                    },
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
