# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class DisputeAdjustmentService < StripeService
        # Retrieves a list of DisputeAdjustments.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::DisputeAdjustmentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves a DisputeAdjustment by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::DisputeAdjustmentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::DisputeAdjustment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end