# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RewardProgramEnrollmentCreateParams < ::Stripe::RequestParams
        class CardSpend < ::Stripe::RequestParams
          # The Issuer Program for this connected account. Immutable after creation.
          attr_accessor :issuer_program

          def initialize(issuer_program: nil)
            @issuer_program = issuer_program
          end
        end
        # The connected account to enroll into this RewardProgram.
        attr_accessor :account
        # Issuing-specific per-enrollment configuration.
        attr_accessor :card_spend
        # The RewardProgram to enroll into.
        attr_accessor :reward_program

        def initialize(account: nil, card_spend: nil, reward_program: nil)
          @account = account
          @card_spend = card_spend
          @reward_program = reward_program
        end
      end
    end
  end
end
