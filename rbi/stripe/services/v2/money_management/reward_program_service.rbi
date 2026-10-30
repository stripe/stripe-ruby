# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RewardProgramService < StripeService
        attr_reader :rules
        # Activates a RewardProgram, making it eligible for reward evaluation. Idempotent: calling this on a
        # RewardProgram that is already active returns 200 with the current object unchanged.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardProgramActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgram)
         }
        def activate(id, params = {}, opts = {}); end

        # Creates a new RewardProgram. RewardPrograms are inactive by default on creation; use
        # ActivateRewardProgram to make them eligible for reward evaluation.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::RewardProgramCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgram)
         }
        def create(params = {}, opts = {}); end

        # Deactivates a RewardProgram. Idempotent: calling this on a RewardProgram that is already inactive
        # returns 200 with the current object unchanged.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardProgramDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgram)
         }
        def deactivate(id, params = {}, opts = {}); end

        # Returns a list of RewardPrograms.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::RewardProgramListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing RewardProgram.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardProgramRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgram)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates the mutable fields of an existing RewardProgram. Use ActivateRewardProgram /
        # DeactivateRewardProgram to change the RewardProgram's status.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardProgramUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgram)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end