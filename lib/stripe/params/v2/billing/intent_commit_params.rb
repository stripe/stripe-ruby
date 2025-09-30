# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class IntentCommitParams < Stripe::RequestParams
        # ID of the PaymentIntent associated with this commit.
        attr_accessor :payment_intent

        def initialize(payment_intent: nil)
          @payment_intent = payment_intent
        end
      end
    end
  end
end
