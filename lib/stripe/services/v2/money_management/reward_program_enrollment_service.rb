# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RewardProgramEnrollmentService < StripeService
        # Activates a RewardProgramEnrollment. At most one RewardProgramEnrollment may be active per Issuer
        # Program globally, across all RewardPrograms. Idempotent: calling this on a RewardProgramEnrollment
        # that is already active returns 200 with the current object unchanged.
        def activate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/reward_program_enrollments/%<id>s/activate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a new RewardProgramEnrollment, binding a connected account / Issuer Program to a
        # RewardProgram. RewardProgramEnrollments are active by default on creation.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/reward_program_enrollments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Deactivates a RewardProgramEnrollment. Idempotent: calling this on a RewardProgramEnrollment that is
        # already inactive returns 200 with the current object unchanged.
        def deactivate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/reward_program_enrollments/%<id>s/deactivate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of RewardProgramEnrollments. Omitting `reward_program` returns platform-wide
        # enrollments across all RewardPrograms.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/reward_program_enrollments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing RewardProgramEnrollment.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/reward_program_enrollments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
