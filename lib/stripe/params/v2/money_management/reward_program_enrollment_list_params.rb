# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RewardProgramEnrollmentListParams < ::Stripe::RequestParams
        # Maximum number of results to return. Default: 10. Valid range: 1-100.
        attr_accessor :limit
        # Filter by RewardProgram. Omitting this field returns platform-wide enrollments across all
        # RewardPrograms.
        attr_accessor :reward_program
        # Filter by RewardProgramEnrollment status.
        attr_accessor :status

        def initialize(limit: nil, reward_program: nil, status: nil)
          @limit = limit
          @reward_program = reward_program
          @status = status
        end
      end
    end
  end
end
