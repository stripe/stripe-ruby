# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class PaymentRetryEvaluationCancelParams < ::Stripe::RequestParams
        # Optional reason for canceling the evaluation.
        sig { returns(T.nilable(String)) }
        def cancellation_reason; end
        sig { params(_cancellation_reason: T.nilable(String)).returns(T.nilable(String)) }
        def cancellation_reason=(_cancellation_reason); end
        sig { params(cancellation_reason: T.nilable(String)).void }
        def initialize(cancellation_reason: nil); end
      end
    end
  end
end