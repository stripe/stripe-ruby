# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Treasury
      class ReceivedCreditService < StripeService
        # Simulates a test ReceivedCredit initiated by a third party. In live mode, you can't directly create ReceivedCredit objects initiated by third parties.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Treasury::ReceivedCreditCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Treasury::ReceivedCredit)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end