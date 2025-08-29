# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class Intent < APIResource
        class AmountDetails < Stripe::StripeObject
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          sig { returns(String) }
          attr_reader :currency
          # Amount of discount applied.
          sig { returns(String) }
          attr_reader :discount
          # Amount of shipping charges.
          sig { returns(String) }
          attr_reader :shipping
          # Subtotal amount before tax and discounts.
          sig { returns(String) }
          attr_reader :subtotal
          # Amount of tax.
          sig { returns(String) }
          attr_reader :tax
          # Total amount for the Billing Intent.
          sig { returns(String) }
          attr_reader :total
        end
        class StatusTransitions < Stripe::StripeObject
          # Time at which the Billing Intent was canceled.
          sig { returns(T.nilable(String)) }
          attr_reader :canceled_at
          # Time at which the Billing Intent was committed.
          sig { returns(T.nilable(String)) }
          attr_reader :committed_at
          # Time at which the Billing Intent was drafted.
          sig { returns(T.nilable(String)) }
          attr_reader :drafted_at
          # Time at which the Billing Intent was reserved.
          sig { returns(T.nilable(String)) }
          attr_reader :reserved_at
        end
        # Breakdown of the amount for this Billing Intent.
        sig { returns(AmountDetails) }
        attr_reader :amount_details
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        attr_reader :currency
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Current status of the Billing Intent.
        sig { returns(String) }
        attr_reader :status
        # Timestamps for status transitions of the Billing Intent.
        sig { returns(StatusTransitions) }
        attr_reader :status_transitions
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
        # ID of an existing Cadence to use.
        sig { returns(T.nilable(String)) }
        attr_reader :cadence
      end
    end
  end
end