# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A DisputeAdjustment records a money movement associated with a Dispute.
      class DisputeAdjustment < APIResource
        OBJECT_NAME = "v2.money_management.dispute_adjustment"
        def self.object_name
          "v2.money_management.dispute_adjustment"
        end

        class RelatedDispute < ::Stripe::StripeObject
          # The ID of the Dispute associated with this DisputeAdjustment. Present when `type` is `dispute`.
          attr_reader :dispute
          # The type of Dispute associated with this DisputeAdjustment.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the DisputeAdjustment.
        attr_reader :amount
        # The time at which the DisputeAdjustment was created.
        attr_reader :created
        # The ID of the FinancialAccount associated with the DisputeAdjustment.
        attr_reader :financial_account
        # Unique identifier for the DisputeAdjustment.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The Dispute associated with this DisputeAdjustment.
        attr_reader :related_dispute

        def self.inner_class_types
          @inner_class_types = { related_dispute: RelatedDispute }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
