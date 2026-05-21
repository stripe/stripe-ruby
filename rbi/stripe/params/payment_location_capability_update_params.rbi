# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLocationCapabilityUpdateParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The location for which the capability enables functionality.
    sig { returns(String) }
    def location; end
    sig { params(_location: String).returns(String) }
    def location=(_location); end
    # To request a new capability for the location, set this to `true`. You can remove it from the location by passing `false`.
    sig { returns(T::Boolean) }
    def requested; end
    sig { params(_requested: T::Boolean).returns(T::Boolean) }
    def requested=(_requested); end
    sig {
      params(expand: T.nilable(T::Array[String]), location: String, requested: T::Boolean).void
     }
    def initialize(expand: nil, location: nil, requested: nil); end
  end
end