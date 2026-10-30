# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractTermQuantityChange < APIResource
        OBJECT_NAME = "v2.billing.contract_term_quantity_change"
        def self.object_name
          "v2.billing.contract_term_quantity_change"
        end

        # The ID of the parent contract.
        attr_reader :contract
        # When this quantity change was created.
        attr_reader :created
        # When the quantity change takes effect.
        attr_reader :effective_at
        # The ID of the quantity change.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The quantity at the effective time.
        attr_reader :quantity
        # The ID of the recurring-price term.
        attr_reader :term

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = { quantity: :decimal_string }
        end
      end
    end
  end
end
