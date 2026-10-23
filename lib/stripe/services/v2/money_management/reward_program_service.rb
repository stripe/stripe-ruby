# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RewardProgramService < StripeService
        attr_reader :rules

        def initialize(requestor)
          super
          @rules = Stripe::V2::MoneyManagement::RewardPrograms::RuleService.new(@requestor)
        end

        # Activates a RewardProgram, making it eligible for reward evaluation. Idempotent: calling this on a
        # RewardProgram that is already active returns 200 with the current object unchanged.
        def activate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/reward_programs/%<id>s/activate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a new RewardProgram. RewardPrograms are inactive by default on creation; use
        # ActivateRewardProgram to make them eligible for reward evaluation.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/reward_programs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Deactivates a RewardProgram. Idempotent: calling this on a RewardProgram that is already inactive
        # returns 200 with the current object unchanged.
        def deactivate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/reward_programs/%<id>s/deactivate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of RewardPrograms.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/reward_programs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing RewardProgram.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/reward_programs/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the mutable fields of an existing RewardProgram. Use ActivateRewardProgram /
        # DeactivateRewardProgram to change the RewardProgram's status.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/reward_programs/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
