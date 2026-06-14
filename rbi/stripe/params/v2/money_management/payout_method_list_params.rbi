# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodListParams < ::Stripe::RequestParams
        class UsageStatus < ::Stripe::RequestParams
          # List of payments status to filter by.
          sig { returns(T.nilable(T::Array[String])) }
          def payments; end
          sig {
            params(_payments: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def payments=(_payments); end
          # List of transfers status to filter by.
          sig { returns(T.nilable(T::Array[String])) }
          def transfers; end
          sig {
            params(_transfers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def transfers=(_transfers); end
          sig {
            params(payments: T.nilable(T::Array[String]), transfers: T.nilable(T::Array[String])).void
           }
          def initialize(payments: nil, transfers: nil); end
        end
        # The page size.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Usage status filter.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodListParams::UsageStatus))
         }
        def usage_status; end
        sig {
          params(_usage_status: T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodListParams::UsageStatus)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodListParams::UsageStatus))
         }
        def usage_status=(_usage_status); end
        sig {
          params(limit: T.nilable(Integer), usage_status: T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodListParams::UsageStatus)).void
         }
        def initialize(limit: nil, usage_status: nil); end
      end
    end
  end
end