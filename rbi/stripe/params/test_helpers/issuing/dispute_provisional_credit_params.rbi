# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class DisputeProvisionalCreditParams < ::Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Override the deadline by which the platform must grant a provisional credit to the consumer.
        sig { returns(T.nilable(Integer)) }
        def grant_deadline; end
        sig { params(_grant_deadline: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def grant_deadline=(_grant_deadline); end
        # Override the earliest time after which the platform may revoke the provisional credit.
        sig { returns(T.nilable(Integer)) }
        def revocable_after; end
        sig { params(_revocable_after: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def revocable_after=(_revocable_after); end
        sig {
          params(expand: T.nilable(T::Array[String]), grant_deadline: T.nilable(Integer), revocable_after: T.nilable(Integer)).void
         }
        def initialize(expand: nil, grant_deadline: nil, revocable_after: nil); end
      end
    end
  end
end