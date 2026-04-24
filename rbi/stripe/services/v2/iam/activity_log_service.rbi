# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ActivityLogService < StripeService
        # List activity logs of an account.
        sig {
          params(params: T.any(::Stripe::V2::Iam::ActivityLogListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end
      end
    end
  end
end