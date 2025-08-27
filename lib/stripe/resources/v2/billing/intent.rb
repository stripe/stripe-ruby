# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class Intent < APIResource
        OBJECT_NAME = "v2.billing.intent"
        def self.object_name
          "v2.billing.intent"
        end

        class AmountDetails < Stripe::StripeObject
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          attr_reader :currency
          # Amount of discount applied.
          attr_reader :discount
          # Amount of shipping charges.
          attr_reader :shipping
          # Subtotal amount before tax and discounts.
          attr_reader :subtotal
          # Amount of tax.
          attr_reader :tax
          # Total amount for the Billing Intent.
          attr_reader :total
        end

        class StatusTransitions < Stripe::StripeObject
          # Time at which the Billing Intent was canceled.
          attr_reader :canceled_at
          # Time at which the Billing Intent was committed.
          attr_reader :committed_at
          # Time at which the Billing Intent was drafted.
          attr_reader :drafted_at
          # Time at which the Billing Intent was reserved.
          attr_reader :reserved_at
        end
        # Breakdown of the amount for this Billing Intent.
        attr_reader :amount_details
        # Time at which the object was created.
        attr_reader :created
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_reader :currency
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Current status of the Billing Intent.
        attr_reader :status
        # Timestamps for status transitions of the Billing Intent.
        attr_reader :status_transitions
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # ID of an existing Cadence to use.
        attr_reader :cadence
      end
    end
  end
end
