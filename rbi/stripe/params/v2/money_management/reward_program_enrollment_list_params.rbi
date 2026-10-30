# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RewardProgramEnrollmentListParams < ::Stripe::RequestParams
        # Maximum number of results to return. Default: 10. Valid range: 1-100.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter by RewardProgram. Omitting this field returns platform-wide enrollments across all
        # RewardPrograms.
        sig { returns(T.nilable(String)) }
        def reward_program; end
        sig { params(_reward_program: T.nilable(String)).returns(T.nilable(String)) }
        def reward_program=(_reward_program); end
        # Filter by RewardProgramEnrollment status.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(limit: T.nilable(Integer), reward_program: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(limit: nil, reward_program: nil, status: nil); end
      end
    end
  end
end