# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerPaymentMethodService < StripeService
    # Returns a list of PaymentMethods for a given Customer
    sig {
      params(id: String, params: T.any(::Stripe::CustomerPaymentMethodListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(id, params = {}, opts = {}); end

    # Retrieves a PaymentMethod object for a given Customer.
    sig {
      params(customer_id: String, id: String, params: T.any(::Stripe::CustomerPaymentMethodRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentMethod)
     }
    def retrieve(customer_id, id, params = {}, opts = {}); end
  end
end