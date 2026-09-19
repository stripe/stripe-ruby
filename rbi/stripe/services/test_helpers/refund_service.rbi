# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class RefundService < StripeService
      # Expire a refund with a status of requires_action.
      sig {
        params(id: String, params: T.any(::Stripe::TestHelpers::RefundExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Refund)
       }
      def expire(id, params = {}, opts = {}); end
    end
  end
end