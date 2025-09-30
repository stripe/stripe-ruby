# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ProfileListParams < Stripe::RequestParams
        # Filter billing profiles by a customer. Mutually exclusive
        # with `lookup_keys` and `default_payment_method`.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # Filter billing profiles by a default payment method. Mutually exclusive
        # with `customer` and `lookup_keys`.
        sig { returns(T.nilable(String)) }
        def default_payment_method; end
        sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def default_payment_method=(_default_payment_method); end
        # Optionally set the maximum number of results per page. Defaults to 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter billing profiles by lookup keys. Mutually exclusive
        # with `customer` and `default_payment_method`.
        # You can specify up to 10 lookup_keys.
        sig { returns(T::Array[String]) }
        def lookup_keys; end
        sig { params(_lookup_keys: T::Array[String]).returns(T::Array[String]) }
        def lookup_keys=(_lookup_keys); end
        # Filter billing profiles by status. Can be combined
        # with all other filters. If not provided, all billing profiles will be returned.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(customer: T.nilable(String), default_payment_method: T.nilable(String), limit: T.nilable(Integer), lookup_keys: T::Array[String], status: T.nilable(String)).void
         }
        def initialize(
          customer: nil,
          default_payment_method: nil,
          limit: nil,
          lookup_keys: nil,
          status: nil
        ); end
      end
    end
  end
end