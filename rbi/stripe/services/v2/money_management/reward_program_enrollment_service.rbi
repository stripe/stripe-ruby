# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RewardProgramEnrollmentService < StripeService
        # Activates a RewardProgramEnrollment. At most one RewardProgramEnrollment may be active per Issuer
        # Program globally, across all RewardPrograms. Idempotent: calling this on a RewardProgramEnrollment
        # that is already active returns 200 with the current object unchanged.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardProgramEnrollmentActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramEnrollment)
         }
        def activate(id, params = {}, opts = {}); end

        # Creates a new RewardProgramEnrollment, binding a connected account / Issuer Program to a
        # RewardProgram. RewardProgramEnrollments are active by default on creation.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::RewardProgramEnrollmentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramEnrollment)
         }
        def create(params = {}, opts = {}); end

        # Deactivates a RewardProgramEnrollment. Idempotent: calling this on a RewardProgramEnrollment that is
        # already inactive returns 200 with the current object unchanged.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardProgramEnrollmentDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramEnrollment)
         }
        def deactivate(id, params = {}, opts = {}); end

        # Returns a list of RewardProgramEnrollments. Omitting `reward_program` returns platform-wide
        # enrollments across all RewardPrograms.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::RewardProgramEnrollmentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing RewardProgramEnrollment.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RewardProgramEnrollmentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RewardProgramEnrollment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end