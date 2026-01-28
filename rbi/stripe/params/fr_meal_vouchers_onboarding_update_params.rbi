# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class FrMealVouchersOnboardingUpdateParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Corrected Postal code of the restaurant.
    sig { returns(String) }
    def postal_code; end
    sig { params(_postal_code: String).returns(String) }
    def postal_code=(_postal_code); end
    sig { params(expand: T.nilable(T::Array[String]), postal_code: String).void }
    def initialize(expand: nil, postal_code: nil); end
  end
end