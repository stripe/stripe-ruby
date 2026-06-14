# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitListParams < ::Stripe::RequestParams
          # The page size.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter the SettlementAllocationIntentSplits by status.
          sig { returns(T.nilable(String)) }
          def status; end
          sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
          def status=(_status); end
          sig { params(limit: T.nilable(Integer), status: T.nilable(String)).void }
          def initialize(limit: nil, status: nil); end
        end
      end
    end
  end
end