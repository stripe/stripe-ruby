# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A Dispute tracks a claim challenging a money movement on behalf of a FinancialAccount holder.
      class Dispute < APIResource
        OBJECT_NAME = "v2.money_management.dispute"
        def self.object_name
          "v2.money_management.dispute"
        end

        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the Dispute became lost. Only present if status == lost.
          attr_reader :lost_at
          # The time at which the Dispute became won. Only present if status == won.
          attr_reader :won_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Target < ::Stripe::StripeObject
          # If applicable, the ID of the ReceivedDebit being disputed.
          attr_reader :received_debit
          # The type of money movement being disputed.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the disputed money movement.
        attr_reader :amount
        # The time at which the dispute was created.
        attr_reader :created
        # Additional explanation for the dispute, if supplied.
        attr_reader :explanation
        # The FinancialAccount associated with the disputed money movement.
        attr_reader :financial_account
        # Unique identifier for the Dispute.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The FinancialAccount holder's reason for disputing the money movement.
        attr_reader :reason
        # The current status of the dispute.
        attr_reader :status
        # Timestamps describing when the dispute changed status.
        attr_reader :status_transitions
        # The money movement being disputed.
        attr_reader :target

        def self.inner_class_types
          @inner_class_types = { status_transitions: StatusTransitions, target: Target }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
