# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitCreateParams < ::Stripe::RequestParams
          # The target account for settling the SettlementAllocationIntentSplit.
          sig { returns(String) }
          def account; end
          sig { params(_account: String).returns(String) }
          def account=(_account); end
          # The amount and currency of the SettlementAllocationIntentSplit.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
          def amount=(_amount); end
          # Metadata associated with the SettlementAllocationIntentSplit.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The type of the fund transfer.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(account: String, amount: ::Stripe::V2::Amount, metadata: T.nilable(T::Hash[String, String]), type: String).void
           }
          def initialize(account: nil, amount: nil, metadata: nil, type: nil); end
        end
      end
    end
  end
end