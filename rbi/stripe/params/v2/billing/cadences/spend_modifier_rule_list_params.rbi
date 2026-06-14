# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Cadences
        class SpendModifierRuleListParams < ::Stripe::RequestParams
          # Return only spend modifiers that are effective at the specified timestamp.
          sig { returns(T.nilable(String)) }
          def effective_at; end
          sig { params(_effective_at: T.nilable(String)).returns(T.nilable(String)) }
          def effective_at=(_effective_at); end
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          sig { params(effective_at: T.nilable(String), limit: T.nilable(Integer)).void }
          def initialize(effective_at: nil, limit: nil); end
        end
      end
    end
  end
end