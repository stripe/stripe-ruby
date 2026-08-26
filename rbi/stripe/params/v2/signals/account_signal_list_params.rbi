# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class AccountSignalListParams < ::Stripe::RequestParams
        class AccountDetails < ::Stripe::RequestParams
          # The v2 account ID of the account.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          sig { params(account: T.nilable(String), customer: T.nilable(String)).void }
          def initialize(account: nil, customer: nil); end
        end
        # The account or customer to list signals for. Exactly one of account_details.account or
        # account_details.customer must be provided.
        sig { returns(T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails)) }
        def account_details; end
        sig {
          params(_account_details: T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails)).returns(T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails))
         }
        def account_details=(_account_details); end
        # Maximum number of results to return per page. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Signal types to filter by.
        sig { returns(T::Array[String]) }
        def type; end
        sig { params(_type: T::Array[String]).returns(T::Array[String]) }
        def type=(_type); end
        sig {
          params(account_details: T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails), limit: T.nilable(Integer), type: T::Array[String]).void
         }
        def initialize(account_details: nil, limit: nil, type: nil); end
      end
    end
  end
end