# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      class FormService < StripeService
        # Retrieves a risk Form by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Risk::FormRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Risk::Form)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Submits a response to a risk Form.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Risk::FormUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Risk::Form)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end