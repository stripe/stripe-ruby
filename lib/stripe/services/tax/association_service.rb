# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class AssociationService < StripeService
      class FindParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Valid [PaymentIntent](https://stripe.com/docs/api/payment_intents/object) id
        attr_accessor :payment_intent

        def initialize(expand: nil, payment_intent: nil)
          @expand = expand
          @payment_intent = payment_intent
        end
      end

      # Finds a tax association object by PaymentIntent id.
      def find(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/tax/associations/find",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
