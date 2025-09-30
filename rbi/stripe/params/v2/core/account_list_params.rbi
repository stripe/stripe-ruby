# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountListParams < Stripe::RequestParams
        # Filter only accounts that have all of the configurations specified. If omitted, returns all accounts regardless of which configurations they have.
        sig { returns(T.nilable(T::Array[String])) }
        def applied_configurations; end
        sig {
          params(_applied_configurations: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def applied_configurations=(_applied_configurations); end
        # The upper limit on the number of accounts returned by the List Account request.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig {
          params(applied_configurations: T.nilable(T::Array[String]), limit: T.nilable(Integer)).void
         }
        def initialize(applied_configurations: nil, limit: nil); end
      end
    end
  end
end