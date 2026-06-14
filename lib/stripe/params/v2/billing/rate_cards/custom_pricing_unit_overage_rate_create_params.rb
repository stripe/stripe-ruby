# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module RateCards
        class CustomPricingUnitOverageRateCreateParams < ::Stripe::RequestParams
          # The ID of the custom pricing unit this overage rate applies to.
          attr_accessor :custom_pricing_unit
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The ID of the one-time item to use for overage line items.
          attr_accessor :one_time_item
          # The per-unit amount to charge for overages, represented as a decimal string in minor currency units with at most 12 decimal places.
          attr_accessor :unit_amount

          def initialize(
            custom_pricing_unit: nil,
            metadata: nil,
            one_time_item: nil,
            unit_amount: nil
          )
            @custom_pricing_unit = custom_pricing_unit
            @metadata = metadata
            @one_time_item = one_time_item
            @unit_amount = unit_amount
          end
        end
      end
    end
  end
end
