# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class QuoteMarkStaleParams < Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Reason the Quote is being marked stale.
    sig { returns(T.nilable(String)) }
    def reason; end
    sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
    def reason=(_reason); end
    sig { params(expand: T.nilable(T::Array[String]), reason: T.nilable(String)).void }
    def initialize(expand: nil, reason: nil); end
  end
end