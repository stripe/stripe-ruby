# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A RewardProgramEnrollment represents the binding of a connected account / Issuer Program to a shared
      # RewardProgram. RewardProgramEnrollments are platform-owned canonical objects and are active by default
      # on creation. At most one RewardProgramEnrollment may be active per Issuer Program globally, across all
      # RewardPrograms.
      class RewardProgramEnrollment < APIResource
        class CardSpend < ::Stripe::StripeObject
          # The Issuer Program for this connected account. Immutable after creation.
          sig { returns(String) }
          def issuer_program; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The connected account enrolled in this RewardProgram. Immutable after creation.
        sig { returns(String) }
        def account; end
        # Issuing-specific per-enrollment configuration. Immutable after creation.
        sig { returns(CardSpend) }
        def card_spend; end
        # Time at which the RewardProgramEnrollment was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the RewardProgramEnrollment.
        sig { returns(String) }
        def id; end
        # Whether this object exists in livemode or testmode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the RewardProgram this enrollment belongs to. Immutable after creation.
        sig { returns(String) }
        def reward_program; end
        # The status of the RewardProgramEnrollment. Active by default on creation; use activate/deactivate to
        # change.
        sig { returns(String) }
        def status; end
      end
    end
  end
end