# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class PaymentRetryEvaluationCancelParams < ::Stripe::RequestParams
        # Optional reason for canceling the evaluation.
        attr_accessor :cancellation_reason

        def initialize(cancellation_reason: nil)
          @cancellation_reason = cancellation_reason
        end
      end
    end
  end
end
