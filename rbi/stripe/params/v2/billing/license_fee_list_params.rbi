# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFeeListParams < ::Stripe::RequestParams
        # Filter by licensed item.
        sig { returns(T.nilable(String)) }
        def licensed_item; end
        sig { params(_licensed_item: T.nilable(String)).returns(T.nilable(String)) }
        def licensed_item=(_licensed_item); end
        # Optionally set the maximum number of results per page. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter by lookup keys.
        # You can specify up to 10 lookup keys.
        sig { returns(T::Array[String]) }
        def lookup_keys; end
        sig { params(_lookup_keys: T::Array[String]).returns(T::Array[String]) }
        def lookup_keys=(_lookup_keys); end
        sig {
          params(licensed_item: T.nilable(String), limit: T.nilable(Integer), lookup_keys: T::Array[String]).void
         }
        def initialize(licensed_item: nil, limit: nil, lookup_keys: nil); end
      end
    end
  end
end