# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Association exposes the Tax Transactions that Stripe attempted to create on your behalf based on the PaymentIntent input
    class Association < APIResource
      OBJECT_NAME = "tax.association"
      def self.object_name
        "tax.association"
      end

      class StatusDetails < Stripe::StripeObject
        class Committed < Stripe::StripeObject
          class Reversal < Stripe::StripeObject
            class StatusDetails < Stripe::StripeObject
              class Committed < Stripe::StripeObject
                # The [Tax Transaction](https://stripe.com/docs/api/tax/transaction/object)
                attr_reader :transaction
              end

              class Errored < Stripe::StripeObject
                # Details on why we could not commit the reversal Tax Transaction
                attr_reader :reason

                # The [Refund](https://stripe.com/docs/api/refunds/object) ID that should have created a tax reversal.
                attr_reader :refund_id
              end
              # Attribute for field committed
              attr_reader :committed

              # Attribute for field errored
              attr_reader :errored
            end
            # Status of the attempted Tax Transaction reversal.
            attr_reader :status

            # Attribute for field status_details
            attr_reader :status_details
          end
          # Attempts to create Tax Transaction reversals
          attr_reader :reversals

          # The [Tax Transaction](https://stripe.com/docs/api/tax/transaction/object)
          attr_reader :transaction
        end

        class Errored < Stripe::StripeObject
          # Details on why we could not commit the Tax Transaction
          attr_reader :reason
        end
        # Attribute for field committed
        attr_reader :committed

        # Attribute for field errored
        attr_reader :errored
      end

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
      # The [Tax Calculation](https://stripe.com/docs/api/tax/calculations/object) that was included in PaymentIntent.
      attr_reader :calculation

      # Unique identifier for the object.
      attr_reader :id

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # The [PaymentIntent](https://stripe.com/docs/api/payment_intents/object) that this Tax Association is tracking.
      attr_reader :payment_intent

      # Status of the Tax Association.
      attr_reader :status

      # Attribute for field status_details
      attr_reader :status_details

      # Finds a tax association object by PaymentIntent id.
      def self.find(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/tax/associations/find",
          params: params,
          opts: opts
        )
      end
    end
  end
end
