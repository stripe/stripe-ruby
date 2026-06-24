# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractUpdateParams < ::Stripe::RequestParams
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
                class PricingOverride < ::Stripe::RequestParams
                  class EndsAt < ::Stripe::RequestParams
                    # The timestamp when the item ends. Required if `type` is `timestamp`.
                    sig { returns(T.nilable(String)) }
                    def timestamp; end
                    sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
                    def timestamp=(_timestamp); end
                    # The type of the ends_at.
                    sig { returns(String) }
                    def type; end
                    sig { params(_type: String).returns(String) }
                    def type=(_type); end
                    sig { params(timestamp: T.nilable(String), type: String).void }
                    def initialize(timestamp: nil, type: nil); end
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
                      sig {
                        params(_up_to_decimal: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal))
                       }
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
                    # Defines whether the tiered price should be graduated or volume-based.
                    sig { returns(T.nilable(String)) }
                    def tiering_mode; end
                    sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
                    def tiering_mode=(_tiering_mode); end
                    # Each element represents a pricing tier.
                    sig {
                      returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier]))
                     }
                    def tiers; end
                    sig {
                      params(_tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier]))
                     }
                    def tiers=(_tiers); end
                    # The per-unit amount to be charged, represented as a decimal string in minor currency units.
                    sig { returns(T.nilable(String)) }
                    def unit_amount; end
                    sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
                    def unit_amount=(_unit_amount); end
                    sig {
                      params(tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier]), unit_amount: T.nilable(String)).void
                     }
                    def initialize(tiering_mode: nil, tiers: nil, unit_amount: nil); end
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
                    # The timestamp when the item starts. Required if `type` is `timestamp`.
                    sig { returns(T.nilable(String)) }
                    def timestamp; end
                    sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
                    def timestamp=(_timestamp); end
                    # The type of the starts_at.
                    sig { returns(String) }
                    def type; end
                    sig { params(_type: String).returns(String) }
                    def type=(_type); end
                    sig { params(timestamp: T.nilable(String), type: String).void }
                    def initialize(timestamp: nil, type: nil); end
                  end
                  # When the override ends. Defaults to the pricing line's end if not specified.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::EndsAt))
                   }
                  def ends_at; end
                  sig {
                    params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::EndsAt))
                   }
                  def ends_at=(_ends_at); end
                  # A user-provided lookup key to reference this override.
                  sig { returns(T.nilable(String)) }
                  def lookup_key; end
                  sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
                  def lookup_key=(_lookup_key); end
                  # Set of key-value pairs that you can attach to an object.
                  sig { returns(T.nilable(T::Hash[String, String])) }
                  def metadata; end
                  sig {
                    params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
                   }
                  def metadata=(_metadata); end
                  # Parameters for the overwrite_price override. Required if `type` is `overwrite_price`.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice))
                   }
                  def overwrite_price; end
                  sig {
                    params(_overwrite_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice))
                   }
                  def overwrite_price=(_overwrite_price); end
                  # The priority of this override relative to others. 0 is highest, 100 is lowest. Defaults to 50.
                  sig { returns(T.nilable(Integer)) }
                  def priority; end
                  sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def priority=(_priority); end
                  # When the override starts. Defaults to the pricing line's start if not specified.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::StartsAt))
                   }
                  def starts_at; end
                  sig {
                    params(_starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::StartsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::StartsAt))
                   }
                  def starts_at=(_starts_at); end
                  # The type of override. Currently only `overwrite_price` is supported.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig {
                    params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::EndsAt), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), overwrite_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::OverwritePrice), priority: T.nilable(Integer), starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride::StartsAt), type: String).void
                   }
                  def initialize(
                    ends_at: nil,
                    lookup_key: nil,
                    metadata: nil,
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
                class QuantityChange < ::Stripe::RequestParams
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
                  # When this quantity change takes effect.
                  sig {
                    returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange::EffectiveAt)
                   }
                  def effective_at; end
                  sig {
                    params(_effective_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange::EffectiveAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange::EffectiveAt)
                   }
                  def effective_at=(_effective_at); end
                  # The quantity to set.
                  sig { returns(BigDecimal) }
                  def set; end
                  sig { params(_set: BigDecimal).returns(BigDecimal) }
                  def set=(_set); end
                  sig {
                    params(effective_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange::EffectiveAt, set: BigDecimal).void
                   }
                  def initialize(effective_at: nil, set: nil); end
                  def self.field_encodings
                    @field_encodings = {set: :decimal_string}
                  end
                end
                # The ID of the V1 price.
                sig { returns(String) }
                def price; end
                sig { params(_price: String).returns(String) }
                def price=(_price); end
                # Pricing overrides embedded directly on this pricing line.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride]))
                 }
                def pricing_overrides; end
                sig {
                  params(_pricing_overrides: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride]))
                 }
                def pricing_overrides=(_pricing_overrides); end
                # Quantity changes for the pricing line. For now, at most one entry is allowed.
                # A quantity change clears all future quantity changes on this pricing line.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange]))
                 }
                def quantity_changes; end
                sig {
                  params(_quantity_changes: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange]))
                 }
                def quantity_changes=(_quantity_changes); end
                sig {
                  params(price: String, pricing_overrides: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::PricingOverride]), quantity_changes: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetails::QuantityChange])).void
                 }
                def initialize(price: nil, pricing_overrides: nil, quantity_changes: nil); end
                def self.field_encodings
                  @field_encodings = {
                    pricing_overrides: {
                      kind: :array,
                      element: {
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
                    quantity_changes: {
                      kind: :array,
                      element: {kind: :object, fields: {set: :decimal_string}},
                    },
                  }
                end
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
              def self.field_encodings
                @field_encodings = {
                  price_details: {
                    kind: :object,
                    fields: {
                      pricing_overrides: {
                        kind: :array,
                        element: {
                          kind: :object,
                          fields: {
                            overwrite_price: {
                              kind: :object,
                              fields: {
                                tiers: {
                                  kind: :array,
                                  element: {
                                    kind: :object,
                                    fields: {up_to_decimal: :decimal_string},
                                  },
                                },
                              },
                            },
                          },
                        },
                      },
                      quantity_changes: {
                        kind: :array,
                        element: {kind: :object, fields: {set: :decimal_string}},
                      },
                    },
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
            def self.field_encodings
              @field_encodings = {
                pricing: {
                  kind: :object,
                  fields: {
                    price_details: {
                      kind: :object,
                      fields: {
                        pricing_overrides: {
                          kind: :array,
                          element: {
                            kind: :object,
                            fields: {
                              overwrite_price: {
                                kind: :object,
                                fields: {
                                  tiers: {
                                    kind: :array,
                                    element: {
                                      kind: :object,
                                      fields: {up_to_decimal: :decimal_string},
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                        quantity_changes: {
                          kind: :array,
                          element: {kind: :object, fields: {set: :decimal_string}},
                        },
                      },
                    },
                  },
                },
              }
            end
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
            class Pricing < ::Stripe::RequestParams
              class PriceDetails < ::Stripe::RequestParams
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
                        sig {
                          params(_up_to_decimal: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal))
                         }
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
                      # Defines whether the tiered price should be graduated or volume-based.
                      sig { returns(T.nilable(String)) }
                      def tiering_mode; end
                      sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
                      def tiering_mode=(_tiering_mode); end
                      # Each element represents a pricing tier.
                      sig {
                        returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice::Tier]))
                       }
                      def tiers; end
                      sig {
                        params(_tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice::Tier])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice::Tier]))
                       }
                      def tiers=(_tiers); end
                      # The per-unit amount to be charged, represented as a decimal string in minor currency units.
                      sig { returns(T.nilable(String)) }
                      def unit_amount; end
                      sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
                      def unit_amount=(_unit_amount); end
                      sig {
                        params(tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice::Tier]), unit_amount: T.nilable(String)).void
                       }
                      def initialize(tiering_mode: nil, tiers: nil, unit_amount: nil); end
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
                    # The end time for the override.
                    sig {
                      returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::EndsAt)
                     }
                    def ends_at; end
                    sig {
                      params(_ends_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::EndsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::EndsAt)
                     }
                    def ends_at=(_ends_at); end
                    # A lookup key for the override.
                    sig { returns(T.nilable(String)) }
                    def lookup_key; end
                    sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
                    def lookup_key=(_lookup_key); end
                    # Set of key-value pairs that you can attach to an object.
                    sig { returns(T.nilable(T::Hash[String, String])) }
                    def metadata; end
                    sig {
                      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
                     }
                    def metadata=(_metadata); end
                    # Parameters for an overwrite_price override. Required if `type` is `overwrite_price`.
                    sig {
                      returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice))
                     }
                    def overwrite_price; end
                    sig {
                      params(_overwrite_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice))
                     }
                    def overwrite_price=(_overwrite_price); end
                    # The priority of this override relative to others. 0 is highest, 100 is lowest. Defaults to 50.
                    sig { returns(T.nilable(Integer)) }
                    def priority; end
                    sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
                    def priority=(_priority); end
                    # The start time for the override.
                    sig {
                      returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::StartsAt)
                     }
                    def starts_at; end
                    sig {
                      params(_starts_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::StartsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::StartsAt)
                     }
                    def starts_at=(_starts_at); end
                    # The type of override to add.
                    sig { returns(String) }
                    def type; end
                    sig { params(_type: String).returns(String) }
                    def type=(_type); end
                    sig {
                      params(ends_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::EndsAt, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), overwrite_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::OverwritePrice), priority: T.nilable(Integer), starts_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add::StartsAt, type: String).void
                     }
                    def initialize(
                      ends_at: nil,
                      lookup_key: nil,
                      metadata: nil,
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
                    # The ID of the pricing line override to remove.
                    sig { returns(T.nilable(String)) }
                    def id; end
                    sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
                    def id=(_id); end
                    # A lookup key for the override to remove.
                    sig { returns(T.nilable(String)) }
                    def lookup_key; end
                    sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
                    def lookup_key=(_lookup_key); end
                    sig { params(id: T.nilable(String), lookup_key: T.nilable(String)).void }
                    def initialize(id: nil, lookup_key: nil); end
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
                    # The updated end time for the override.
                    sig {
                      returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::EndsAt))
                     }
                    def ends_at; end
                    sig {
                      params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::EndsAt))
                     }
                    def ends_at=(_ends_at); end
                    # The ID of the pricing line override to update.
                    sig { returns(T.nilable(String)) }
                    def id; end
                    sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
                    def id=(_id); end
                    # A lookup key for the override to update.
                    sig { returns(T.nilable(String)) }
                    def lookup_key; end
                    sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
                    def lookup_key=(_lookup_key); end
                    # Set of key-value pairs that you can attach to an object.
                    sig { returns(T.nilable(T::Hash[String, String])) }
                    def metadata; end
                    sig {
                      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
                     }
                    def metadata=(_metadata); end
                    # The updated start time for the override.
                    sig {
                      returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::StartsAt))
                     }
                    def starts_at; end
                    sig {
                      params(_starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::StartsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::StartsAt))
                     }
                    def starts_at=(_starts_at); end
                    sig {
                      params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::EndsAt), id: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update::StartsAt)).void
                     }
                    def initialize(
                      ends_at: nil,
                      id: nil,
                      lookup_key: nil,
                      metadata: nil,
                      starts_at: nil
                    ); end
                  end
                  # Parameters for adding a pricing line override.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add))
                   }
                  def add; end
                  sig {
                    params(_add: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add))
                   }
                  def add=(_add); end
                  # Parameters for removing a pricing line override.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Remove))
                   }
                  def remove; end
                  sig {
                    params(_remove: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Remove)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Remove))
                   }
                  def remove=(_remove); end
                  # The type of pricing line override action.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  # Parameters for updating a pricing line override.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update))
                   }
                  def update; end
                  sig {
                    params(_update: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update))
                   }
                  def update=(_update); end
                  sig {
                    params(add: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Add), remove: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Remove), type: String, update: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction::Update)).void
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
                class QuantityChange < ::Stripe::RequestParams
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
                  # When this quantity change takes effect.
                  sig {
                    returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange::EffectiveAt)
                   }
                  def effective_at; end
                  sig {
                    params(_effective_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange::EffectiveAt).returns(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange::EffectiveAt)
                   }
                  def effective_at=(_effective_at); end
                  # The quantity to set.
                  sig { returns(BigDecimal) }
                  def set; end
                  sig { params(_set: BigDecimal).returns(BigDecimal) }
                  def set=(_set); end
                  sig {
                    params(effective_at: ::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange::EffectiveAt, set: BigDecimal).void
                   }
                  def initialize(effective_at: nil, set: nil); end
                  def self.field_encodings
                    @field_encodings = {set: :decimal_string}
                  end
                end
                # Pricing override actions to apply to the overrides embedded on this pricing line.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction]))
                 }
                def pricing_override_actions; end
                sig {
                  params(_pricing_override_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction]))
                 }
                def pricing_override_actions=(_pricing_override_actions); end
                # Quantity changes for the pricing line. Setting this clears all future quantity changes.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange]))
                 }
                def quantity_changes; end
                sig {
                  params(_quantity_changes: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange]))
                 }
                def quantity_changes=(_quantity_changes); end
                sig {
                  params(pricing_override_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::PricingOverrideAction]), quantity_changes: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails::QuantityChange])).void
                 }
                def initialize(pricing_override_actions: nil, quantity_changes: nil); end
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
                                    element: {
                                      kind: :object,
                                      fields: {up_to_decimal: :decimal_string},
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                      },
                    },
                    quantity_changes: {
                      kind: :array,
                      element: {kind: :object, fields: {set: :decimal_string}},
                    },
                  }
                end
              end
              # V1 price details. Present when the pricing line type is `price`.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails))
               }
              def price_details; end
              sig {
                params(_price_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails))
               }
              def price_details=(_price_details); end
              sig {
                params(price_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetails)).void
               }
              def initialize(price_details: nil); end
              def self.field_encodings
                @field_encodings = {
                  price_details: {
                    kind: :object,
                    fields: {
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
                                      element: {
                                        kind: :object,
                                        fields: {up_to_decimal: :decimal_string},
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                      },
                      quantity_changes: {
                        kind: :array,
                        element: {kind: :object, fields: {set: :decimal_string}},
                      },
                    },
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
            # Pricing updates for the pricing line (quantity changes and pricing override actions).
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing))
             }
            def pricing; end
            sig {
              params(_pricing: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing))
             }
            def pricing=(_pricing); end
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
              params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::EndsAt), id: String, pricing: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing), starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction::Update::StartsAt)).void
             }
            def initialize(ends_at: nil, id: nil, pricing: nil, starts_at: nil); end
            def self.field_encodings
              @field_encodings = {
                pricing: {
                  kind: :object,
                  fields: {
                    price_details: {
                      kind: :object,
                      fields: {
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
                                        element: {
                                          kind: :object,
                                          fields: {up_to_decimal: :decimal_string},
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                        },
                        quantity_changes: {
                          kind: :array,
                          element: {kind: :object, fields: {set: :decimal_string}},
                        },
                      },
                    },
                  },
                },
              }
            end
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
          def self.field_encodings
            @field_encodings = {
              add: {
                kind: :object,
                fields: {
                  pricing: {
                    kind: :object,
                    fields: {
                      price_details: {
                        kind: :object,
                        fields: {
                          pricing_overrides: {
                            kind: :array,
                            element: {
                              kind: :object,
                              fields: {
                                overwrite_price: {
                                  kind: :object,
                                  fields: {
                                    tiers: {
                                      kind: :array,
                                      element: {
                                        kind: :object,
                                        fields: {up_to_decimal: :decimal_string},
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                          quantity_changes: {
                            kind: :array,
                            element: {kind: :object, fields: {set: :decimal_string}},
                          },
                        },
                      },
                    },
                  },
                },
              },
              update: {
                kind: :object,
                fields: {
                  pricing: {
                    kind: :object,
                    fields: {
                      price_details: {
                        kind: :object,
                        fields: {
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
                                          element: {
                                            kind: :object,
                                            fields: {up_to_decimal: :decimal_string},
                                          },
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                            },
                          },
                          quantity_changes: {
                            kind: :array,
                            element: {kind: :object, fields: {set: :decimal_string}},
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
                # Filter by pricing line IDs.
                sig { returns(T.nilable(T::Array[String])) }
                def pricing_line_ids; end
                sig {
                  params(_pricing_line_ids: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def pricing_line_ids=(_pricing_line_ids); end
                # Filter by pricing line lookup keys.
                sig { returns(T.nilable(T::Array[String])) }
                def pricing_line_lookup_keys; end
                sig {
                  params(_pricing_line_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def pricing_line_lookup_keys=(_pricing_line_lookup_keys); end
                # Whether to include or exclude items matching these criteria.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(pricing_line_ids: T.nilable(T::Array[String]), pricing_line_lookup_keys: T.nilable(T::Array[String]), type: String).void
                 }
                def initialize(pricing_line_ids: nil, pricing_line_lookup_keys: nil, type: nil); end
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
                params(tiering_mode: T.nilable(String), tiers: T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice::Tier], unit_amount: T.nilable(String)).void
               }
              def initialize(tiering_mode: nil, tiers: nil, unit_amount: nil); end
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
          params(include: T.nilable(T::Array[String]), pricing_line_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingLineAction]), pricing_override_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::PricingOverrideAction])).void
         }
        def initialize(include: nil, pricing_line_actions: nil, pricing_override_actions: nil); end
        def self.field_encodings
          @field_encodings = {
            pricing_line_actions: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  add: {
                    kind: :object,
                    fields: {
                      pricing: {
                        kind: :object,
                        fields: {
                          price_details: {
                            kind: :object,
                            fields: {
                              pricing_overrides: {
                                kind: :array,
                                element: {
                                  kind: :object,
                                  fields: {
                                    overwrite_price: {
                                      kind: :object,
                                      fields: {
                                        tiers: {
                                          kind: :array,
                                          element: {
                                            kind: :object,
                                            fields: {up_to_decimal: :decimal_string},
                                          },
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                              quantity_changes: {
                                kind: :array,
                                element: {kind: :object, fields: {set: :decimal_string}},
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                  update: {
                    kind: :object,
                    fields: {
                      pricing: {
                        kind: :object,
                        fields: {
                          price_details: {
                            kind: :object,
                            fields: {
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
                                              element: {
                                                kind: :object,
                                                fields: {up_to_decimal: :decimal_string},
                                              },
                                            },
                                          },
                                        },
                                      },
                                    },
                                  },
                                },
                              },
                              quantity_changes: {
                                kind: :array,
                                element: {kind: :object, fields: {set: :decimal_string}},
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
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