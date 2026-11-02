# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module RewardPrograms
        class RuleService < StripeService
          # Activates a RewardProgramRule. At most one RewardProgramRule may be active per RewardProgram at a
          # time. Idempotent: calling this on a RewardProgramRule that is already active returns 200 with the
          # current object unchanged.
          sig {
            params(reward_program_id: String, id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardPrograms::RuleActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramRule)
           }
          def activate(reward_program_id, id, params = {}, opts = {}); end

          # Creates a new RewardProgramRule under the given RewardProgram. RewardProgramRules are inactive by
          # default on creation; use ActivateRewardProgramRule to make them eligible for reward evaluation.
          sig {
            params(reward_program_id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramRule)
           }
          def create(reward_program_id, params = {}, opts = {}); end

          # Deactivates a RewardProgramRule. Idempotent: calling this on a RewardProgramRule that is already
          # inactive returns 200 with the current object unchanged.
          sig {
            params(reward_program_id: String, id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardPrograms::RuleDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramRule)
           }
          def deactivate(reward_program_id, id, params = {}, opts = {}); end

          # Returns a list of RewardProgramRules for a RewardProgram.
          sig {
            params(reward_program_id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardPrograms::RuleListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(reward_program_id, params = {}, opts = {}); end

          # Retrieves the details of an existing RewardProgramRule.
          sig {
            params(reward_program_id: String, id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardPrograms::RuleRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramRule)
           }
          def retrieve(reward_program_id, id, params = {}, opts = {}); end

          # Updates the mutable fields of an existing RewardProgramRule. Use ActivateRewardProgramRule /
          # DeactivateRewardProgramRule to change the RewardProgramRule's status.
          sig {
            params(reward_program_id: String, id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardPrograms::RuleUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramRule)
           }
          def update(reward_program_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end