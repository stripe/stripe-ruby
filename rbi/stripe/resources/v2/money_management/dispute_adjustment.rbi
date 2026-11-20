# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A DisputeAdjustment records a money movement associated with a Dispute.
      class DisputeAdjustment < APIResource
        class RelatedDispute < ::Stripe::StripeObject
          # The ID of the Dispute associated with this DisputeAdjustment. Present when `type` is `dispute`.
          sig { returns(T.nilable(String)) }
          def dispute; end
          # The type of Dispute associated with this DisputeAdjustment.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the DisputeAdjustment.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # The time at which the DisputeAdjustment was created.
        sig { returns(String) }
        def created; end
        # The ID of the FinancialAccount associated with the DisputeAdjustment.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the DisputeAdjustment.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The Dispute associated with this DisputeAdjustment.
        sig { returns(RelatedDispute) }
        def related_dispute; end
      end
    end
  end
end