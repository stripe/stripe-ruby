# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Association exposes the Tax Transactions that Stripe attempted to create on your behalf based on the PaymentIntent input
    class Association < APIResource
      class StatusDetails < Stripe::StripeObject
        class Committed < Stripe::StripeObject
          class Reversal < Stripe::StripeObject
            class StatusDetails < Stripe::StripeObject
              class Committed < Stripe::StripeObject
                sig { returns(String) }
                attr_reader :transaction
              end
              class Errored < Stripe::StripeObject
                sig { returns(String) }
                attr_reader :reason
                sig { returns(String) }
                attr_reader :refund_id
              end
              sig { returns(Committed) }
              attr_reader :committed
              sig { returns(Errored) }
              attr_reader :errored
            end
            sig { returns(String) }
            attr_reader :status
            sig { returns(StatusDetails) }
            attr_reader :status_details
          end
          sig { returns(T::Array[Reversal]) }
          attr_reader :reversals
          sig { returns(String) }
          attr_reader :transaction
        end
        class Errored < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :reason
        end
        sig { returns(Committed) }
        attr_reader :committed
        sig { returns(Errored) }
        attr_reader :errored
      end
      sig { returns(String) }
      # The [Tax Calculation](https://stripe.com/docs/api/tax/calculations/object) that was included in PaymentIntent.
      attr_reader :calculation
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The [PaymentIntent](https://stripe.com/docs/api/payment_intents/object) that this Tax Association is tracking.
      attr_reader :payment_intent
      sig { returns(String) }
      # Status of the Tax Association.
      attr_reader :status
      sig { returns(StatusDetails) }
      # Attribute for field status_details
      attr_reader :status_details
    end
  end
end