# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # The EarnedCredit object.
      class EarnedCredit < APIResource
        OBJECT_NAME = "v2.money_management.earned_credit"
        def self.object_name
          "v2.money_management.earned_credit"
        end

        class Period < ::Stripe::StripeObject
          # The end date of the period during which the credit was earned, inclusive.
          attr_reader :end_date
          # The start date of the period during which the credit was earned, inclusive.
          attr_reader :start_date

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RevenueShare < ::Stripe::StripeObject
          # The type of revenue share that caused the EarnedCredit.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Reward < ::Stripe::StripeObject
          # The program from which the reward was earned.
          attr_reader :earned_from
          # The Account that funded the reward.
          attr_reader :from_account
          # The OutboundPayment that delivered the reward.
          attr_reader :outbound_payment

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the EarnedCredit succeeded.
          attr_reader :succeeded_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the EarnedCredit.
        attr_reader :amount
        # Time at which the EarnedCredit was created.
        attr_reader :created
        # Description of the EarnedCredit.
        attr_reader :description
        # The FinancialAccount that earned the credit.
        attr_reader :financial_account
        # Unique identifier for the EarnedCredit.
        attr_reader :id
        # Has the value true if the object exists in live mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The period during which the credit was earned.
        attr_reader :period
        # Details about the revenue share that caused the EarnedCredit.
        attr_reader :revenue_share
        # Details about the reward that caused the EarnedCredit.
        attr_reader :reward
        # The status of the EarnedCredit.
        attr_reader :status
        # Timestamps for EarnedCredit status transitions.
        attr_reader :status_transitions
        # The type of flow that caused the EarnedCredit.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            period: Period,
            revenue_share: RevenueShare,
            reward: Reward,
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
