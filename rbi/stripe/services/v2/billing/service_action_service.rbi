# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ServiceActionService < StripeService
        # Create a Service Action object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ServiceActionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::ServiceAction)
         }
        def create(params = {}, opts = {}); end

        # Retrieve a Service Action object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ServiceActionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::ServiceAction)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a ServiceAction object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ServiceActionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::ServiceAction)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end