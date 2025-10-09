# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ApplicationFeeRefundCreateParams < ::Stripe::RequestParams
    # A positive integer, in _cents (or local equivalent)_, representing how much of this fee to refund. Can refund only up to the remaining unrefunded amount of the fee.
    sig { returns(T.nilable(Integer)) }
    def amount; end
    sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def amount=(_amount); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    sig {
      params(amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String])).void
     }
    def initialize(amount: nil, expand: nil, metadata: nil); end
  end
end