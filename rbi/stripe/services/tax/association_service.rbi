# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class AssociationService < StripeService
      class FindParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Valid [PaymentIntent](https://stripe.com/docs/api/payment_intents/object) id
        sig { returns(String) }
        def payment_intent; end
        sig { params(_payment_intent: String).returns(String) }
        def payment_intent=(_payment_intent); end
        sig { params(expand: T.nilable(T::Array[String]), payment_intent: String).void }
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