# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module RateCards
        class RateCreateParams < Stripe::RequestParams
          class CustomPricingUnitAmount < Stripe::RequestParams
            # The id of the custom pricing unit.
            sig { returns(String) }
            def id; end
            sig { params(_id: String).returns(String) }
            def id=(_id); end
            # The unit value for the custom pricing unit, as a string.
            sig { returns(String) }
            def value; end
            sig { params(_value: String).returns(String) }
            def value=(_value); end
            sig { params(id: String, value: String).void }
            def initialize(id: nil, value: nil); end
          end
          class Tier < Stripe::RequestParams
            # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def flat_amount; end
            sig { params(_flat_amount: T.nilable(String)).returns(T.nilable(String)) }
            def flat_amount=(_flat_amount); end
            # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
            # most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def unit_amount; end
            sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
            def unit_amount=(_unit_amount); end
            # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
            # be set.
            sig { returns(T.nilable(String)) }
            def up_to_decimal; end
            sig { params(_up_to_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def up_to_decimal=(_up_to_decimal); end
            # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
            sig { returns(T.nilable(String)) }
            def up_to_inf; end
            sig { params(_up_to_inf: T.nilable(String)).returns(T.nilable(String)) }
            def up_to_inf=(_up_to_inf); end
            sig {
              params(flat_amount: T.nilable(String), unit_amount: T.nilable(String), up_to_decimal: T.nilable(String), up_to_inf: T.nilable(String)).void
             }
            def initialize(
              flat_amount: nil,
              unit_amount: nil,
              up_to_decimal: nil,
              up_to_inf: nil
            ); end
          end
          class TransformQuantity < Stripe::RequestParams
            # Divide usage by this number.
            sig { returns(Integer) }
            def divide_by; end
            sig { params(_divide_by: Integer).returns(Integer) }
            def divide_by=(_divide_by); end
            # After division, round the result up or down.
            sig { returns(String) }
            def round; end
            sig { params(_round: String).returns(String) }
            def round=(_round); end
            sig { params(divide_by: Integer, round: String).void }
            def initialize(divide_by: nil, round: nil); end
          end
          # The custom pricing unit that this rate binds to.
          sig {
            returns(T.nilable(V2::Billing::RateCards::RateCreateParams::CustomPricingUnitAmount))
           }
          def custom_pricing_unit_amount; end
          sig {
            params(_custom_pricing_unit_amount: T.nilable(V2::Billing::RateCards::RateCreateParams::CustomPricingUnitAmount)).returns(T.nilable(V2::Billing::RateCards::RateCreateParams::CustomPricingUnitAmount))
           }
          def custom_pricing_unit_amount=(_custom_pricing_unit_amount); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The Metered Item that this rate binds to.
          sig { returns(T.nilable(String)) }
          def metered_item; end
          sig { params(_metered_item: T.nilable(String)).returns(T.nilable(String)) }
          def metered_item=(_metered_item); end
          # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
          # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
          # grows into new tiers. Can only be set if `tiers` is set.
          sig { returns(T.nilable(String)) }
          def tiering_mode; end
          sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
          def tiering_mode=(_tiering_mode); end
          # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
          sig { returns(T.nilable(T::Array[V2::Billing::RateCards::RateCreateParams::Tier])) }
          def tiers; end
          sig {
            params(_tiers: T.nilable(T::Array[V2::Billing::RateCards::RateCreateParams::Tier])).returns(T.nilable(T::Array[V2::Billing::RateCards::RateCreateParams::Tier]))
           }
          def tiers=(_tiers); end
          # Apply a transformation to the reported usage or set quantity before computing the amount billed.
          sig { returns(T.nilable(V2::Billing::RateCards::RateCreateParams::TransformQuantity)) }
          def transform_quantity; end
          sig {
            params(_transform_quantity: T.nilable(V2::Billing::RateCards::RateCreateParams::TransformQuantity)).returns(T.nilable(V2::Billing::RateCards::RateCreateParams::TransformQuantity))
           }
          def transform_quantity=(_transform_quantity); end
          # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
          # places. Cannot be set if `tiers` is provided.
          sig { returns(T.nilable(String)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount=(_unit_amount); end
          sig {
            params(custom_pricing_unit_amount: T.nilable(V2::Billing::RateCards::RateCreateParams::CustomPricingUnitAmount), metadata: T.nilable(T::Hash[String, String]), metered_item: T.nilable(String), tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[V2::Billing::RateCards::RateCreateParams::Tier]), transform_quantity: T.nilable(V2::Billing::RateCards::RateCreateParams::TransformQuantity), unit_amount: T.nilable(String)).void
           }
          def initialize(
            custom_pricing_unit_amount: nil,
            metadata: nil,
            metered_item: nil,
            tiering_mode: nil,
            tiers: nil,
            transform_quantity: nil,
            unit_amount: nil
          ); end
        end
      end
    end
  end
end