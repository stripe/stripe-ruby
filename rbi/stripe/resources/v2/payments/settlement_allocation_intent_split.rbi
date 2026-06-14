# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      # SettlementAllocationIntentSplit resource.
      class SettlementAllocationIntentSplit < APIResource
        class Flow < ::Stripe::StripeObject
          # If applicable, the ID of the OutboundPayment that created this transaction.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # If applicable, the ID of the OutboundTransfer that created this transaction.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # If applicable, the ID of the ReceivedCredit that created this transaction.
          sig { returns(T.nilable(String)) }
          def received_credit; end
          # Type of the flow linked to the transaction which settled the SettlementAllocationIntentSplit. The field matching this value will contain the ID of the flow.
          sig { returns(String) }
          def type; end
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
        sig { returns(::Stripe::V2::Amount) }
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
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Metadata associated with the SettlementAllocationIntentSplit.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the SettlementAllocationIntent that this split belongs to.
        sig { returns(String) }
        def settlement_allocation_intent; end
        # The status of the SettlementAllocationIntentSplit.
        sig { returns(String) }
        def status; end
        # The type of the SettlementAllocationIntentSplit.
        sig { returns(String) }
        def type; end
      end
    end
  end
end