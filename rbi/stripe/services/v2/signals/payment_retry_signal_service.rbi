# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class PaymentRetrySignalService < StripeService
        # Retrieves a payment retry signal by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::PaymentRetrySignalRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::PaymentRetrySignal)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end