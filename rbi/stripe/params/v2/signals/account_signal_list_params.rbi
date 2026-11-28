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
        class Created < ::Stripe::RequestParams
          # Only return signals created after this RFC 3339 timestamp.
          sig { returns(T.nilable(String)) }
          def gt; end
          sig { params(_gt: T.nilable(String)).returns(T.nilable(String)) }
          def gt=(_gt); end
          # Only return signals created at or after this RFC 3339 timestamp.
          sig { returns(T.nilable(String)) }
          def gte; end
          sig { params(_gte: T.nilable(String)).returns(T.nilable(String)) }
          def gte=(_gte); end
          # Only return signals created before this RFC 3339 timestamp.
          sig { returns(T.nilable(String)) }
          def lt; end
          sig { params(_lt: T.nilable(String)).returns(T.nilable(String)) }
          def lt=(_lt); end
          # Only return signals created at or before this RFC 3339 timestamp.
          sig { returns(T.nilable(String)) }
          def lte; end
          sig { params(_lte: T.nilable(String)).returns(T.nilable(String)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(String), gte: T.nilable(String), lt: T.nilable(String), lte: T.nilable(String)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # The account or customer to list signals for. Exactly one of account_details.account or
        # account_details.customer must be provided.
        sig { returns(T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails)) }
        def account_details; end
        sig {
          params(_account_details: T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails)).returns(T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails))
         }
        def account_details=(_account_details); end
        # Filter signals by their creation timestamp before latest-per-type selection and pagination.
        sig { returns(T.nilable(::Stripe::V2::Signals::AccountSignalListParams::Created)) }
        def created; end
        sig {
          params(_created: T.nilable(::Stripe::V2::Signals::AccountSignalListParams::Created)).returns(T.nilable(::Stripe::V2::Signals::AccountSignalListParams::Created))
         }
        def created=(_created); end
        # Whether to return only the latest matching signal for each requested type. Defaults to true.
        # Set to false to include matching historical signals.
        sig { returns(T.nilable(T::Boolean)) }
        def latest_per_type; end
        sig { params(_latest_per_type: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def latest_per_type=(_latest_per_type); end
        # Maximum number of results to return per page. Defaults to 10.
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
          params(account_details: T.nilable(::Stripe::V2::Signals::AccountSignalListParams::AccountDetails), created: T.nilable(::Stripe::V2::Signals::AccountSignalListParams::Created), latest_per_type: T.nilable(T::Boolean), limit: T.nilable(Integer), type: T::Array[String]).void
         }
        def initialize(
          account_details: nil,
          created: nil,
          latest_per_type: nil,
          limit: nil,
          type: nil
        ); end
      end
    end
  end
end