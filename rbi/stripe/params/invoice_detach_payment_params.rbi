# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoiceDetachPaymentParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The ID of the PaymentIntent to detach from the invoice.
    sig { returns(T.nilable(String)) }
    def payment_intent; end
    sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
    def payment_intent=(_payment_intent); end
    sig { params(expand: T.nilable(T::Array[String]), payment_intent: T.nilable(String)).void }
    def initialize(expand: nil, payment_intent: nil); end
  end
end