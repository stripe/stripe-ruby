# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountRejectParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Whether to pause payouts on the account as part of the rejection. Defaults to `pause`. Use `none` to leave payouts enabled.
    sig { returns(T.nilable(String)) }
    def payouts_action; end
    sig { params(_payouts_action: T.nilable(String)).returns(T.nilable(String)) }
    def payouts_action=(_payouts_action); end
    # The reason for rejecting the account. Can be `fraud`, `terms_of_service`, or `other`.
    sig { returns(String) }
    def reason; end
    sig { params(_reason: String).returns(String) }
    def reason=(_reason); end
    sig {
      params(expand: T.nilable(T::Array[String]), payouts_action: T.nilable(String), reason: String).void
     }
    def initialize(expand: nil, payouts_action: nil, reason: nil); end
  end
end