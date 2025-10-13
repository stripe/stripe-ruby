# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentMethodAttachParams < ::Stripe::RequestParams
    # The ID of the customer to which to attach the PaymentMethod.
    sig { returns(String) }
    def customer; end
    sig { params(_customer: String).returns(String) }
    def customer=(_customer); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    sig { params(customer: String, expand: T.nilable(T::Array[String])).void }
    def initialize(customer: nil, expand: nil); end
  end
end