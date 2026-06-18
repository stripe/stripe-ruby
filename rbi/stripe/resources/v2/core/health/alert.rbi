# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Health
        # A health alert represents a detected problem affecting a merchant's Stripe integration.
        class Alert < APIResource
          class ApiError < ::Stripe::StripeObject
            class TopImpactedAccount < ::Stripe::StripeObject
              # The account ID of the impacted connected account.
              sig { returns(String) }
              def account; end
              # The number of impacted requests.
              sig { returns(Integer) }
              def impacted_requests; end
              # The percentage of impacted requests.
              sig { returns(T.nilable(BigDecimal)) }
              def impacted_requests_percentage; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {impacted_requests_percentage: :decimal_string}
              end
            end
            # The canonical path.
            sig { returns(String) }
            def canonical_path; end
            # The error code.
            sig { returns(T.nilable(String)) }
            def error_code; end
            # The HTTP method.
            sig { returns(String) }
            def http_method; end
            # The HTTP status.
            sig { returns(String) }
            def http_status; end
            # The number of impacted requests.
            sig { returns(Integer) }
            def impacted_requests; end
            # The percentage of impacted requests.
            sig { returns(T.nilable(BigDecimal)) }
            def impacted_requests_percentage; end
            # The top impacted connected accounts (only for platforms).
            sig { returns(T.nilable(T::Array[TopImpactedAccount])) }
            def top_impacted_accounts; end
            def self.inner_class_types
              @inner_class_types = {top_impacted_accounts: TopImpactedAccount}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                impacted_requests_percentage: :decimal_string,
                top_impacted_accounts: {
                  kind: :array,
                  element: {kind: :object, fields: {impacted_requests_percentage: :decimal_string}},
                },
              }
            end
          end
          class ApiLatency < ::Stripe::StripeObject
            class TopImpactedAccount < ::Stripe::StripeObject
              # The account ID of the impacted connected account.
              sig { returns(String) }
              def account; end
              # The number of impacted requests.
              sig { returns(Integer) }
              def impacted_requests; end
              # The percentage of impacted requests.
              sig { returns(T.nilable(BigDecimal)) }
              def impacted_requests_percentage; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {impacted_requests_percentage: :decimal_string}
              end
            end
            # The canonical path.
            sig { returns(String) }
            def canonical_path; end
            # The HTTP method.
            sig { returns(String) }
            def http_method; end
            # The HTTP status.
            sig { returns(String) }
            def http_status; end
            # The number of impacted requests.
            sig { returns(Integer) }
            def impacted_requests; end
            # The percentage of impacted requests.
            sig { returns(T.nilable(BigDecimal)) }
            def impacted_requests_percentage; end
            # The top impacted connected accounts (only for platforms).
            sig { returns(T.nilable(T::Array[TopImpactedAccount])) }
            def top_impacted_accounts; end
            def self.inner_class_types
              @inner_class_types = {top_impacted_accounts: TopImpactedAccount}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                impacted_requests_percentage: :decimal_string,
                top_impacted_accounts: {
                  kind: :array,
                  element: {kind: :object, fields: {impacted_requests_percentage: :decimal_string}},
                },
              }
            end
          end
          class AuthorizationRateDrop < ::Stripe::StripeObject
            class Dimension < ::Stripe::StripeObject
              # Populated when type is issuer.
              sig { returns(T.nilable(String)) }
              def issuer; end
              # The type of the dimension. Determines which field in dimension_details is populated.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The type of the charge.
            sig { returns(String) }
            def charge_type; end
            # The current authorization rate percentage.
            sig { returns(BigDecimal) }
            def current_percentage; end
            # Dimensions that describe what subset of payments are impacted.
            sig { returns(T.nilable(T::Array[Dimension])) }
            def dimensions; end
            # The type of the payment method.
            sig { returns(String) }
            def payment_method_type; end
            # The previous authorization rate percentage.
            sig { returns(BigDecimal) }
            def previous_percentage; end
            def self.inner_class_types
              @inner_class_types = {dimensions: Dimension}
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
            sig { returns(String) }
            def label; end
            # The URL of the documentation.
            sig { returns(String) }
            def url; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ElementsError < ::Stripe::StripeObject
            # The type of the element.
            sig { returns(T.nilable(String)) }
            def element_type; end
            # The number of impacted sessions.
            sig { returns(Integer) }
            def impacted_sessions; end
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
              sig { returns(String) }
              def id; end
              # The type of the related object (e.g., "payment_intent").
              sig { returns(String) }
              def type; end
              # The API URL for the related object (e.g., "/v1/payment_intents/pi_...").
              sig { returns(String) }
              def url; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The context the event should have been generated for. Only present when the account is a connected account.
            sig { returns(T.nilable(String)) }
            def context; end
            # The type of event that Stripe failed to generate.
            sig { returns(String) }
            def event_type; end
            # The related object details.
            sig { returns(RelatedObject) }
            def related_object; end
            def self.inner_class_types
              @inner_class_types = {related_object: RelatedObject}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class FraudRate < ::Stripe::StripeObject
            # Fraud attack type.
            sig { returns(String) }
            def attack_type; end
            # The number of impacted requests which are detected.
            sig { returns(Integer) }
            def impacted_requests; end
            # Estimated aggregated amount for the impacted requests.
            sig { returns(::Stripe::V2::Amount) }
            def realized_fraud_amount; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class InvoiceCountDropped < ::Stripe::StripeObject
            # The observed number of invoices within the time window.
            sig { returns(BigDecimal) }
            def observed_count; end
            # The expected threshold number of invoices within the time window.
            sig { returns(BigDecimal) }
            def threshold_count; end
            # The size of the observation time window.
            sig { returns(String) }
            def time_window; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {observed_count: :decimal_string, threshold_count: :decimal_string}
            end
          end
          class IssuingAuthorizationRequestErrors < ::Stripe::StripeObject
            # Estimated aggregated amount for the approved requests.
            sig { returns(T.nilable(::Stripe::V2::Amount)) }
            def approved_amount; end
            # The number of approved requests which are impacted.
            sig { returns(T.nilable(Integer)) }
            def approved_impacted_requests; end
            # Estimated aggregated amount for the declined requests.
            sig { returns(T.nilable(::Stripe::V2::Amount)) }
            def declined_amount; end
            # The number of declined requests which are impacted.
            sig { returns(T.nilable(Integer)) }
            def declined_impacted_requests; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class IssuingAuthorizationRequestTimeout < ::Stripe::StripeObject
            # Estimated aggregated amount for the approved requests.
            sig { returns(T.nilable(::Stripe::V2::Amount)) }
            def approved_amount; end
            # The number of approved requests which are impacted.
            sig { returns(T.nilable(Integer)) }
            def approved_impacted_requests; end
            # Estimated aggregated amount for the declined requests.
            sig { returns(T.nilable(::Stripe::V2::Amount)) }
            def declined_amount; end
            # The number of declined requests which are impacted.
            sig { returns(T.nilable(Integer)) }
            def declined_impacted_requests; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class MeterEventSummariesDelayed < ::Stripe::StripeObject
            # The ingestion method.
            sig { returns(T.nilable(String)) }
            def ingestion_method; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class MetronomeNotificationLatency < ::Stripe::StripeObject
            # The impacted Metronome billing pipeline.
            sig { returns(String) }
            def pipeline; end
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
              sig { returns(String) }
              def account; end
              # The number of impacted requests.
              sig { returns(Integer) }
              def impacted_requests; end
              # The percentage of impacted requests.
              sig { returns(T.nilable(BigDecimal)) }
              def impacted_requests_percentage; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {impacted_requests_percentage: :decimal_string}
              end
            end
            # The returned error code.
            sig { returns(T.nilable(String)) }
            def error_code; end
            # The number of impacted requests.
            sig { returns(Integer) }
            def impacted_requests; end
            # The percentage of impacted requests.
            sig { returns(T.nilable(BigDecimal)) }
            def impacted_requests_percentage; end
            # The type of the payment method.
            sig { returns(String) }
            def payment_method_type; end
            # The top impacted connected accounts (only for platforms).
            sig { returns(T.nilable(T::Array[TopImpactedAccount])) }
            def top_impacted_accounts; end
            def self.inner_class_types
              @inner_class_types = {top_impacted_accounts: TopImpactedAccount}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                impacted_requests_percentage: :decimal_string,
                top_impacted_accounts: {
                  kind: :array,
                  element: {kind: :object, fields: {impacted_requests_percentage: :decimal_string}},
                },
              }
            end
          end
          class SepaDebitDelayed < ::Stripe::StripeObject
            # The number of impacted payments.
            sig { returns(Integer) }
            def impacted_payments; end
            # The percentage of impacted payments.
            sig { returns(BigDecimal) }
            def impacted_payments_percentage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {impacted_payments_percentage: :decimal_string}
            end
          end
          class TrafficVolumeDrop < ::Stripe::StripeObject
            # The total volume of payment requests within the latest observation time window.
            sig { returns(Integer) }
            def actual_traffic; end
            # The canonical path.
            sig { returns(T.nilable(String)) }
            def canonical_path; end
            # The expected volume of payment requests within the latest observation time window.
            sig { returns(T.nilable(Integer)) }
            def expected_traffic; end
            # The size of the observation time window.
            sig { returns(String) }
            def time_window; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class WebhookLatency < ::Stripe::StripeObject
            # The number of impacted requests.
            sig { returns(Integer) }
            def impacted_requests; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Populated when type is api_error.
          sig { returns(T.nilable(ApiError)) }
          def api_error; end
          # Populated when type is api_latency.
          sig { returns(T.nilable(ApiLatency)) }
          def api_latency; end
          # Populated when type is authorization_rate_drop.
          sig { returns(T.nilable(AuthorizationRateDrop)) }
          def authorization_rate_drop; end
          # Time at which the health alert was created.
          sig { returns(String) }
          def created; end
          # Links to relevant documentation for diagnosing and resolving the alert.
          sig { returns(T::Array[DocumentationLink]) }
          def documentation_links; end
          # Populated when type is elements_error.
          sig { returns(T.nilable(ElementsError)) }
          def elements_error; end
          # Populated when type is event_generation_failure.
          sig { returns(T.nilable(EventGenerationFailure)) }
          def event_generation_failure; end
          # Populated when type is fraud_rate.
          sig { returns(T.nilable(FraudRate)) }
          def fraud_rate; end
          # The grouping key for the alert.
          sig { returns(String) }
          def grouping_key; end
          # Whether the alert is linked to an incident or is a self-contained problem.
          sig { returns(String) }
          def grouping_type; end
          # Unique identifier for the health alert.
          sig { returns(String) }
          def id; end
          # Populated when type is invoice_count_dropped.
          sig { returns(T.nilable(InvoiceCountDropped)) }
          def invoice_count_dropped; end
          # Populated when type is issuing_authorization_request_errors.
          sig { returns(T.nilable(IssuingAuthorizationRequestErrors)) }
          def issuing_authorization_request_errors; end
          # Populated when type is issuing_authorization_request_timeout.
          sig { returns(T.nilable(IssuingAuthorizationRequestTimeout)) }
          def issuing_authorization_request_timeout; end
          # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
          sig { returns(T::Boolean) }
          def livemode; end
          # Populated when type is meter_event_summaries_delayed.
          sig { returns(T.nilable(MeterEventSummariesDelayed)) }
          def meter_event_summaries_delayed; end
          # Populated when type is metronome_notification_latency.
          sig { returns(T.nilable(MetronomeNotificationLatency)) }
          def metronome_notification_latency; end
          # String representing the object's type. Objects of the same type share the same value of the object field.
          sig { returns(String) }
          def object; end
          # Populated when type is payment_method_error.
          sig { returns(T.nilable(PaymentMethodError)) }
          def payment_method_error; end
          # The time when the user experience has returned to expected levels. Null if the alert is still open.
          sig { returns(T.nilable(String)) }
          def resolved_at; end
          # Populated when type is sepa_debit_delayed.
          sig { returns(T.nilable(SepaDebitDelayed)) }
          def sepa_debit_delayed; end
          # The severity of the alert.
          sig { returns(String) }
          def severity; end
          # The time when impact on the user experience was first detected.
          sig { returns(String) }
          def started_at; end
          # The current status of the alert.
          sig { returns(String) }
          def status; end
          # A short description of the alert.
          sig { returns(String) }
          def summary; end
          # Populated when type is traffic_volume_drop.
          sig { returns(T.nilable(TrafficVolumeDrop)) }
          def traffic_volume_drop; end
          # The type of the alert. Determines which sub-hash field is populated.
          sig { returns(String) }
          def type; end
          # Populated when type is webhook_latency.
          sig { returns(T.nilable(WebhookLatency)) }
          def webhook_latency; end
        end
      end
    end
  end
end