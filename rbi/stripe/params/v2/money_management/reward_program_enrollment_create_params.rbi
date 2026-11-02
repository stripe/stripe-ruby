# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RewardProgramEnrollmentCreateParams < ::Stripe::RequestParams
        class CardSpend < ::Stripe::RequestParams
          # The Issuer Program for this connected account. Immutable after creation.
          sig { returns(String) }
          def issuer_program; end
          sig { params(_issuer_program: String).returns(String) }
          def issuer_program=(_issuer_program); end
          sig { params(issuer_program: String).void }
          def initialize(issuer_program: nil); end
        end
        # The connected account to enroll into this RewardProgram.
        sig { returns(String) }
        def account; end
        sig { params(_account: String).returns(String) }
        def account=(_account); end
        # Issuing-specific per-enrollment configuration.
        sig {
          returns(::Stripe::V2::MoneyManagement::RewardProgramEnrollmentCreateParams::CardSpend)
         }
        def card_spend; end
        sig {
          params(_card_spend: ::Stripe::V2::MoneyManagement::RewardProgramEnrollmentCreateParams::CardSpend).returns(::Stripe::V2::MoneyManagement::RewardProgramEnrollmentCreateParams::CardSpend)
         }
        def card_spend=(_card_spend); end
        # The RewardProgram to enroll into.
        sig { returns(String) }
        def reward_program; end
        sig { params(_reward_program: String).returns(String) }
        def reward_program=(_reward_program); end
        sig {
          params(account: String, card_spend: ::Stripe::V2::MoneyManagement::RewardProgramEnrollmentCreateParams::CardSpend, reward_program: String).void
         }
        def initialize(account: nil, card_spend: nil, reward_program: nil); end
      end
    end
  end
end