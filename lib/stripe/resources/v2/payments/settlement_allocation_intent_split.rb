# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      # SettlementAllocationIntentSplit resource.
      class SettlementAllocationIntentSplit < APIResource
        OBJECT_NAME = "v2.payments.settlement_allocation_intent_split"
        def self.object_name
          "v2.payments.settlement_allocation_intent_split"
        end

        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          attr_reader :value
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Flow < ::Stripe::StripeObject
          # Type of the flow linked to the transaction which settled the SettlementAllocationIntentSplit. The field matching this value will contain the ID of the flow.
          attr_reader :type
          # If applicable, the ID of the OutboundPayment that created this transaction.
          attr_reader :outbound_payment
          # If applicable, the ID of the OutboundTransfer that created this transaction.
          attr_reader :outbound_transfer
          # If applicable, the ID of the ReceivedCredit that created this transaction.
          attr_reader :received_credit

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The account id against which the SettlementAllocationIntentSplit should be settled.
        attr_reader :account
        # The amount and currency of the SettlementAllocationIntentSplit.
        attr_reader :amount
        # Timestamp at which SettlementAllocationIntentSplit was created.
        attr_reader :created
        # Details about the Flow object that settled the split.
        attr_reader :flow
        # Unique identifier for the SettlementAllocationIntentSplit.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the SettlementAllocationIntent that this split belongs too.
        attr_reader :settlement_allocation_intent
        # The status of the SettlementAllocationIntentSplit.
        attr_reader :status
        # The type of the SettlementAllocationIntentSplit.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { amount: Amount, flow: Flow }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
