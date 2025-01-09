# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class AssociationService < StripeService
      class FindParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Valid [PaymentIntent](https://stripe.com/docs/api/payment_intents/object) id
        sig { returns(String) }
        attr_accessor :payment_intent
        sig { params(expand: T::Array[String], payment_intent: String).void }
        def initialize(expand: nil, payment_intent: nil); end
      end
      # Finds a tax association object by PaymentIntent id.
      sig {
        params(params: T.any(::Stripe::Tax::AssociationService::FindParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Association)
       }
      def find(params = {}, opts = {}); end
    end
  end
end