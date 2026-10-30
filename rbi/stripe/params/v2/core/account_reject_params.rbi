# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountRejectParams < ::Stripe::RequestParams
        # Additional fields to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # Operations that remain unaffected by the rejection. Repeated requests replace the previous set; omitting this field clears any preserved operations.
        sig { returns(T.nilable(T::Array[String])) }
        def preserve_operations; end
        sig {
          params(_preserve_operations: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def preserve_operations=(_preserve_operations); end
        # The reason for rejecting the Account. Repeated requests replace the previously recorded reason.
        sig { returns(String) }
        def reason; end
        sig { params(_reason: String).returns(String) }
        def reason=(_reason); end
        sig {
          params(include: T.nilable(T::Array[String]), preserve_operations: T.nilable(T::Array[String]), reason: String).void
         }
        def initialize(include: nil, preserve_operations: nil, reason: nil); end
      end
    end
  end
end