# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # An Adjustment records a credit or debit that Stripe makes to your Financial Account balance,
      # for example to correct technical or operational errors.
      class Adjustment < APIResource
        class AdjustedFlow < ::Stripe::StripeObject
          # If applicable, the ID of the original Adjustment linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def adjustment; end
          # If applicable, the ID of the InboundTransfer linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def inbound_transfer; end
          # If applicable, the ID of the OutboundPayment linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # If applicable, the ID of the OutboundTransfer linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # If applicable, the ID of the ReceivedCredit linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def received_credit; end
          # If applicable, the ID of the ReceivedDebit linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def received_debit; end
          # Open Enum. If applicable, the type of flow linked to this Adjustment. The field matching this value will contain the ID of the flow.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details about the original flow object linked to this Adjustment, if applicable.
        # `adjusted_flow.type` identifies the kind of object. The corresponding field contains its ID:
        # for an InboundTransfer, `adjusted_flow.inbound_transfer` contains the InboundTransfer's ID.
        # Pass that ID to the `adjusted_flow` parameter on List Adjustments.
        sig { returns(T.nilable(AdjustedFlow)) }
        def adjusted_flow; end
        # The amount of the Adjustment.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision,
        # for example `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # A description of the Adjustment and its purpose.
        sig { returns(T.nilable(String)) }
        def description; end
        # The ID of the FinancialAccount whose balance this Adjustment affects.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
      end
    end
  end
end