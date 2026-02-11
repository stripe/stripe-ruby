# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A rate card custom pricing unit overage rate defines the conversion rate from a custom pricing unit
      # to fiat currency when credits are exhausted. This enables automatic overage charges
      # at a configurable per-unit rate.
      class RateCardCustomPricingUnitOverageRate < APIResource
        OBJECT_NAME = "v2.billing.rate_card_custom_pricing_unit_overage_rate"
        def self.object_name
          "v2.billing.rate_card_custom_pricing_unit_overage_rate"
        end

        # Timestamp of when the object was created.
        attr_reader :created
        # The ID of the custom pricing unit this overage rate applies to.
        attr_reader :custom_pricing_unit
        # Unique identifier for the object.
        attr_reader :id
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # A one-time item represents a product that can be charged as a one-time line item,
        # used for overage charges when custom pricing unit credits are exhausted.
        attr_reader :one_time_item
        # The ID of the Rate Card this overage rate belongs to.
        attr_reader :rate_card
        # The ID of the Rate Card Version this overage rate was created on.
        attr_reader :rate_card_version
        # The per-unit amount to charge for overages, represented as a decimal string in minor currency units with at most 12 decimal places.
        attr_reader :unit_amount
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
