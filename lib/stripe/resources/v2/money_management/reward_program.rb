# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A RewardProgram represents shared card-spend cashback reward configuration for Issuing Card-Spend
      # Rewards. It is not scoped to a single Issuer Program or connected account.
      class RewardProgram < APIResource
        OBJECT_NAME = "v2.money_management.reward_program"
        def self.object_name
          "v2.money_management.reward_program"
        end

        # Time at which the RewardProgram was created.
        attr_reader :created
        # Determines who performs reward money movement after rule evaluation. Immutable after creation.
        attr_reader :fulfilled_by
        # Unique identifier for the RewardProgram.
        attr_reader :id
        # Whether this object exists in livemode or testmode.
        attr_reader :livemode
        # Display name for the RewardProgram.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The status of the RewardProgram. Inactive by default on creation; use activate/deactivate to change.
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
