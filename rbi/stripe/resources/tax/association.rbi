# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # A Tax Association exposes the Tax Transactions that Stripe attempted to create on your behalf based on the PaymentIntent input
    class Association < APIResource
      class TaxTransactionAttempt < Stripe::StripeObject
        class Committed < Stripe::StripeObject
          # The [Tax Transaction](https://stripe.com/docs/api/tax/transaction/object)
          sig { returns(String) }
          attr_reader :transaction
        end
        class Errored < Stripe::StripeObject
          # Details on why we couldn't commit the tax transaction.
          sig { returns(String) }
          attr_reader :reason
        end
        # Attribute for field committed
        sig { returns(Committed) }
        attr_reader :committed
        # Attribute for field errored
        sig { returns(Errored) }
        attr_reader :errored
        # The source of the tax transaction attempt. This is either a refund or a payment intent.
        sig { returns(String) }
        attr_reader :source
        # The status of the transaction attempt. This can be `errored` or `committed`.
        sig { returns(String) }
        attr_reader :status
      end
      # The [Tax Calculation](https://stripe.com/docs/api/tax/calculations/object) that was included in PaymentIntent.
      sig { returns(String) }
      attr_reader :calculation
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The [PaymentIntent](https://stripe.com/docs/api/payment_intents/object) that this Tax Association is tracking.
      sig { returns(String) }
      attr_reader :payment_intent
      # Information about the tax transactions linked to this payment intent
      sig { returns(T.nilable(T::Array[TaxTransactionAttempt])) }
      attr_reader :tax_transaction_attempts
      class FindParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Valid [PaymentIntent](https://stripe.com/docs/api/payment_intents/object) id
        sig { returns(String) }
        attr_accessor :payment_intent
        sig { params(expand: T.nilable(T::Array[String]), payment_intent: String).void }
        def initialize(expand: nil, payment_intent: nil); end
      end
      # Finds a tax association object by PaymentIntent id.
      sig {
        params(params: T.any(::Stripe::Tax::Association::FindParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Association)
       }
      def self.find(params = {}, opts = {}); end
    end
  end
end