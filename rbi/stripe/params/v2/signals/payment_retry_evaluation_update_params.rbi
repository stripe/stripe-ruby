# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class PaymentRetryEvaluationUpdateParams < ::Stripe::RequestParams
        # PaymentIntent to update to. Must match the evaluation's signal type.
        sig { returns(T.nilable(String)) }
        def payment_intent; end
        sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
        def payment_intent=(_payment_intent); end
        # PaymentRecord to update to. Must match the evaluation's signal type.
        sig { returns(T.nilable(String)) }
        def payment_record; end
        sig { params(_payment_record: T.nilable(String)).returns(T.nilable(String)) }
        def payment_record=(_payment_record); end
        sig { params(payment_intent: T.nilable(String), payment_record: T.nilable(String)).void }
        def initialize(payment_intent: nil, payment_record: nil); end
      end
    end
  end
end