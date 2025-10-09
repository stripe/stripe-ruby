# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class IntentCommitParams < ::Stripe::RequestParams
        # ID of the PaymentIntent associated with this commit.
        sig { returns(T.nilable(String)) }
        def payment_intent; end
        sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
        def payment_intent=(_payment_intent); end
        sig { params(payment_intent: T.nilable(String)).void }
        def initialize(payment_intent: nil); end
      end
    end
  end
end