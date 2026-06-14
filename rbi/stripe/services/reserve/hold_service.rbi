# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    class HoldService < StripeService
      # Returns a list of ReserveHolds previously created. The ReserveHolds are returned in sorted order, with the most recent ReserveHolds appearing first.
      sig {
        params(params: T.any(::Stripe::Reserve::HoldListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieve a ReserveHold.
      sig {
        params(id: String, params: T.any(::Stripe::Reserve::HoldRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Reserve::Hold)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end