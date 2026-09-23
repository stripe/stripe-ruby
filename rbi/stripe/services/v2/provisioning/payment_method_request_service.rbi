# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class PaymentMethodRequestService < StripeService
        # Creates a request for a customer to authorize a new payment method.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::PaymentMethodRequestCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::PaymentMethodRequest)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end