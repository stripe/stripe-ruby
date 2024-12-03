# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # A Tax Association exposes the Tax Transactions that Stripe attempted to create on your behalf based on the PaymentIntent input
    class Association < APIResource
      class StatusDetails < Stripe::StripeObject
        class Committed < Stripe::StripeObject
          class Reversal < Stripe::StripeObject
            class StatusDetails < Stripe::StripeObject
              class Committed < Stripe::StripeObject
                # The [Tax Transaction](https://stripe.com/docs/api/tax/transaction/object)
                sig { returns(String) }
                attr_reader :transaction
              end
              class Errored < Stripe::StripeObject
                # Details on why we could not commit the reversal Tax Transaction
                sig { returns(String) }
                attr_reader :reason
                # The [Refund](https://stripe.com/docs/api/refunds/object) ID that should have created a tax reversal.
                sig { returns(String) }
                attr_reader :refund_id
              end
              # Attribute for field committed
              sig { returns(Committed) }
              attr_reader :committed
              # Attribute for field errored
              sig { returns(Errored) }
              attr_reader :errored
            end
            # Status of the attempted Tax Transaction reversal.
            sig { returns(String) }
            attr_reader :status
            # Attribute for field status_details
            sig { returns(StatusDetails) }
            attr_reader :status_details
          end
          # Attempts to create Tax Transaction reversals
          sig { returns(T::Array[Reversal]) }
          attr_reader :reversals
          # The [Tax Transaction](https://stripe.com/docs/api/tax/transaction/object)
          sig { returns(String) }
          attr_reader :transaction
        end
        class Errored < Stripe::StripeObject
          # Details on why we could not commit the Tax Transaction
          sig { returns(String) }
          attr_reader :reason
        end
        # Attribute for field committed
        sig { returns(Committed) }
        attr_reader :committed
        # Attribute for field errored
        sig { returns(Errored) }
        attr_reader :errored
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

      # Status of the Tax Association.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_details
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
  end
end