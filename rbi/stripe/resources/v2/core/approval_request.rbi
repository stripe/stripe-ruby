# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # An approval request represents a pending action that requires review before execution.
      class ApprovalRequest < APIResource
        class RequestedBy < ::Stripe::StripeObject
          # Stripe-defined identifier for the requester (e.g. a restricted API key token).
          sig { returns(String) }
          def id; end
          # Merchant-defined name for the requester.
          sig { returns(T.nilable(String)) }
          def name; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Review < ::Stripe::StripeObject
          class ReviewedBy < ::Stripe::StripeObject
            # Stripe-defined identifier for the reviewer (e.g. a restricted API key token).
            sig { returns(String) }
            def id; end
            # Merchant-defined name for the reviewer.
            sig { returns(String) }
            def name; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The reason provided by the reviewer.
          sig { returns(T.nilable(String)) }
          def reason; end
          # The result of the review.
          sig { returns(String) }
          def result; end
          # Timestamp when the review was performed.
          sig { returns(String) }
          def reviewed_at; end
          # The reviewer who performed the review.
          sig { returns(ReviewedBy) }
          def reviewed_by; end
          def self.inner_class_types
            @inner_class_types = {reviewed_by: ReviewedBy}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Rule < ::Stripe::StripeObject
          # The name of the rule.
          sig { returns(String) }
          def name; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          class Approved < ::Stripe::StripeObject
            # The reason provided when approving the request.
            sig { returns(T.nilable(String)) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Canceled < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ExecutionFailed < ::Stripe::StripeObject
            # The error code for the failed execution.
            sig { returns(String) }
            def code; end
            # The error message for the failed execution.
            sig { returns(String) }
            def message; end
            # The error type for the failed execution.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ExecutionStarted < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ExecutionSucceeded < ::Stripe::StripeObject
            class Result < ::Stripe::StripeObject
              # The unique identifier of the executed object.
              sig { returns(String) }
              def id; end
              # The object type of the executed resource.
              sig { returns(String) }
              def object; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The result of the successful execution.
            sig { returns(Result) }
            def result; end
            def self.inner_class_types
              @inner_class_types = {result: Result}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Expired < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Failed < ::Stripe::StripeObject
            # The error code for the failed execution.
            sig { returns(String) }
            def error_code; end
            # The error message for the failed execution.
            sig { returns(String) }
            def error_message; end
            # The error type for the failed execution.
            sig { returns(String) }
            def error_type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Pending < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Rejected < ::Stripe::StripeObject
            # The reason provided when rejecting the request.
            sig { returns(T.nilable(String)) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Succeeded < ::Stripe::StripeObject
            class Result < ::Stripe::StripeObject
              # The unique identifier of the executed object.
              sig { returns(String) }
              def id; end
              # The object type of the executed resource.
              sig { returns(String) }
              def object; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The result of the successful execution.
            sig { returns(Result) }
            def result; end
            def self.inner_class_types
              @inner_class_types = {result: Result}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Deprecated: use requires_execution status instead.
          sig { returns(T.nilable(Approved)) }
          def approved; end
          # Deprecated: use canceled status instead.
          sig { returns(T.nilable(Canceled)) }
          def canceled; end
          # Deprecated: use failed status instead.
          sig { returns(T.nilable(ExecutionFailed)) }
          def execution_failed; end
          # Deprecated: use requires_execution status instead.
          sig { returns(T.nilable(ExecutionStarted)) }
          def execution_started; end
          # Deprecated: use succeeded status instead.
          sig { returns(T.nilable(ExecutionSucceeded)) }
          def execution_succeeded; end
          # Deprecated: use expired status instead.
          sig { returns(T.nilable(Expired)) }
          def expired; end
          # Details when the approval request failed.
          sig { returns(T.nilable(Failed)) }
          def failed; end
          # Deprecated: use requires_review status instead.
          sig { returns(T.nilable(Pending)) }
          def pending; end
          # Deprecated: use rejected status instead.
          sig { returns(T.nilable(Rejected)) }
          def rejected; end
          # Details when the approval request succeeded.
          sig { returns(T.nilable(Succeeded)) }
          def succeeded; end
          def self.inner_class_types
            @inner_class_types = {
              approved: Approved,
              canceled: Canceled,
              execution_failed: ExecutionFailed,
              execution_started: ExecutionStarted,
              execution_succeeded: ExecutionSucceeded,
              expired: Expired,
              failed: Failed,
              pending: Pending,
              rejected: Rejected,
              succeeded: Succeeded,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp when the approval request was canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Timestamp when the approval request expired.
          sig { returns(T.nilable(String)) }
          def expired_at; end
          # Timestamp when the approval request failed.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # Timestamp when the approval request was rejected.
          sig { returns(T.nilable(String)) }
          def rejected_at; end
          # Timestamp when the approval request moved to requires_execution status.
          sig { returns(T.nilable(String)) }
          def requires_execution_at; end
          # Timestamp when the approval request succeeded.
          sig { returns(T.nilable(String)) }
          def succeeded_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The action that was requested.
        sig { returns(String) }
        def action; end
        # Time this ApprovalRequest was created.
        sig { returns(String) }
        def created; end
        # The URL to the dashboard for this ApprovalRequest.
        sig { returns(T.nilable(String)) }
        def dashboard_url; end
        # A description of the approval request.
        sig { returns(T.nilable(String)) }
        def description; end
        # The timestamp at which this ApprovalRequest will expire.
        sig { returns(String) }
        def expires_at; end
        # The unique identifier for this ApprovalRequest.
        sig { returns(String) }
        def id; end
        # Whether this ApprovalRequest is livemode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The requester of this ApprovalRequest.
        sig { returns(RequestedBy) }
        def requested_by; end
        # The review of this ApprovalRequest if it has been reviewed.
        sig { returns(T.nilable(Review)) }
        def review; end
        # The rule associated with this ApprovalRequest.
        sig { returns(T.nilable(Rule)) }
        def rule; end
        # The status of this ApprovalRequest.
        sig { returns(String) }
        def status; end
        # The details of the status of this ApprovalRequest.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # The transitions of the status of this ApprovalRequest.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
      end
    end
  end
end