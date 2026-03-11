# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Orchestration
    class PaymentAttemptService < StripeService
      # Retrieves orchestration information for the given payment attempt record (e.g. return url).
      sig {
        params(payment_attempt_record: String, params: T.any(::Stripe::Orchestration::PaymentAttemptRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Orchestration::PaymentAttempt)
       }
      def retrieve(payment_attempt_record, params = {}, opts = {}); end
    end
  end
end