# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class LicenseFeeVersion < APIResource
        OBJECT_NAME = "v2.billing.license_fee_version"
        def self.object_name
          "v2.billing.license_fee_version"
        end

        class Tier < Stripe::StripeObject
          # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
          attr_reader :flat_amount
          # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
          # most 12 decimal places.
          attr_reader :unit_amount
          # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
          # be set.
          attr_reader :up_to_decimal
          # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
          attr_reader :up_to_inf
        end

        class TransformQuantity < Stripe::StripeObject
          # Divide usage by this number.
          attr_reader :divide_by
          # After division, round the result up or down.
          attr_reader :round
        end
        # Timestamp of when the object was created.
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # The ID of the parent License Fee.
        attr_reader :license_fee_id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Defines whether the tiering price should be graduated or volume-based. In volume-based tiering, the maximum
        # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
        # grows into new tiers. Can only be set if `tiers` is set.
        attr_reader :tiering_mode
        # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
        attr_reader :tiers
        # Apply a transformation to the reported usage or set quantity before computing the amount billed.
        attr_reader :transform_quantity
        # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
        # places. Cannot be set if `tiers` is provided.
        attr_reader :unit_amount
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
