# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class PaymentRetryEvaluationUpdateParams < ::Stripe::RequestParams
        # PaymentIntent to update to. Must match the evaluation's signal type.
        attr_accessor :payment_intent
        # PaymentRecord to update to. Must match the evaluation's signal type.
        attr_accessor :payment_record

        def initialize(payment_intent: nil, payment_record: nil)
          @payment_intent = payment_intent
          @payment_record = payment_record
        end
      end
    end
  end
end
