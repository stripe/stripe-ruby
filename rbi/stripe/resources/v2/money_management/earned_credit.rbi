# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # The EarnedCredit object.
      class EarnedCredit < APIResource
        class Period < ::Stripe::StripeObject
          # The end date of the period during which the credit was earned, inclusive.
          sig { returns(String) }
          def end_date; end
          # The start date of the period during which the credit was earned, inclusive.
          sig { returns(String) }
          def start_date; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RevenueShare < ::Stripe::StripeObject
          # The type of revenue share that caused the EarnedCredit.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Reward < ::Stripe::StripeObject
          # The program from which the reward was earned.
          sig { returns(String) }
          def earned_from; end
          # The Account that funded the reward.
          sig { returns(String) }
          def from_account; end
          # The OutboundPayment that delivered the reward.
          sig { returns(String) }
          def outbound_payment; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the EarnedCredit succeeded.
          sig { returns(T.nilable(String)) }
          def succeeded_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the EarnedCredit.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Time at which the EarnedCredit was created.
        sig { returns(String) }
        def created; end
        # Description of the EarnedCredit.
        sig { returns(String) }
        def description; end
        # The FinancialAccount that earned the credit.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the EarnedCredit.
        sig { returns(String) }
        def id; end
        # Has the value true if the object exists in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The period during which the credit was earned.
        sig { returns(T.nilable(Period)) }
        def period; end
        # Details about the revenue share that caused the EarnedCredit.
        sig { returns(T.nilable(RevenueShare)) }
        def revenue_share; end
        # Details about the reward that caused the EarnedCredit.
        sig { returns(T.nilable(Reward)) }
        def reward; end
        # The status of the EarnedCredit.
        sig { returns(String) }
        def status; end
        # Timestamps for EarnedCredit status transitions.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # The type of flow that caused the EarnedCredit.
        sig { returns(String) }
        def type; end
      end
    end
  end
end