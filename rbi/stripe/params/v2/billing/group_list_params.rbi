# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class GroupListParams < ::Stripe::RequestParams
        # Filter billing groups by Customer ID. Mutually exclusive with test_clock.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # The maximum number of results per page. Defaults to 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter billing groups by lookup keys. You can specify up to 10 lookup keys.
        sig { returns(T.nilable(T::Array[String])) }
        def lookup_keys; end
        sig {
          params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def lookup_keys=(_lookup_keys); end
        # Filter billing groups by TestClock ID. Mutually exclusive with customer.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        sig { params(_test_clock: T.nilable(String)).returns(T.nilable(String)) }
        def test_clock=(_test_clock); end
        sig {
          params(customer: T.nilable(String), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String]), test_clock: T.nilable(String)).void
         }
        def initialize(customer: nil, limit: nil, lookup_keys: nil, test_clock: nil); end
      end
    end
  end
end