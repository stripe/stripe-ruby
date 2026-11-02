# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module RewardPrograms
        class RuleListParams < ::Stripe::RequestParams
          # Maximum number of results to return. Default: 10. Valid range: 1-100.
          attr_accessor :limit
          # Filter by RewardProgramRule status.
          attr_accessor :status

          def initialize(limit: nil, status: nil)
            @limit = limit
            @status = status
          end
        end
      end
    end
  end
end
