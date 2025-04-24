# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Adjustments represent Stripe-initiated credits or debits to a user balance. They might be used to amend balances due to technical or operational error.
      class Adjustment < APIResource
        OBJECT_NAME = "v2.money_management.adjustment"
        def self.object_name
          "v2.money_management.adjustment"
        end

        class AdjustedFlow < Stripe::StripeObject
          # Closed Enum. If applicable, the type of flow linked to this Adjustment. The field matching this value will contain the ID of the flow.
          attr_reader :type
          # If applicable, the ID of the Adjustment linked to this Adjustment.
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
        end
        # If applicable, contains information about the original flow linked to this Adjustment.
        attr_reader :adjusted_flow
        # The amount of the Adjustment.
        attr_reader :amount
        # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # Description of the Adjustment and what it was used for.
        attr_reader :description
        # The FinancialAccount that this adjustment is for.
        attr_reader :financial_account
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # A link to the Stripe-hosted receipt that is provided when money movement is considered regulated under Stripe’s money transmission licenses. The receipt link remains active for 60 days from the Adjustment creation date. After this period, the link will expire and the receipt url value will be null.
        attr_reader :receipt_url
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
