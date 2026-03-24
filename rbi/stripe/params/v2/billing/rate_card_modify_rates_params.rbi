# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardModifyRatesParams < ::Stripe::RequestParams
        class RatesToCreate < ::Stripe::RequestParams
          class MeteredItemData < ::Stripe::RequestParams
            class MeterSegmentCondition < ::Stripe::RequestParams
              # A Meter dimension.
              sig { returns(String) }
              def dimension; end
              sig { params(_dimension: String).returns(String) }
              def dimension=(_dimension); end
              # To count usage towards this metered item, the dimension must have this value.
              sig { returns(String) }
              def value; end
              sig { params(_value: String).returns(String) }
              def value=(_value); end
              sig { params(dimension: String, value: String).void }
              def initialize(dimension: nil, value: nil); end
            end
            # Description that customers will see in the invoice line item.
            # Maximum length of 250 characters.
            sig { returns(String) }
            def display_name; end
            sig { params(_display_name: String).returns(String) }
            def display_name=(_display_name); end
            # An internal key you can use to search for a particular metered item.
            # Must be unique among metered items.
            # Maximum length of 200 characters.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
            def lookup_key=(_lookup_key); end
            # ID of the Meter that measures usage for this Metered Item.
            sig { returns(String) }
            def meter; end
            sig { params(_meter: String).returns(String) }
            def meter=(_meter); end
            # Optional array of Meter segments to filter event dimension keys for billing.
            sig {
              returns(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData::MeterSegmentCondition])
             }
            def meter_segment_conditions; end
            sig {
              params(_meter_segment_conditions: T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData::MeterSegmentCondition]).returns(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData::MeterSegmentCondition])
             }
            def meter_segment_conditions=(_meter_segment_conditions); end
            # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
            # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
            # million events".
            # Maximum length of 100 characters.
            sig { returns(T.nilable(String)) }
            def unit_label; end
            sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
            def unit_label=(_unit_label); end
            sig {
              params(display_name: String, lookup_key: T.nilable(String), meter: String, meter_segment_conditions: T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData::MeterSegmentCondition], unit_label: T.nilable(String)).void
             }
            def initialize(
              display_name: nil,
              lookup_key: nil,
              meter: nil,
              meter_segment_conditions: nil,
              unit_label: nil
            ); end
          end
          class Tier < ::Stripe::RequestParams
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
          class TransformQuantity < ::Stripe::RequestParams
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
            def self.field_encodings
              @field_encodings = {divide_by: :int64_string}
            end
          end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The Metered Item that this rate binds to. Cannot be set if `metered_item_data` is provided, and must be set if it isn't.
          sig { returns(T.nilable(String)) }
          def metered_item; end
          sig { params(_metered_item: T.nilable(String)).returns(T.nilable(String)) }
          def metered_item=(_metered_item); end
          # The data to create a metered item that binds to this rate. Cannot be set if `metered_item` is provided, and must be set if it isn't.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData))
           }
          def metered_item_data; end
          sig {
            params(_metered_item_data: T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData)).returns(T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData))
           }
          def metered_item_data=(_metered_item_data); end
          # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
          # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
          # grows into new tiers. Can only be set if `tiers` is set.
          sig { returns(T.nilable(String)) }
          def tiering_mode; end
          sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
          def tiering_mode=(_tiering_mode); end
          # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
          sig {
            returns(T.nilable(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::Tier]))
           }
          def tiers; end
          sig {
            params(_tiers: T.nilable(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::Tier])).returns(T.nilable(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::Tier]))
           }
          def tiers=(_tiers); end
          # Apply a transformation to the reported usage or set quantity before computing the amount billed.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::TransformQuantity))
           }
          def transform_quantity; end
          sig {
            params(_transform_quantity: T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::TransformQuantity)).returns(T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::TransformQuantity))
           }
          def transform_quantity=(_transform_quantity); end
          # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
          # places. Cannot be set if `tiers` is provided.
          sig { returns(T.nilable(String)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount=(_unit_amount); end
          sig {
            params(metadata: T.nilable(T::Hash[String, String]), metered_item: T.nilable(String), metered_item_data: T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::MeteredItemData), tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::Tier]), transform_quantity: T.nilable(::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate::TransformQuantity), unit_amount: T.nilable(String)).void
           }
          def initialize(
            metadata: nil,
            metered_item: nil,
            metered_item_data: nil,
            tiering_mode: nil,
            tiers: nil,
            transform_quantity: nil,
            unit_amount: nil
          ); end
          def self.field_encodings
            @field_encodings = {
              transform_quantity: {kind: :object, fields: {divide_by: :int64_string}},
            }
          end
        end
        class RatesToDelete < ::Stripe::RequestParams
          # The ID of the RateCard rate to delete.
          sig { returns(String) }
          def id; end
          sig { params(_id: String).returns(String) }
          def id=(_id); end
          sig { params(id: String).void }
          def initialize(id: nil); end
        end
        # The list of RateCard rates to create or update. Maximum of 100 rates.
        sig { returns(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate]) }
        def rates_to_create; end
        sig {
          params(_rates_to_create: T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate]).returns(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate])
         }
        def rates_to_create=(_rates_to_create); end
        # The list of RateCard rates to delete. Maximum of 100 rates.
        sig { returns(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToDelete]) }
        def rates_to_delete; end
        sig {
          params(_rates_to_delete: T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToDelete]).returns(T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToDelete])
         }
        def rates_to_delete=(_rates_to_delete); end
        sig {
          params(rates_to_create: T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToCreate], rates_to_delete: T::Array[::Stripe::V2::Billing::RateCardModifyRatesParams::RatesToDelete]).void
         }
        def initialize(rates_to_create: nil, rates_to_delete: nil); end
        def self.field_encodings
          @field_encodings = {
            rates_to_create: {
              kind: :array,
              element: {
                kind: :object,
                fields: {transform_quantity: {kind: :object, fields: {divide_by: :int64_string}}},
              },
            },
          }
        end
      end
    end
  end
end