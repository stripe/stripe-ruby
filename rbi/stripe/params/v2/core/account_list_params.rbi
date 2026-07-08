# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountListParams < ::Stripe::RequestParams
        # Filter only accounts that have all of the configurations specified. If omitted, returns all accounts regardless of which configurations they have.
        sig { returns(T.nilable(T::Array[String])) }
        def applied_configurations; end
        sig {
          params(_applied_configurations: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def applied_configurations=(_applied_configurations); end
        # Filter by whether the account is closed. If omitted, returns only Accounts that are not closed.
        sig { returns(T.nilable(T::Boolean)) }
        def closed; end
        sig { params(_closed: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def closed=(_closed); end
        # The upper limit on the number of accounts returned by the List Account request.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter by the network object related to the account. If omitted, returns all Accounts regardless of the network object they have.
        sig { returns(T.nilable(String)) }
        def related_network_object; end
        sig { params(_related_network_object: T.nilable(String)).returns(T.nilable(String)) }
        def related_network_object=(_related_network_object); end
        sig {
          params(applied_configurations: T.nilable(T::Array[String]), closed: T.nilable(T::Boolean), limit: T.nilable(Integer), related_network_object: T.nilable(String)).void
         }
        def initialize(
          applied_configurations: nil,
          closed: nil,
          limit: nil,
          related_network_object: nil
        ); end
      end
    end
  end
end