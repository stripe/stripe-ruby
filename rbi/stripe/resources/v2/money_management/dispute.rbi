# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A Dispute tracks a claim challenging a money movement on behalf of a FinancialAccount holder.
      class Dispute < APIResource
        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the Dispute became lost. Only present if status == lost.
          sig { returns(T.nilable(String)) }
          def lost_at; end
          # The time at which the Dispute became won. Only present if status == won.
          sig { returns(T.nilable(String)) }
          def won_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Target < ::Stripe::StripeObject
          # If applicable, the ID of the ReceivedDebit being disputed.
          sig { returns(T.nilable(String)) }
          def received_debit; end
          # The type of money movement being disputed.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the disputed money movement.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # The time at which the dispute was created.
        sig { returns(String) }
        def created; end
        # Additional explanation for the dispute, if supplied.
        sig { returns(T.nilable(String)) }
        def explanation; end
        # The FinancialAccount associated with the disputed money movement.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the Dispute.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The FinancialAccount holder's reason for disputing the money movement.
        sig { returns(String) }
        def reason; end
        # The current status of the dispute.
        sig { returns(String) }
        def status; end
        # Timestamps describing when the dispute changed status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # The money movement being disputed.
        sig { returns(Target) }
        def target; end
      end
    end
  end
end