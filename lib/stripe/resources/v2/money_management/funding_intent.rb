# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A FundingIntent represents the lifecycle of adding funds to a FinancialAccount.
      class FundingIntent < APIResource
        OBJECT_NAME = "v2.money_management.funding_intent"
        def self.object_name
          "v2.money_management.funding_intent"
        end

        class Check < ::Stripe::StripeObject
          # The ID of a File containing the back image of the check.
          attr_reader :back_image
          # The ID of a File containing the front image of the check.
          attr_reader :front_image

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class LatestAttempt < ::Stripe::StripeObject
          # The ID of the InboundFunding created by the attempt.
          attr_reader :inbound_funding
          # The type of underlying money movement created by the attempt.
          attr_reader :type

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
            attr_reader :reason
            # Whether you can retry the FundingIntent.
            attr_reader :retryable

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class ProvideNewCheck < ::Stripe::StripeObject
            # A human-readable description of the factor.
            attr_reader :description
            # A machine-readable reason for the factor.
            attr_reader :reason

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
              attr_reader :description
              # A machine-readable reason for the factor.
              attr_reader :reason

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class BackImage < ::Stripe::StripeObject
              # A human-readable description of the factor.
              attr_reader :description
              # A machine-readable reason for the factor.
              attr_reader :reason

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class FrontImage < ::Stripe::StripeObject
              # A human-readable description of the factor.
              attr_reader :description
              # A machine-readable reason for the factor.
              attr_reader :reason

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Issues detected in the check amount.
            attr_reader :amount_issues
            # Issues detected in the back image of the check.
            attr_reader :back_image
            # Issues detected in the front image of the check.
            attr_reader :front_image

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
          attr_reader :handle_failure
          # The reason that you must provide a different check.
          attr_reader :provide_new_check
          # Issues that require corrected check images or an updated amount.
          attr_reader :provide_new_images
          # The type of action required.
          attr_reader :type

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
              attr_reader :description
              # A machine-readable reason for the factor.
              attr_reader :reason

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Factors that require review.
            attr_reader :factors

            def self.inner_class_types
              @inner_class_types = { factors: Factor }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Factors to review before confirming the FundingIntent.
          attr_reader :requires_review
          # The type of confirmation required.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { requires_review: RequiresReview }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class SettlementTiming < ::Stripe::StripeObject
          # The number of days to delay the availability of funds after processing completes.
          attr_reader :delay_days_override

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
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details present when the FundingIntent is canceled.
          attr_reader :canceled

          def self.inner_class_types
            @inner_class_types = { canceled: Canceled }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Time at which the FundingIntent entered the `canceled` status.
          attr_reader :canceled_at
          # Time at which the FundingIntent entered the `processing` status.
          attr_reader :processing_at
          # Time at which the FundingIntent entered the `requires_action` status.
          attr_reader :requires_action_at
          # Time at which the FundingIntent entered the `requires_confirmation` status.
          attr_reader :requires_confirmation_at
          # Time at which the FundingIntent entered the `succeeded` status.
          attr_reader :succeeded_at
          # Time at which the FundingIntent entered the `validating` status.
          attr_reader :validating_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class To < ::Stripe::StripeObject
          # The currency of the destination FinancialAccount balance.
          attr_reader :currency
          # The ID of the FinancialAccount that receives the funds.
          attr_reader :financial_account

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount to add to the destination.
        attr_reader :amount
        # Whether you can cancel the FundingIntent.
        attr_reader :cancelable
        # Details for a check FundingIntent.
        attr_reader :check
        # How the FundingIntent is confirmed after validation.
        attr_reader :confirmation_method
        # Time at which the FundingIntent was created.
        attr_reader :created
        # An arbitrary string attached to the FundingIntent.
        attr_reader :description
        # Unique identifier for the FundingIntent.
        attr_reader :id
        # Details about the latest underlying money movement attempt.
        attr_reader :latest_attempt
        # Whether the FundingIntent exists in live mode.
        attr_reader :livemode
        # Set of key-value pairs attached to the FundingIntent.
        attr_reader :metadata
        # The action required to continue processing the FundingIntent.
        attr_reader :next_action
        # The information to review before confirming the FundingIntent.
        attr_reader :next_confirmation
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Controls when the funds become available after processing.
        attr_reader :settlement_timing
        # The current status of the FundingIntent.
        attr_reader :status
        # Additional details about the current status.
        attr_reader :status_details
        # Timestamps for the FundingIntent's status transitions.
        attr_reader :status_transitions
        # The destination for the funds.
        attr_reader :to
        # The type of FundingIntent.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            check: Check,
            latest_attempt: LatestAttempt,
            next_action: NextAction,
            next_confirmation: NextConfirmation,
            settlement_timing: SettlementTiming,
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
            to: To,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
