# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardRate < APIResource
        class CustomPricingUnitAmount < Stripe::StripeObject
          # The Custom Pricing Unit object.
          sig { returns(T.nilable(Stripe::V2::Billing::CustomPricingUnit)) }
          def custom_pricing_unit_details; end
          # The id of the custom pricing unit.
          sig { returns(String) }
          def id; end
          # The unit value for the custom pricing unit, as a string.
          sig { returns(String) }
          def value; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Tier < Stripe::StripeObject
          # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def flat_amount; end
          # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
          # most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def unit_amount; end
          # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
          # be set.
          sig { returns(T.nilable(String)) }
          def up_to_decimal; end
          # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
          sig { returns(T.nilable(String)) }
          def up_to_inf; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TransformQuantity < Stripe::StripeObject
          # Divide usage by this number.
          sig { returns(Integer) }
          def divide_by; end
          # After division, round the result up or down.
          sig { returns(String) }
          def round; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # The custom pricing unit that this rate binds to.
        sig { returns(T.nilable(CustomPricingUnitAmount)) }
        def custom_pricing_unit_amount; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # A Metered Item represents a billable item whose pricing is based on usage, measured by a meter. You can use rate cards
        # to specify the pricing and create subscriptions to these items.
        sig { returns(Stripe::V2::Billing::MeteredItem) }
        def metered_item; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the Rate Card it belongs to.
        sig { returns(String) }
        def rate_card; end
        # The ID of the Rate Card Version it was created on.
        sig { returns(String) }
        def rate_card_version; end
        # Defines whether the tiering price should be graduated or volume-based. In volume-based tiering, the maximum
        # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
        # grows into new tiers. Can only be set if `tiers` is set.
        sig { returns(T.nilable(String)) }
        def tiering_mode; end
        # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
        sig { returns(T::Array[Tier]) }
        def tiers; end
        # Apply a transformation to the reported usage or set quantity before computing the amount billed.
        sig { returns(T.nilable(TransformQuantity)) }
        def transform_quantity; end
        # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
        # places. Cannot be set if `tiers` is provided.
        sig { returns(T.nilable(String)) }
        def unit_amount; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end