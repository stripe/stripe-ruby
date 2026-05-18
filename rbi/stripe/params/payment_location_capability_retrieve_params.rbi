# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLocationCapabilityRetrieveParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The payment location for which the capability enables functionality.
    sig { returns(String) }
    def location; end
    sig { params(_location: String).returns(String) }
    def location=(_location); end
    sig { params(expand: T.nilable(T::Array[String]), location: String).void }
    def initialize(expand: nil, location: nil); end
  end
end