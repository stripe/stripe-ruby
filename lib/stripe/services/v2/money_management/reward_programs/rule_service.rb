# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module RewardPrograms
        class RuleService < StripeService
          # Activates a RewardProgramRule. At most one RewardProgramRule may be active per RewardProgram at a
          # time. Idempotent: calling this on a RewardProgramRule that is already active returns 200 with the
          # current object unchanged.
          def activate(reward_program_id, id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/money_management/reward_programs/%<reward_program_id>s/rules/%<id>s/activate", { reward_program_id: CGI.escape(reward_program_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Creates a new RewardProgramRule under the given RewardProgram. RewardProgramRules are inactive by
          # default on creation; use ActivateRewardProgramRule to make them eligible for reward evaluation.
          def create(reward_program_id, params = {}, opts = {})
            unless params.is_a?(Stripe::RequestParams)
              params = ::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams.coerce_params(params)
            end

            request(
              method: :post,
              path: format("/v2/money_management/reward_programs/%<reward_program_id>s/rules", { reward_program_id: CGI.escape(reward_program_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Deactivates a RewardProgramRule. Idempotent: calling this on a RewardProgramRule that is already
          # inactive returns 200 with the current object unchanged.
          def deactivate(reward_program_id, id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/money_management/reward_programs/%<reward_program_id>s/rules/%<id>s/deactivate", { reward_program_id: CGI.escape(reward_program_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Returns a list of RewardProgramRules for a RewardProgram.
          def list(reward_program_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/money_management/reward_programs/%<reward_program_id>s/rules", { reward_program_id: CGI.escape(reward_program_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves the details of an existing RewardProgramRule.
          def retrieve(reward_program_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/money_management/reward_programs/%<reward_program_id>s/rules/%<id>s", { reward_program_id: CGI.escape(reward_program_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Updates the mutable fields of an existing RewardProgramRule. Use ActivateRewardProgramRule /
          # DeactivateRewardProgramRule to change the RewardProgramRule's status.
          def update(reward_program_id, id, params = {}, opts = {})
            unless params.is_a?(Stripe::RequestParams)
              params = ::Stripe::V2::MoneyManagement::RewardPrograms::RuleUpdateParams.coerce_params(params)
            end

            request(
              method: :post,
              path: format("/v2/money_management/reward_programs/%<reward_program_id>s/rules/%<id>s", { reward_program_id: CGI.escape(reward_program_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
