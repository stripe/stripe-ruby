# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A RewardProgramEnrollment represents the binding of a connected account / Issuer Program to a shared
      # RewardProgram. RewardProgramEnrollments are platform-owned canonical objects and are active by default
      # on creation. At most one RewardProgramEnrollment may be active per Issuer Program globally, across all
      # RewardPrograms.
      class RewardProgramEnrollment < APIResource
        OBJECT_NAME = "v2.money_management.reward_program_enrollment"
        def self.object_name
          "v2.money_management.reward_program_enrollment"
        end

        class CardSpend < ::Stripe::StripeObject
          # The Issuer Program for this connected account. Immutable after creation.
          attr_reader :issuer_program

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The connected account enrolled in this RewardProgram. Immutable after creation.
        attr_reader :account
        # Issuing-specific per-enrollment configuration. Immutable after creation.
        attr_reader :card_spend
        # Time at which the RewardProgramEnrollment was created.
        attr_reader :created
        # Unique identifier for the RewardProgramEnrollment.
        attr_reader :id
        # Whether this object exists in livemode or testmode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the RewardProgram this enrollment belongs to. Immutable after creation.
        attr_reader :reward_program
        # The status of the RewardProgramEnrollment. Active by default on creation; use activate/deactivate to
        # change.
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = { card_spend: CardSpend }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
