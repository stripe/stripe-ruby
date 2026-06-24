# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A quantity change object for a pricing line, returned by ListContractPricingLineQuantityChanges.
      class ContractPricingLineQuantityChange < APIResource
        OBJECT_NAME = "v2.billing.contract_pricing_line_quantity_change"
        def self.object_name
          "v2.billing.contract_pricing_line_quantity_change"
        end

        class Pricing < ::Stripe::StripeObject
          # The ID of the V1 price. Present when `type` is `price`.
          attr_reader :price
          # The type of pricing.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The timestamp when this quantity change object was created.
        attr_reader :created
        # The timestamp when this quantity change takes effect.
        attr_reader :effective_at
        # The ID of the quantity change object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The pricing configuration for the associated pricing line.
        attr_reader :pricing
        # The ID of the pricing line associated with this quantity change.
        attr_reader :pricing_line
        # The quantity at the effective time.
        attr_reader :quantity

        def self.inner_class_types
          @inner_class_types = { pricing: Pricing }
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
