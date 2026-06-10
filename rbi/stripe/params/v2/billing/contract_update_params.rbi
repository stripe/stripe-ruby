# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractUpdateParams < ::Stripe::RequestParams
        class LicenseQuantityAction < ::Stripe::RequestParams
          class EffectiveAt < ::Stripe::RequestParams
            # The timestamp for the effective at.
            sig { returns(T.nilable(String)) }
            def timestamp; end
            sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
            def timestamp=(_timestamp); end
            # The type of the effective at.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(timestamp: T.nilable(String), type: String).void }
            def initialize(timestamp: nil, type: nil); end
          end
          class Set < ::Stripe::RequestParams
            # The quantity to set.
            sig { returns(Integer) }
            def quantity; end
            sig { params(_quantity: Integer).returns(Integer) }
            def quantity=(_quantity); end
            sig { params(quantity: Integer).void }
            def initialize(quantity: nil); end
          end
          # The effective at for the license quantity action.
          sig {
            returns(::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::EffectiveAt)
           }
          def effective_at; end
          sig {
            params(_effective_at: ::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::EffectiveAt).returns(::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::EffectiveAt)
           }
          def effective_at=(_effective_at); end
          # The ID of the license pricing.
          sig { returns(T.nilable(String)) }
          def license_pricing_id; end
          sig { params(_license_pricing_id: T.nilable(String)).returns(T.nilable(String)) }
          def license_pricing_id=(_license_pricing_id); end
          # The lookup key for the license pricing.
          sig { returns(T.nilable(String)) }
          def license_pricing_lookup_key; end
          sig { params(_license_pricing_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def license_pricing_lookup_key=(_license_pricing_lookup_key); end
          # The type of the license pricing.
          sig { returns(String) }
          def license_pricing_type; end
          sig { params(_license_pricing_type: String).returns(String) }
          def license_pricing_type=(_license_pricing_type); end
          # The pricing line ID for the license quantity action.
          sig { returns(T.nilable(String)) }
          def pricing_line; end
          sig { params(_pricing_line: T.nilable(String)).returns(T.nilable(String)) }
          def pricing_line=(_pricing_line); end
          # The pricing line lookup key for the license quantity action.
          sig { returns(T.nilable(String)) }
          def pricing_line_lookup_key; end
          sig { params(_pricing_line_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def pricing_line_lookup_key=(_pricing_line_lookup_key); end
          # The set quantity for the license quantity action.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::Set))
           }
          def set; end
          sig {
            params(_set: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::Set)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::Set))
           }
          def set=(_set); end
          # The type of the license quantity action.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(effective_at: ::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::EffectiveAt, license_pricing_id: T.nilable(String), license_pricing_lookup_key: T.nilable(String), license_pricing_type: String, pricing_line: T.nilable(String), pricing_line_lookup_key: T.nilable(String), set: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction::Set), type: String).void
           }
          def initialize(
            effective_at: nil,
            license_pricing_id: nil,
            license_pricing_lookup_key: nil,
            license_pricing_type: nil,
            pricing_line: nil,
            pricing_line_lookup_key: nil,
            set: nil,
            type: nil
          ); end
        end
        class PricingLineAction < ::Stripe::RequestParams
          class Add < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of end time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class Pricing < ::Stripe::RequestParams
              class PriceDetails < ::Stripe::RequestParams
                # The ID of the V1 price.
                sig { returns(String) }
                def price; end
                sig { params(_price: String).returns(String) }
                def price=(_price); end
                # The quantity for the price. Only applicable for licensed prices.
                sig { returns(T.nilable(Integer)) }
                def quantity; end
                sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def quantity=(_quantity); end
                sig { params(price: String, quantity: T.nilable(Integer)).void }
                def initialize(price: nil, quantity: nil); end
              end
              # V1 price details. Required if `type` is `price`.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails))
               }
              def price_details; end
              sig {
                params(_price_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails))
               }
              def price_details=(_price_details); end
              # The type of pricing.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(price_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails), type: String).void
               }
              def initialize(price_details: nil, type: nil); end
            end
            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of start time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            # The end time for the pricing line.
            sig {
              returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::EndsAt)
             }
            def ends_at; end
            sig {
              params(_ends_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::EndsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::EndsAt)
             }
            def ends_at=(_ends_at); end
            # A lookup key for the pricing line.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
            def lookup_key=(_lookup_key); end
            # Metadata for the pricing line.
            sig { returns(T.nilable(T::Hash[String, String])) }
            def metadata; end
            sig {
              params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
             }
            def metadata=(_metadata); end
            # The pricing configuration for the pricing line.
            sig {
              returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing)
             }
            def pricing; end
            sig {
              params(_pricing: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing)
             }
            def pricing=(_pricing); end
            # The start time for the pricing line.
            sig {
              returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::StartsAt)
             }
            def starts_at; end
            sig {
              params(_starts_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::StartsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::StartsAt)
             }
            def starts_at=(_starts_at); end
            sig {
              params(ends_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::EndsAt, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), pricing: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing, starts_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::StartsAt).void
             }
            def initialize(
              ends_at: nil,
              lookup_key: nil,
              metadata: nil,
              pricing: nil,
              starts_at: nil
            ); end
          end
          class Remove < ::Stripe::RequestParams
            # The ID of the pricing line to remove.
            sig { returns(String) }
            def id; end
            sig { params(_id: String).returns(String) }
            def id=(_id); end
            sig { params(id: String).void }
            def initialize(id: nil); end
          end
          class Update < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of end time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of start time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            # The updated end time for the pricing line.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::EndsAt))
             }
            def ends_at; end
            sig {
              params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::EndsAt))
             }
            def ends_at=(_ends_at); end
            # The ID of the pricing line.
            sig { returns(String) }
            def id; end
            sig { params(_id: String).returns(String) }
            def id=(_id); end
            # The updated start time for the pricing line.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::StartsAt))
             }
            def starts_at; end
            sig {
              params(_starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::StartsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::StartsAt))
             }
            def starts_at=(_starts_at); end
            sig {
              params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::EndsAt), id: String, starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::StartsAt)).void
             }
            def initialize(ends_at: nil, id: nil, starts_at: nil); end
          end
          # Parameters for adding a pricing line.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add))
           }
          def add; end
          sig {
            params(_add: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add))
           }
          def add=(_add); end
          # Parameters for removing a pricing line.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Remove))
           }
          def remove; end
          sig {
            params(_remove: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Remove)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Remove))
           }
          def remove=(_remove); end
          # The type of pricing line action.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Parameters for updating a pricing line.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update))
           }
          def update; end
          sig {
            params(_update: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update))
           }
          def update=(_update); end
          sig {
            params(add: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add), remove: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Remove), type: String, update: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update)).void
           }
          def initialize(add: nil, remove: nil, type: nil, update: nil); end
        end
        class PricingOverrideAction < ::Stripe::RequestParams
          class Add < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of end time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class Multiplier < ::Stripe::RequestParams
              class Criterion < ::Stripe::RequestParams
                class MetadataCondition < ::Stripe::RequestParams
                  class AllOf < ::Stripe::RequestParams
                    # The metadata key.
                    sig { returns(String) }
                    def key; end
                    sig { params(_key: String).returns(String) }
                    def key=(_key); end
                    # The metadata value.
                    sig { returns(String) }
                    def value; end
                    sig { params(_value: String).returns(String) }
                    def value=(_value); end
                    sig { params(key: String, value: String).void }
                    def initialize(key: nil, value: nil); end
                  end
                  # All of these key-value conditions must match.
                  sig {
                    returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition::AllOf])
                   }
                  def all_of; end
                  sig {
                    params(_all_of: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition::AllOf]).returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition::AllOf])
                   }
                  def all_of=(_all_of); end
                  sig {
                    params(all_of: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition::AllOf]).void
                   }
                  def initialize(all_of: nil); end
                end
                # Filter by billable item IDs.
                sig { returns(T::Array[String]) }
                def billable_item_ids; end
                sig { params(_billable_item_ids: T::Array[String]).returns(T::Array[String]) }
                def billable_item_ids=(_billable_item_ids); end
                # Filter by billable item lookup keys.
                sig { returns(T::Array[String]) }
                def billable_item_lookup_keys; end
                sig {
                  params(_billable_item_lookup_keys: T::Array[String]).returns(T::Array[String])
                 }
                def billable_item_lookup_keys=(_billable_item_lookup_keys); end
                # Filter by billable item type.
                sig { returns(T::Array[String]) }
                def billable_item_types; end
                sig { params(_billable_item_types: T::Array[String]).returns(T::Array[String]) }
                def billable_item_types=(_billable_item_types); end
                # Filter by metadata conditions.
                sig {
                  returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition])
                 }
                def metadata_conditions; end
                sig {
                  params(_metadata_conditions: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition]).returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition])
                 }
                def metadata_conditions=(_metadata_conditions); end
                # Filter by rate card IDs. Only applicable for `multiplier` overrides.
                sig { returns(T::Array[String]) }
                def rate_card_ids; end
                sig { params(_rate_card_ids: T::Array[String]).returns(T::Array[String]) }
                def rate_card_ids=(_rate_card_ids); end
                # Whether to include or exclude items matching these criteria.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(billable_item_ids: T::Array[String], billable_item_lookup_keys: T::Array[String], billable_item_types: T::Array[String], metadata_conditions: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion::MetadataCondition], rate_card_ids: T::Array[String], type: String).void
                 }
                def initialize(
                  billable_item_ids: nil,
                  billable_item_lookup_keys: nil,
                  billable_item_types: nil,
                  metadata_conditions: nil,
                  rate_card_ids: nil,
                  type: nil
                ); end
              end
              # Criteria determining which rates the multiplier applies to.
              sig {
                returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion])
               }
              def criteria; end
              sig {
                params(_criteria: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion]).returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion])
               }
              def criteria=(_criteria); end
              # The multiplier factor, represented as a decimal string. e.g. "0.8" for a 20% reduction.
              sig { returns(String) }
              def factor; end
              sig { params(_factor: String).returns(String) }
              def factor=(_factor); end
              sig {
                params(criteria: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion], factor: String).void
               }
              def initialize(criteria: nil, factor: nil); end
            end
            class OverwritePrice < ::Stripe::RequestParams
              class Tier < ::Stripe::RequestParams
                # Price for the entire tier, represented as a decimal string in minor currency units.
                sig { returns(T.nilable(String)) }
                def flat_amount; end
                sig { params(_flat_amount: T.nilable(String)).returns(T.nilable(String)) }
                def flat_amount=(_flat_amount); end
                # Per-unit price for units included in this tier, represented as a decimal string in minor currency units.
                sig { returns(T.nilable(String)) }
                def unit_amount; end
                sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
                def unit_amount=(_unit_amount); end
                # Up to and including this quantity will be contained in the tier.
                sig { returns(T.nilable(BigDecimal)) }
                def up_to_decimal; end
                sig { params(_up_to_decimal: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal)) }
                def up_to_decimal=(_up_to_decimal); end
                # No upper bound to this tier.
                sig { returns(T.nilable(String)) }
                def up_to_inf; end
                sig { params(_up_to_inf: T.nilable(String)).returns(T.nilable(String)) }
                def up_to_inf=(_up_to_inf); end
                sig {
                  params(flat_amount: T.nilable(String), unit_amount: T.nilable(String), up_to_decimal: T.nilable(BigDecimal), up_to_inf: T.nilable(String)).void
                 }
                def initialize(
                  flat_amount: nil,
                  unit_amount: nil,
                  up_to_decimal: nil,
                  up_to_inf: nil
                ); end
                def self.field_encodings
                  @field_encodings = {up_to_decimal: :decimal_string}
                end
              end
              # The ID of the V1 price to overwrite.
              sig { returns(String) }
              def price; end
              sig { params(_price: String).returns(String) }
              def price=(_price); end
              # Defines whether the tiered price should be graduated or volume-based.
              sig { returns(T.nilable(String)) }
              def tiering_mode; end
              sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
              def tiering_mode=(_tiering_mode); end
              # Each element represents a pricing tier.
              sig {
                returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice::Tier])
               }
              def tiers; end
              sig {
                params(_tiers: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice::Tier]).returns(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice::Tier])
               }
              def tiers=(_tiers); end
              # The per-unit amount to be charged, represented as a decimal string in minor currency units.
              sig { returns(T.nilable(String)) }
              def unit_amount; end
              sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
              def unit_amount=(_unit_amount); end
              sig {
                params(price: String, tiering_mode: T.nilable(String), tiers: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice::Tier], unit_amount: T.nilable(String)).void
               }
              def initialize(price: nil, tiering_mode: nil, tiers: nil, unit_amount: nil); end
              def self.field_encodings
                @field_encodings = {
                  tiers: {
                    kind: :array,
                    element: {kind: :object, fields: {up_to_decimal: :decimal_string}},
                  },
                }
              end
            end
            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of start time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            # The end time for the pricing override.
            sig {
              returns(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::EndsAt)
             }
            def ends_at; end
            sig {
              params(_ends_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::EndsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::EndsAt)
             }
            def ends_at=(_ends_at); end
            # A lookup key for the pricing override.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
            def lookup_key=(_lookup_key); end
            # A multiplier override to add.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier))
             }
            def multiplier; end
            sig {
              params(_multiplier: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier))
             }
            def multiplier=(_multiplier); end
            # An overwrite price override to add.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice))
             }
            def overwrite_price; end
            sig {
              params(_overwrite_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice))
             }
            def overwrite_price=(_overwrite_price); end
            # The priority for the pricing override. The highest priority is 0 and the lowest is 100.
            sig { returns(Integer) }
            def priority; end
            sig { params(_priority: Integer).returns(Integer) }
            def priority=(_priority); end
            # The start time for the pricing override.
            sig {
              returns(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::StartsAt)
             }
            def starts_at; end
            sig {
              params(_starts_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::StartsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::StartsAt)
             }
            def starts_at=(_starts_at); end
            # The type of pricing override to add.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(ends_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::EndsAt, lookup_key: T.nilable(String), multiplier: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier), overwrite_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice), priority: Integer, starts_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::StartsAt, type: String).void
             }
            def initialize(
              ends_at: nil,
              lookup_key: nil,
              multiplier: nil,
              overwrite_price: nil,
              priority: nil,
              starts_at: nil,
              type: nil
            ); end
            def self.field_encodings
              @field_encodings = {
                overwrite_price: {
                  kind: :object,
                  fields: {
                    tiers: {
                      kind: :array,
                      element: {kind: :object, fields: {up_to_decimal: :decimal_string}},
                    },
                  },
                },
              }
            end
          end
          class Remove < ::Stripe::RequestParams
            # The ID of the pricing override to remove.
            sig { returns(String) }
            def id; end
            sig { params(_id: String).returns(String) }
            def id=(_id); end
            sig { params(id: String).void }
            def initialize(id: nil); end
          end
          class Update < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of end time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              sig { returns(T.nilable(String)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
              def timestamp=(_timestamp); end
              # The type of start time to apply.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig { params(timestamp: T.nilable(String), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            # The updated end time for the pricing override.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::EndsAt))
             }
            def ends_at; end
            sig {
              params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::EndsAt))
             }
            def ends_at=(_ends_at); end
            # The ID of the pricing override.
            sig { returns(String) }
            def id; end
            sig { params(_id: String).returns(String) }
            def id=(_id); end
            # The updated start time for the pricing override.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::StartsAt))
             }
            def starts_at; end
            sig {
              params(_starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::StartsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::StartsAt))
             }
            def starts_at=(_starts_at); end
            sig {
              params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::EndsAt), id: String, starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::StartsAt)).void
             }
            def initialize(ends_at: nil, id: nil, starts_at: nil); end
          end
          # Parameters for adding a pricing override.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add))
           }
          def add; end
          sig {
            params(_add: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add))
           }
          def add=(_add); end
          # Parameters for removing a pricing override.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Remove))
           }
          def remove; end
          sig {
            params(_remove: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Remove)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Remove))
           }
          def remove=(_remove); end
          # The type of pricing override action.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Parameters for updating a pricing override.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update))
           }
          def update; end
          sig {
            params(_update: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update))
           }
          def update=(_update); end
          sig {
            params(add: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add), remove: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Remove), type: String, update: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Update)).void
           }
          def initialize(add: nil, remove: nil, type: nil, update: nil); end
          def self.field_encodings
            @field_encodings = {
              add: {
                kind: :object,
                fields: {
                  overwrite_price: {
                    kind: :object,
                    fields: {
                      tiers: {
                        kind: :array,
                        element: {kind: :object, fields: {up_to_decimal: :decimal_string}},
                      },
                    },
                  },
                },
              },
            }
          end
        end
        # Additional fields to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # Schema-only: License quantity actions (implementation to follow).
        sig {
          returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction]))
         }
        def license_quantity_actions; end
        sig {
          params(_license_quantity_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction]))
         }
        def license_quantity_actions=(_license_quantity_actions); end
        # Pricing line actions to apply.
        sig {
          returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction]))
         }
        def pricing_line_actions; end
        sig {
          params(_pricing_line_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction]))
         }
        def pricing_line_actions=(_pricing_line_actions); end
        # Pricing override actions to apply.
        sig {
          returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction]))
         }
        def pricing_override_actions; end
        sig {
          params(_pricing_override_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction]))
         }
        def pricing_override_actions=(_pricing_override_actions); end
        sig {
          params(include: T.nilable(T::Array[String]), license_quantity_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::LicenseQuantityAction]), pricing_line_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction]), pricing_override_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction])).void
         }
        def initialize(
          include: nil,
          license_quantity_actions: nil,
          pricing_line_actions: nil,
          pricing_override_actions: nil
        ); end
        def self.field_encodings
          @field_encodings = {
            pricing_override_actions: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  add: {
                    kind: :object,
                    fields: {
                      overwrite_price: {
                        kind: :object,
                        fields: {
                          tiers: {
                            kind: :array,
                            element: {kind: :object, fields: {up_to_decimal: :decimal_string}},
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          }
        end
      end
    end
  end
end