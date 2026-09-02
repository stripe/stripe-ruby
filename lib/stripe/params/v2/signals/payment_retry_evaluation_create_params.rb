# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class PaymentRetryEvaluationCreateParams < ::Stripe::RequestParams
        # ID of the PaymentIntent to evaluate. Mutually exclusive with payment_record.
        attr_accessor :payment_intent
        # ID of the PaymentRecord to evaluate. Mutually exclusive with payment_intent.
        attr_accessor :payment_record

        def initialize(payment_intent: nil, payment_record: nil)
          @payment_intent = payment_intent
          @payment_record = payment_record
        end
      end
    end
  end
end
