# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module RateCards
        class RateService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            sig { returns(T.nilable(Integer)) }
            def limit; end
            sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def limit=(_limit); end
            # Optionally filter by a Metered Item.
            sig { returns(T.nilable(String)) }
            def metered_item; end
            sig { params(_metered_item: T.nilable(String)).returns(T.nilable(String)) }
            def metered_item=(_metered_item); end
            # Optionally filter by a RateCard version. If not specified, defaults to the latest version.
            sig { returns(T.nilable(String)) }
            def rate_card_version; end
            sig { params(_rate_card_version: T.nilable(String)).returns(T.nilable(String)) }
            def rate_card_version=(_rate_card_version); end
            sig {
              params(limit: T.nilable(Integer), metered_item: T.nilable(String), rate_card_version: T.nilable(String)).void
             }
            def initialize(limit: nil, metered_item: nil, rate_card_version: nil); end
          end
          class CreateParams < Stripe::RequestParams
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
              returns(T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::CustomPricingUnitAmount))
             }
            def custom_pricing_unit_amount; end
            sig {
              params(_custom_pricing_unit_amount: T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::CustomPricingUnitAmount)).returns(T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::CustomPricingUnitAmount))
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
            # The ID of the price object to take price information from. The price must have the same interval as the rate card.
            # Updates to the Price will not be reflected in the Rate Card or its rates.
            sig { returns(T.nilable(String)) }
            def price; end
            sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
            def price=(_price); end
            # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
            # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
            # grows into new tiers. Can only be set if `tiers` is set.
            sig { returns(T.nilable(String)) }
            def tiering_mode; end
            sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
            def tiering_mode=(_tiering_mode); end
            # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Billing::RateCards::RateService::CreateParams::Tier]))
             }
            def tiers; end
            sig {
              params(_tiers: T.nilable(T::Array[::Stripe::V2::Billing::RateCards::RateService::CreateParams::Tier])).returns(T.nilable(T::Array[::Stripe::V2::Billing::RateCards::RateService::CreateParams::Tier]))
             }
            def tiers=(_tiers); end
            # Apply a transformation to the reported usage or set quantity before computing the amount billed.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::TransformQuantity))
             }
            def transform_quantity; end
            sig {
              params(_transform_quantity: T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::TransformQuantity)).returns(T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::TransformQuantity))
             }
            def transform_quantity=(_transform_quantity); end
            # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
            # places. Cannot be set if `tiers` is provided.
            sig { returns(T.nilable(String)) }
            def unit_amount; end
            sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
            def unit_amount=(_unit_amount); end
            sig {
              params(custom_pricing_unit_amount: T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::CustomPricingUnitAmount), metadata: T.nilable(T::Hash[String, String]), metered_item: T.nilable(String), price: T.nilable(String), tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::RateCards::RateService::CreateParams::Tier]), transform_quantity: T.nilable(::Stripe::V2::Billing::RateCards::RateService::CreateParams::TransformQuantity), unit_amount: T.nilable(String)).void
             }
            def initialize(
              custom_pricing_unit_amount: nil,
              metadata: nil,
              metered_item: nil,
              price: nil,
              tiering_mode: nil,
              tiers: nil,
              transform_quantity: nil,
              unit_amount: nil
            ); end
          end
          class DeleteParams < Stripe::RequestParams; end
          class RetrieveParams < Stripe::RequestParams; end
          # Set the Rate for a Metered Item on the latest version of a Rate Card object. This will create a new Rate Card version
          # if the Metered Item already has a rate on the Rate Card.
          sig {
            params(rate_card_id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardRate)
           }
          def create(rate_card_id, params = {}, opts = {}); end

          # Remove an existing Rate from a Rate Card. This will create a new Rate Card Version without that Rate.
          sig {
            params(rate_card_id: String, id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::DeletedObject)
           }
          def delete(rate_card_id, id, params = {}, opts = {}); end

          # List all Rates associated with a Rate Card for a specific version (defaults to latest). Rates remain active for all subsequent versions until a new rate is created for the same Metered Item.
          sig {
            params(rate_card_id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(rate_card_id, params = {}, opts = {}); end

          # Retrieve a Rate object.
          sig {
            params(rate_card_id: String, id: String, params: T.any(::Stripe::V2::Billing::RateCards::RateService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardRate)
           }
          def retrieve(rate_card_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end