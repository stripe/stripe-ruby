# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      class EvaluationOutcomeListParams < ::Stripe::RequestParams
        class AccountDetails < ::Stripe::RequestParams
          # The v2 account ID to list evaluation outcomes for.
          attr_accessor :account

          def initialize(account: nil)
            @account = account
          end
        end
        # Account selector for the historical outcomes requested.
        attr_accessor :account_details
        # Maximum number of results per page. Defaults to 10; use 1 for the latest matching outcome.
        attr_accessor :limit
        # Evaluation origin to filter by. Omit to match all origins.
        attr_accessor :origin
        # Evaluation type to filter by. Omit to match all types.
        attr_accessor :type

        def initialize(account_details: nil, limit: nil, origin: nil, type: nil)
          @account_details = account_details
          @limit = limit
          @origin = origin
          @type = type
        end
      end
    end
  end
end
