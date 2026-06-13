# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CadenceListParams < ::Stripe::RequestParams
        class Payer < ::Stripe::RequestParams
          # The ID of the Customer object. If provided, only cadences that specifically reference the provided customer ID will be returned.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(customer: T.nilable(String), type: String).void }
          def initialize(customer: nil, type: nil); end
        end
        # Additional resource to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # Optionally set the maximum number of results per page. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Only return the cadences with these lookup_keys, if any exist. You can specify up to 10 lookup_keys.
        # Mutually exclusive with `test_clock` and `payer`.
        sig { returns(T.nilable(T::Array[String])) }
        def lookup_keys; end
        sig {
          params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def lookup_keys=(_lookup_keys); end
        # If provided, only cadences that specifically reference the payer will be returned. Mutually exclusive with `test_clock` and `lookup_keys`.
        sig { returns(T.nilable(::Stripe::V2::Billing::CadenceListParams::Payer)) }
        def payer; end
        sig {
          params(_payer: T.nilable(::Stripe::V2::Billing::CadenceListParams::Payer)).returns(T.nilable(::Stripe::V2::Billing::CadenceListParams::Payer))
         }
        def payer=(_payer); end
        # If provided, only cadences that specifically reference the provided test clock ID (via the
        # customer's test clock) will be returned.
        # Mutually exclusive with `payer`.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        sig { params(_test_clock: T.nilable(String)).returns(T.nilable(String)) }
        def test_clock=(_test_clock); end
        sig {
          params(include: T.nilable(T::Array[String]), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String]), payer: T.nilable(::Stripe::V2::Billing::CadenceListParams::Payer), test_clock: T.nilable(String)).void
         }
        def initialize(include: nil, limit: nil, lookup_keys: nil, payer: nil, test_clock: nil); end
      end
    end
  end
end