# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class FrMealVouchersOnboardingCreateParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. This cannot be changed after creation of this object.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # Name of the restaurant. This cannot be changed after creation of this object.
    sig { returns(String) }
    def name; end
    sig { params(_name: String).returns(String) }
    def name=(_name); end
    # Postal code of the restaurant.
    sig { returns(String) }
    def postal_code; end
    sig { params(_postal_code: String).returns(String) }
    def postal_code=(_postal_code); end
    # SIRET number associated with the restaurant. This cannot be changed after creation of this object.
    sig { returns(String) }
    def siret; end
    sig { params(_siret: String).returns(String) }
    def siret=(_siret); end
    sig {
      params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, postal_code: String, siret: String).void
     }
    def initialize(expand: nil, metadata: nil, name: nil, postal_code: nil, siret: nil); end
  end
end