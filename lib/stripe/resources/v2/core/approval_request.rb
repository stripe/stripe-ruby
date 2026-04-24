# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # An approval request represents a pending action that requires review before execution.
      class ApprovalRequest < APIResource
        OBJECT_NAME = "v2.core.approval_request"
        def self.object_name
          "v2.core.approval_request"
        end

        class RequestedBy < ::Stripe::StripeObject
          # Stripe-defined identifier for the requester (e.g. a restricted API key token).
          attr_reader :id
          # Merchant-defined name for the requester.
          attr_reader :name

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
            attr_reader :id
            # Merchant-defined name for the reviewer.
            attr_reader :name

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The reason provided by the reviewer.
          attr_reader :reason
          # The result of the review.
          attr_reader :result
          # Timestamp when the review was performed.
          attr_reader :reviewed_at
          # The reviewer who performed the review.
          attr_reader :reviewed_by

          def self.inner_class_types
            @inner_class_types = { reviewed_by: ReviewedBy }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Rule < ::Stripe::StripeObject
          # The name of the rule.
          attr_reader :name

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
            attr_reader :reason

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
            attr_reader :code
            # The error message for the failed execution.
            attr_reader :message
            # The error type for the failed execution.
            attr_reader :type

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
              attr_reader :id
              # The object type of the executed resource.
              attr_reader :object

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The result of the successful execution.
            attr_reader :result

            def self.inner_class_types
              @inner_class_types = { result: Result }
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
            attr_reader :error_code
            # The error message for the failed execution.
            attr_reader :error_message
            # The error type for the failed execution.
            attr_reader :error_type

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
            attr_reader :reason

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
              attr_reader :id
              # The object type of the executed resource.
              attr_reader :object

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The result of the successful execution.
            attr_reader :result

            def self.inner_class_types
              @inner_class_types = { result: Result }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Deprecated: use requires_execution status instead.
          attr_reader :approved
          # Deprecated: use canceled status instead.
          attr_reader :canceled
          # Deprecated: use failed status instead.
          attr_reader :execution_failed
          # Deprecated: use requires_execution status instead.
          attr_reader :execution_started
          # Deprecated: use succeeded status instead.
          attr_reader :execution_succeeded
          # Deprecated: use expired status instead.
          attr_reader :expired
          # Details when the approval request failed.
          attr_reader :failed
          # Deprecated: use requires_review status instead.
          attr_reader :pending
          # Deprecated: use rejected status instead.
          attr_reader :rejected
          # Details when the approval request succeeded.
          attr_reader :succeeded

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
          attr_reader :canceled_at
          # Timestamp when the approval request expired.
          attr_reader :expired_at
          # Timestamp when the approval request failed.
          attr_reader :failed_at
          # Timestamp when the approval request was rejected.
          attr_reader :rejected_at
          # Timestamp when the approval request moved to requires_execution status.
          attr_reader :requires_execution_at
          # Timestamp when the approval request succeeded.
          attr_reader :succeeded_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The action that was requested.
        attr_reader :action
        # Time this ApprovalRequest was created.
        attr_reader :created
        # The URL to the dashboard for this ApprovalRequest.
        attr_reader :dashboard_url
        # A description of the approval request.
        attr_reader :description
        # The timestamp at which this ApprovalRequest will expire.
        attr_reader :expires_at
        # The unique identifier for this ApprovalRequest.
        attr_reader :id
        # Whether this ApprovalRequest is livemode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The requester of this ApprovalRequest.
        attr_reader :requested_by
        # The review of this ApprovalRequest if it has been reviewed.
        attr_reader :review
        # The rule associated with this ApprovalRequest.
        attr_reader :rule
        # The status of this ApprovalRequest.
        attr_reader :status
        # The details of the status of this ApprovalRequest.
        attr_reader :status_details
        # The transitions of the status of this ApprovalRequest.
        attr_reader :status_transitions

        def self.inner_class_types
          @inner_class_types = {
            requested_by: RequestedBy,
            review: Review,
            rule: Rule,
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
