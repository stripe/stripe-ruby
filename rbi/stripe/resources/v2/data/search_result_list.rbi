# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      # A ranked set of public analytical resources matching a natural-language query.
      class SearchResultList < APIResource
        class Context < ::Stripe::StripeObject
          class BusinessConcept < ::Stripe::StripeObject
            # What the term means in the context of this domain.
            sig { returns(String) }
            def definition; end
            # The name of the concept, for example "decline reason".
            sig { returns(String) }
            def term; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Domain vocabulary relevant to the request, so that callers interpret the
          # returned resources consistently with how Stripe defines these terms.
          sig { returns(T::Array[BusinessConcept]) }
          def business_concepts; end
          # The business domain the request was matched to, for example "payments".
          sig { returns(String) }
          def domain; end
          # High-level routing guidance for the agent. When `data` is empty, may
          # advise how to refine the request or browse canonical resources.
          sig { returns(String) }
          def guidance; end
          def self.inner_class_types
            @inner_class_types = {business_concepts: BusinessConcept}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Data < ::Stripe::StripeObject
          class ExecutionSpec < ::Stripe::StripeObject
            # The canonical run endpoint, e.g. "/v2/data/report_runs" or "/v2/data/query_runs".
            sig { returns(String) }
            def execution_url; end
            # The HTTP method for `execution_url`.
            sig { returns(String) }
            def http_method; end
            # The identifier to submit to `execution_url`, e.g. "report_123" or "table_123".
            sig { returns(String) }
            def id; end
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
              sig { returns(String) }
              def description; end
              # The public dimension name accepted by the metric query endpoint.
              sig { returns(String) }
              def name; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether the metric query endpoint accepts a `currency` parameter for this
            # metric. False for pure ratios and growth rates.
            sig { returns(T::Boolean) }
            def accepts_currency; end
            # Dimensions the metric can be filtered and grouped by.
            sig { returns(T::Array[Dimension]) }
            def dimensions; end
            # How the metric's value is formatted.
            sig { returns(String) }
            def measure_format; end
            # The metric namespace. Metrics queried together in one metric query request
            # must share a namespace.
            sig { returns(String) }
            def metric_namespace; end
            def self.inner_class_types
              @inner_class_types = {dimensions: Dimension}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Reports < ::Stripe::StripeObject
            class OutputColumn < ::Stripe::StripeObject
              # What the column represents.
              sig { returns(String) }
              def description; end
              # The name of the column in the report output.
              sig { returns(String) }
              def name; end
              # The data type of the column.
              sig { returns(String) }
              def type; end
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
                  sig { returns(T::Array[String]) }
                  def allowed_values; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The data type of the elements in the array.
                sig { returns(String) }
                def element_type; end
                # Details about enum elements in the array.
                sig { returns(T.nilable(EnumDetails)) }
                def enum_details; end
                def self.inner_class_types
                  @inner_class_types = {enum_details: EnumDetails}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class EnumDetails < ::Stripe::StripeObject
                # Allowed values of the enum.
                sig { returns(T::Array[String]) }
                def allowed_values; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # For array parameters, details about the array elements.
              sig { returns(T.nilable(ArrayDetails)) }
              def array_details; end
              # Explains the purpose and usage of the parameter.
              sig { returns(String) }
              def description; end
              # For enum parameters, the list of allowed values.
              sig { returns(T.nilable(EnumDetails)) }
              def enum_details; end
              # Indicates whether the parameter must be provided.
              sig { returns(T::Boolean) }
              def required; end
              # The data type of the parameter.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {array_details: ArrayDetails, enum_details: EnumDetails}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Shape of the report output when known.
            sig { returns(T::Array[OutputColumn]) }
            def output_columns; end
            # Parameter schema, keyed by parameter name, matching the `/v2/data/reports`
            # resource.
            sig { returns(T::Hash[String, Parameters]) }
            def parameters; end
            def self.inner_class_types
              @inner_class_types = {output_columns: OutputColumn, parameters: Parameters}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Schemas < ::Stripe::StripeObject
            class Column < ::Stripe::StripeObject
              class ForeignKeysFrom < ::Stripe::StripeObject
                # The name of the referenced column.
                sig { returns(String) }
                def column; end
                # The identifier of the referenced schema.
                sig { returns(String) }
                def schema; end
                # The name of the referenced schema.
                sig { returns(String) }
                def schema_name; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class ForeignKeysTo < ::Stripe::StripeObject
                # The name of the referenced column.
                sig { returns(String) }
                def column; end
                # The identifier of the referenced schema.
                sig { returns(String) }
                def schema; end
                # The name of the referenced schema.
                sig { returns(String) }
                def schema_name; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # A description of what the column represents.
              sig { returns(String) }
              def description; end
              # Columns in other schemas that reference this column as a foreign key.
              sig { returns(T::Array[ForeignKeysFrom]) }
              def foreign_keys_from; end
              # Columns in other schemas that this column references as a foreign key.
              sig { returns(T::Array[ForeignKeysTo]) }
              def foreign_keys_to; end
              # Whether the column forms part of the table's primary key.
              sig { returns(T::Boolean) }
              def is_primary_key; end
              # The name of the column.
              sig { returns(String) }
              def name; end
              # The data type of the column.
              sig { returns(String) }
              def type; end
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
              sig { returns(String) }
              def description; end
              # The unique identifier of the `Report`.
              sig { returns(String) }
              def id; end
              # The human-readable name of the `Report`.
              sig { returns(String) }
              def name; end
              # Canonical API path for the `Report`, e.g. "/v2/data/reports/report_123".
              sig { returns(String) }
              def reference_url; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Compact schema projection.
            sig { returns(T::Array[Column]) }
            def columns; end
            # The dataset used when submitting an ad-hoc query run.
            sig { returns(String) }
            def dataset; end
            # Stripe-defined reports that are relevant to this schema.
            sig { returns(T::Array[RelevantReport]) }
            def relevant_reports; end
            def self.inner_class_types
              @inner_class_types = {columns: Column, relevant_reports: RelevantReport}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # What the canonical resource contains.
          sig { returns(String) }
          def description; end
          # How to execute this result.
          sig { returns(ExecutionSpec) }
          def execution_spec; end
          # Per-result additional context: constraints, interpretation rules, and gotchas.
          sig { returns(T.nilable(String)) }
          def extended_description; end
          # Canonical resource identity.
          sig { returns(String) }
          def id; end
          # Human-readable name of the canonical resource.
          sig { returns(String) }
          def name; end
          # The canonical resource type this result points at, e.g. "v2.data.schema"
          # or "v2.data.report". May name a resource that is not yet publicly
          # retrievable, in which case `reference_url` is omitted. Distinct from
          # `object`, which identifies this result itself.
          sig { returns(String) }
          def object_type; end
          # Canonical API path for retrieving the complete resource, e.g.
          # "/v2/data/reports/report_123".
          sig { returns(String) }
          def reference_url; end
          # Present for schemas when known; omitted for resource types without data
          # freshness.
          sig { returns(String) }
          def refreshed_at; end
          # Relative ordering signal from the search service (0-1). Not a
          # calibrated guarantee; callers must not use it as a configurable cutoff.
          sig { returns(BigDecimal) }
          def relevance_score; end
          # Attribute for field catalog
          sig { returns(T.nilable(String)) }
          def catalog; end
          # A pre-defined measure queryable through the metric query endpoint.
          sig { returns(T.nilable(Metrics)) }
          def metrics; end
          # A Stripe-defined report exposed by `/v2/data/reports`.
          sig { returns(T.nilable(Reports)) }
          def reports; end
          # A queryable table exposed by `/v2/data/schemas`.
          sig { returns(T.nilable(Schemas)) }
          def schemas; end
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
            @field_encodings = {relevance_score: :decimal_string}
          end
        end
        # Domain-level intelligence. Present when a known domain matches; omitted
        # when the system falls back to direct semantic search.
        sig { returns(T.nilable(Context)) }
        def context; end
        # Ranked public resources. Always present, including when empty.
        sig { returns(T::Array[Data]) }
        def data; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Token for the next page.
        sig { returns(T.nilable(String)) }
        def next_page_url; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Token for the previous page.
        sig { returns(T.nilable(String)) }
        def previous_page_url; end
      end
    end
  end
end