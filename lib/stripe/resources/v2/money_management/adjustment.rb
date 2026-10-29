# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # An Adjustment records a credit or debit that Stripe makes to your Financial Account balance,
      # for example to correct technical or operational errors.
      class Adjustment < APIResource
        OBJECT_NAME = "v2.money_management.adjustment"
        def self.object_name
          "v2.money_management.adjustment"
        end

        class AdjustedFlow < ::Stripe::StripeObject
          # If applicable, the ID of the original Adjustment linked to this Adjustment.
          attr_reader :adjustment
          # If applicable, the ID of the InboundTransfer linked to this Adjustment.
          attr_reader :inbound_transfer
          # If applicable, the ID of the OutboundPayment linked to this Adjustment.
          attr_reader :outbound_payment
          # If applicable, the ID of the OutboundTransfer linked to this Adjustment.
          attr_reader :outbound_transfer
          # If applicable, the ID of the ReceivedCredit linked to this Adjustment.
          attr_reader :received_credit
          # If applicable, the ID of the ReceivedDebit linked to this Adjustment.
          attr_reader :received_debit
          # Open Enum. If applicable, the type of flow linked to this Adjustment. The field matching this value will contain the ID of the flow.
          attr_reader :type

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
        attr_reader :adjusted_flow
        # The amount of the Adjustment.
        attr_reader :amount
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision,
        # for example `2022-09-18T13:22:18.123Z`.
        attr_reader :created
        # A description of the Adjustment and its purpose.
        attr_reader :description
        # The ID of the FinancialAccount whose balance this Adjustment affects.
        attr_reader :financial_account
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # A link to the Stripe-hosted receipt provided when money movement is regulated under Stripe's money transmission licenses.
        # You can use this link to view the receipt for 60 days after the Adjustment is created.
        # After that, the link expires and `receipt_url` is `null`.
        attr_reader :receipt_url

        def self.inner_class_types
          @inner_class_types = { adjusted_flow: AdjustedFlow }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
