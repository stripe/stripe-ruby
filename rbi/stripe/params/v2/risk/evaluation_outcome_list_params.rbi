# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      class EvaluationOutcomeListParams < ::Stripe::RequestParams
        class AccountDetails < ::Stripe::RequestParams
          # The v2 account ID to list evaluation outcomes for.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          sig { params(account: T.nilable(String)).void }
          def initialize(account: nil); end
        end
        # Account selector for the historical outcomes requested.
        sig { returns(::Stripe::V2::Risk::EvaluationOutcomeListParams::AccountDetails) }
        def account_details; end
        sig {
          params(_account_details: ::Stripe::V2::Risk::EvaluationOutcomeListParams::AccountDetails).returns(::Stripe::V2::Risk::EvaluationOutcomeListParams::AccountDetails)
         }
        def account_details=(_account_details); end
        # Maximum number of results per page. Defaults to 10; use 1 for the latest matching outcome.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Evaluation origin to filter by. Omit to match all origins.
        sig { returns(T.nilable(String)) }
        def origin; end
        sig { params(_origin: T.nilable(String)).returns(T.nilable(String)) }
        def origin=(_origin); end
        # Evaluation type to filter by. Omit to match all types.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(account_details: ::Stripe::V2::Risk::EvaluationOutcomeListParams::AccountDetails, limit: T.nilable(Integer), origin: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(account_details: nil, limit: nil, origin: nil, type: nil); end
      end
    end
  end
end