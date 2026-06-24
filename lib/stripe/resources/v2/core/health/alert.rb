# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Health
        # A health alert represents a detected problem affecting a merchant's Stripe integration.
        class Alert < APIResource
          OBJECT_NAME = "v2.core.health.alert"
          def self.object_name
            "v2.core.health.alert"
          end

          class ApiError < ::Stripe::StripeObject
            class TopImpactedAccount < ::Stripe::StripeObject
              # The account ID of the impacted connected account.
              attr_reader :account
              # The number of impacted requests.
              attr_reader :impacted_requests
              # The percentage of impacted requests.
              attr_reader :impacted_requests_percentage

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { impacted_requests_percentage: :decimal_string }
              end
            end
            # The canonical path.
            attr_reader :canonical_path
            # The error code.
            attr_reader :error_code
            # The HTTP method.
            attr_reader :http_method
            # The HTTP status.
            attr_reader :http_status
            # The number of impacted requests.
            attr_reader :impacted_requests
            # The percentage of impacted requests.
            attr_reader :impacted_requests_percentage
            # The top impacted connected accounts (only for platforms).
            attr_reader :top_impacted_accounts

            def self.inner_class_types
              @inner_class_types = { top_impacted_accounts: TopImpactedAccount }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                impacted_requests_percentage: :decimal_string,
                top_impacted_accounts: {
                  kind: :array,
                  element: { kind: :object, fields: { impacted_requests_percentage: :decimal_string } },
                },
              }
            end
          end

          class ApiLatency < ::Stripe::StripeObject
            class TopImpactedAccount < ::Stripe::StripeObject
              # The account ID of the impacted connected account.
              attr_reader :account
              # The number of impacted requests.
              attr_reader :impacted_requests
              # The percentage of impacted requests.
              attr_reader :impacted_requests_percentage

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { impacted_requests_percentage: :decimal_string }
              end
            end
            # The canonical path.
            attr_reader :canonical_path
            # The HTTP method.
            attr_reader :http_method
            # The HTTP status.
            attr_reader :http_status
            # The number of impacted requests.
            attr_reader :impacted_requests
            # The percentage of impacted requests.
            attr_reader :impacted_requests_percentage
            # The top impacted connected accounts (only for platforms).
            attr_reader :top_impacted_accounts

            def self.inner_class_types
              @inner_class_types = { top_impacted_accounts: TopImpactedAccount }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                impacted_requests_percentage: :decimal_string,
                top_impacted_accounts: {
                  kind: :array,
                  element: { kind: :object, fields: { impacted_requests_percentage: :decimal_string } },
                },
              }
            end
          end

          class AuthorizationRateDrop < ::Stripe::StripeObject
            class Dimension < ::Stripe::StripeObject
              # Populated when type is issuer.
              attr_reader :issuer
              # The type of the dimension. Determines which field in dimension_details is populated.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The type of the charge.
            attr_reader :charge_type
            # The current authorization rate percentage.
            attr_reader :current_percentage
            # Dimensions that describe what subset of payments are impacted.
            attr_reader :dimensions
            # The type of the payment method.
            attr_reader :payment_method_type
            # The previous authorization rate percentage.
            attr_reader :previous_percentage

            def self.inner_class_types
              @inner_class_types = { dimensions: Dimension }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                current_percentage: :decimal_string,
                previous_percentage: :decimal_string,
              }
            end
          end

          class DocumentationLink < ::Stripe::StripeObject
            # A human-readable label for the link.
            attr_reader :label
            # The URL of the documentation.
            attr_reader :url

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class ElementsError < ::Stripe::StripeObject
            # The type of the element.
            attr_reader :element_type
            # The number of impacted sessions.
            attr_reader :impacted_sessions

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EventGenerationFailure < ::Stripe::StripeObject
            class RelatedObject < ::Stripe::StripeObject
              # The ID of the related object (e.g., "pi_...").
              attr_reader :id
              # The type of the related object (e.g., "payment_intent").
              attr_reader :type
              # The API URL for the related object (e.g., "/v1/payment_intents/pi_...").
              attr_reader :url

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The context the event should have been generated for. Only present when the account is a connected account.
            attr_reader :context
            # The type of event that Stripe failed to generate.
            attr_reader :event_type
            # The related object details.
            attr_reader :related_object

            def self.inner_class_types
              @inner_class_types = { related_object: RelatedObject }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class FraudRate < ::Stripe::StripeObject
            # Fraud attack type.
            attr_reader :attack_type
            # The number of impacted requests which are detected.
            attr_reader :impacted_requests
            # Estimated aggregated amount for the impacted requests.
            attr_reader :realized_fraud_amount

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class InvoiceCountDropped < ::Stripe::StripeObject
            # The observed number of invoices within the time window.
            attr_reader :observed_count
            # The expected threshold number of invoices within the time window.
            attr_reader :threshold_count
            # The size of the observation time window.
            attr_reader :time_window

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { observed_count: :decimal_string, threshold_count: :decimal_string }
            end
          end

          class IssuingAuthorizationRequestErrors < ::Stripe::StripeObject
            # Estimated aggregated amount for the approved requests.
            attr_reader :approved_amount
            # The number of approved requests which are impacted.
            attr_reader :approved_impacted_requests
            # Estimated aggregated amount for the declined requests.
            attr_reader :declined_amount
            # The number of declined requests which are impacted.
            attr_reader :declined_impacted_requests

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class IssuingAuthorizationRequestTimeout < ::Stripe::StripeObject
            # Estimated aggregated amount for the approved requests.
            attr_reader :approved_amount
            # The number of approved requests which are impacted.
            attr_reader :approved_impacted_requests
            # Estimated aggregated amount for the declined requests.
            attr_reader :declined_amount
            # The number of declined requests which are impacted.
            attr_reader :declined_impacted_requests

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class MeterEventSummariesDelayed < ::Stripe::StripeObject
            # The ingestion method.
            attr_reader :ingestion_method

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class MetronomeNotificationLatency < ::Stripe::StripeObject
            # The impacted Metronome billing pipeline.
            attr_reader :pipeline

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PaymentMethodError < ::Stripe::StripeObject
            class TopImpactedAccount < ::Stripe::StripeObject
              # The account ID of the impacted connected account.
              attr_reader :account
              # The number of impacted requests.
              attr_reader :impacted_requests
              # The percentage of impacted requests.
              attr_reader :impacted_requests_percentage

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { impacted_requests_percentage: :decimal_string }
              end
            end
            # The returned error code.
            attr_reader :error_code
            # The number of impacted requests.
            attr_reader :impacted_requests
            # The percentage of impacted requests.
            attr_reader :impacted_requests_percentage
            # The type of the payment method.
            attr_reader :payment_method_type
            # The top impacted connected accounts (only for platforms).
            attr_reader :top_impacted_accounts

            def self.inner_class_types
              @inner_class_types = { top_impacted_accounts: TopImpactedAccount }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                impacted_requests_percentage: :decimal_string,
                top_impacted_accounts: {
                  kind: :array,
                  element: { kind: :object, fields: { impacted_requests_percentage: :decimal_string } },
                },
              }
            end
          end

          class SepaDebitDelayed < ::Stripe::StripeObject
            # The number of impacted payments.
            attr_reader :impacted_payments
            # The percentage of impacted payments.
            attr_reader :impacted_payments_percentage

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { impacted_payments_percentage: :decimal_string }
            end
          end

          class TrafficVolumeDrop < ::Stripe::StripeObject
            # The total volume of payment requests within the latest observation time window.
            attr_reader :actual_traffic
            # The canonical path.
            attr_reader :canonical_path
            # The expected volume of payment requests within the latest observation time window.
            attr_reader :expected_traffic
            # The size of the observation time window.
            attr_reader :time_window

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class WebhookLatency < ::Stripe::StripeObject
            # The number of impacted requests.
            attr_reader :impacted_requests

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Populated when type is api_error.
          attr_reader :api_error
          # Populated when type is api_latency.
          attr_reader :api_latency
          # Populated when type is authorization_rate_drop.
          attr_reader :authorization_rate_drop
          # Time at which the health alert was created.
          attr_reader :created
          # Links to relevant documentation for diagnosing and resolving the alert.
          attr_reader :documentation_links
          # Populated when type is elements_error.
          attr_reader :elements_error
          # Populated when type is event_generation_failure.
          attr_reader :event_generation_failure
          # Populated when type is fraud_rate.
          attr_reader :fraud_rate
          # The grouping key for the alert.
          attr_reader :grouping_key
          # Whether the alert is linked to an incident or is a self-contained problem.
          attr_reader :grouping_type
          # Unique identifier for the health alert.
          attr_reader :id
          # Populated when type is invoice_count_dropped.
          attr_reader :invoice_count_dropped
          # Populated when type is issuing_authorization_request_errors.
          attr_reader :issuing_authorization_request_errors
          # Populated when type is issuing_authorization_request_timeout.
          attr_reader :issuing_authorization_request_timeout
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          attr_reader :livemode
          # Populated when type is meter_event_summaries_delayed.
          attr_reader :meter_event_summaries_delayed
          # Populated when type is metronome_notification_latency.
          attr_reader :metronome_notification_latency
          # String representing the object's type. Objects of the same type share the same value of the object field.
          attr_reader :object
          # Populated when type is payment_method_error.
          attr_reader :payment_method_error
          # The time when the user experience has returned to expected levels. Null if the alert is still open.
          attr_reader :resolved_at
          # Populated when type is sepa_debit_delayed.
          attr_reader :sepa_debit_delayed
          # The severity of the alert.
          attr_reader :severity
          # The time when impact on the user experience was first detected.
          attr_reader :started_at
          # The current status of the alert.
          attr_reader :status
          # A short description of the alert.
          attr_reader :summary
          # Populated when type is traffic_volume_drop.
          attr_reader :traffic_volume_drop
          # The type of the alert. Determines which sub-hash field is populated.
          attr_reader :type
          # Populated when type is webhook_latency.
          attr_reader :webhook_latency

          def self.inner_class_types
            @inner_class_types = {
              api_error: ApiError,
              api_latency: ApiLatency,
              authorization_rate_drop: AuthorizationRateDrop,
              documentation_links: DocumentationLink,
              elements_error: ElementsError,
              event_generation_failure: EventGenerationFailure,
              fraud_rate: FraudRate,
              invoice_count_dropped: InvoiceCountDropped,
              issuing_authorization_request_errors: IssuingAuthorizationRequestErrors,
              issuing_authorization_request_timeout: IssuingAuthorizationRequestTimeout,
              meter_event_summaries_delayed: MeterEventSummariesDelayed,
              metronome_notification_latency: MetronomeNotificationLatency,
              payment_method_error: PaymentMethodError,
              sepa_debit_delayed: SepaDebitDelayed,
              traffic_volume_drop: TrafficVolumeDrop,
              webhook_latency: WebhookLatency,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              api_error: {
                kind: :object,
                fields: {
                  impacted_requests_percentage: :decimal_string,
                  top_impacted_accounts: {
                    kind: :array,
                    element: {
                      kind: :object,
                      fields: { impacted_requests_percentage: :decimal_string },
                    },
                  },
                },
              },
              api_latency: {
                kind: :object,
                fields: {
                  impacted_requests_percentage: :decimal_string,
                  top_impacted_accounts: {
                    kind: :array,
                    element: {
                      kind: :object,
                      fields: { impacted_requests_percentage: :decimal_string },
                    },
                  },
                },
              },
              authorization_rate_drop: {
                kind: :object,
                fields: { current_percentage: :decimal_string, previous_percentage: :decimal_string },
              },
              invoice_count_dropped: {
                kind: :object,
                fields: { observed_count: :decimal_string, threshold_count: :decimal_string },
              },
              payment_method_error: {
                kind: :object,
                fields: {
                  impacted_requests_percentage: :decimal_string,
                  top_impacted_accounts: {
                    kind: :array,
                    element: {
                      kind: :object,
                      fields: { impacted_requests_percentage: :decimal_string },
                    },
                  },
                },
              },
              sepa_debit_delayed: {
                kind: :object,
                fields: { impacted_payments_percentage: :decimal_string },
              },
            }
          end
        end
      end
    end
  end
end
