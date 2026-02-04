# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      # SettlementAllocationIntentSplit resource.
      class SettlementAllocationIntentSplit < APIResource
        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Flow < ::Stripe::StripeObject
          # Type of the flow linked to the transaction which settled the SettlementAllocationIntentSplit. The field matching this value will contain the ID of the flow.
          sig { returns(String) }
          def type; end
          # If applicable, the ID of the OutboundPayment that created this transaction.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # If applicable, the ID of the OutboundTransfer that created this transaction.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # If applicable, the ID of the ReceivedCredit that created this transaction.
          sig { returns(T.nilable(String)) }
          def received_credit; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The account id against which the SettlementAllocationIntentSplit should be settled.
        sig { returns(String) }
        def account; end
        # The amount and currency of the SettlementAllocationIntentSplit.
        sig { returns(Amount) }
        def amount; end
        # Timestamp at which SettlementAllocationIntentSplit was created.
        sig { returns(String) }
        def created; end
        # Details about the Flow object that settled the split.
        sig { returns(T.nilable(Flow)) }
        def flow; end
        # Unique identifier for the SettlementAllocationIntentSplit.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the SettlementAllocationIntent that this split belongs too.
        sig { returns(String) }
        def settlement_allocation_intent; end
        # The status of the SettlementAllocationIntentSplit.
        sig { returns(String) }
        def status; end
        # The type of the SettlementAllocationIntentSplit.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end