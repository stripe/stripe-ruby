# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A FundingIntent represents the lifecycle of adding funds to a FinancialAccount.
      class FundingIntent < APIResource
        class Check < ::Stripe::StripeObject
          # The ID of a File containing the back image of the check.
          sig { returns(T.nilable(String)) }
          def back_image; end
          # The ID of a File containing the front image of the check.
          sig { returns(T.nilable(String)) }
          def front_image; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class LatestAttempt < ::Stripe::StripeObject
          # The ID of the InboundFunding created by the attempt.
          sig { returns(String) }
          def inbound_funding; end
          # The type of underlying money movement created by the attempt.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class NextAction < ::Stripe::StripeObject
          class HandleFailure < ::Stripe::StripeObject
            # The reason the attempt failed.
            sig { returns(String) }
            def reason; end
            # Whether you can retry the FundingIntent.
            sig { returns(T::Boolean) }
            def retryable; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ProvideNewCheck < ::Stripe::StripeObject
            # A human-readable description of the factor.
            sig { returns(String) }
            def description; end
            # A machine-readable reason for the factor.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ProvideNewImages < ::Stripe::StripeObject
            class AmountIssue < ::Stripe::StripeObject
              # A human-readable description of the factor.
              sig { returns(String) }
              def description; end
              # A machine-readable reason for the factor.
              sig { returns(String) }
              def reason; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class BackImage < ::Stripe::StripeObject
              # A human-readable description of the factor.
              sig { returns(String) }
              def description; end
              # A machine-readable reason for the factor.
              sig { returns(String) }
              def reason; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class FrontImage < ::Stripe::StripeObject
              # A human-readable description of the factor.
              sig { returns(String) }
              def description; end
              # A machine-readable reason for the factor.
              sig { returns(String) }
              def reason; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Issues detected in the check amount.
            sig { returns(T::Array[AmountIssue]) }
            def amount_issues; end
            # Issues detected in the back image of the check.
            sig { returns(T::Array[BackImage]) }
            def back_image; end
            # Issues detected in the front image of the check.
            sig { returns(T::Array[FrontImage]) }
            def front_image; end
            def self.inner_class_types
              @inner_class_types = {
                amount_issues: AmountIssue,
                back_image: BackImage,
                front_image: FrontImage,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details for handling a failed attempt.
          sig { returns(T.nilable(HandleFailure)) }
          def handle_failure; end
          # The reason that you must provide a different check.
          sig { returns(T.nilable(ProvideNewCheck)) }
          def provide_new_check; end
          # Issues that require corrected check images or an updated amount.
          sig { returns(T.nilable(ProvideNewImages)) }
          def provide_new_images; end
          # The type of action required.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              handle_failure: HandleFailure,
              provide_new_check: ProvideNewCheck,
              provide_new_images: ProvideNewImages,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class NextConfirmation < ::Stripe::StripeObject
          class RequiresReview < ::Stripe::StripeObject
            class Factor < ::Stripe::StripeObject
              # A human-readable description of the factor.
              sig { returns(String) }
              def description; end
              # A machine-readable reason for the factor.
              sig { returns(String) }
              def reason; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Factors that require review.
            sig { returns(T::Array[Factor]) }
            def factors; end
            def self.inner_class_types
              @inner_class_types = {factors: Factor}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Factors to review before confirming the FundingIntent.
          sig { returns(T.nilable(RequiresReview)) }
          def requires_review; end
          # The type of confirmation required.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {requires_review: RequiresReview}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class SettlementTiming < ::Stripe::StripeObject
          # The number of days to delay the availability of funds after processing completes.
          sig { returns(T.nilable(Integer)) }
          def delay_days_override; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          class Canceled < ::Stripe::StripeObject
            # The reason the FundingIntent was canceled.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details present when the FundingIntent is canceled.
          sig { returns(T.nilable(Canceled)) }
          def canceled; end
          def self.inner_class_types
            @inner_class_types = {canceled: Canceled}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Time at which the FundingIntent entered the `canceled` status.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Time at which the FundingIntent entered the `processing` status.
          sig { returns(T.nilable(String)) }
          def processing_at; end
          # Time at which the FundingIntent entered the `requires_action` status.
          sig { returns(T.nilable(String)) }
          def requires_action_at; end
          # Time at which the FundingIntent entered the `requires_confirmation` status.
          sig { returns(T.nilable(String)) }
          def requires_confirmation_at; end
          # Time at which the FundingIntent entered the `succeeded` status.
          sig { returns(T.nilable(String)) }
          def succeeded_at; end
          # Time at which the FundingIntent entered the `validating` status.
          sig { returns(T.nilable(String)) }
          def validating_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class To < ::Stripe::StripeObject
          # The currency of the destination FinancialAccount balance.
          sig { returns(String) }
          def currency; end
          # The ID of the FinancialAccount that receives the funds.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount to add to the destination.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Whether you can cancel the FundingIntent.
        sig { returns(T::Boolean) }
        def cancelable; end
        # Details for a check FundingIntent.
        sig { returns(T.nilable(Check)) }
        def check; end
        # How the FundingIntent is confirmed after validation.
        sig { returns(String) }
        def confirmation_method; end
        # Time at which the FundingIntent was created.
        sig { returns(String) }
        def created; end
        # An arbitrary string attached to the FundingIntent.
        sig { returns(T.nilable(String)) }
        def description; end
        # Unique identifier for the FundingIntent.
        sig { returns(String) }
        def id; end
        # Details about the latest underlying money movement attempt.
        sig { returns(T.nilable(LatestAttempt)) }
        def latest_attempt; end
        # Whether the FundingIntent exists in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of key-value pairs attached to the FundingIntent.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # The action required to continue processing the FundingIntent.
        sig { returns(T.nilable(NextAction)) }
        def next_action; end
        # The information to review before confirming the FundingIntent.
        sig { returns(T.nilable(NextConfirmation)) }
        def next_confirmation; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Controls when the funds become available after processing.
        sig { returns(T.nilable(SettlementTiming)) }
        def settlement_timing; end
        # The current status of the FundingIntent.
        sig { returns(String) }
        def status; end
        # Additional details about the current status.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Timestamps for the FundingIntent's status transitions.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # The destination for the funds.
        sig { returns(To) }
        def to; end
        # The type of FundingIntent.
        sig { returns(String) }
        def type; end
      end
    end
  end
end