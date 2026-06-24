# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractCreateParams < ::Stripe::RequestParams
        class BillingCycleAnchor < ::Stripe::RequestParams
          class Config < ::Stripe::RequestParams
            # Day of month (1-31).
            sig { returns(Integer) }
            def day_of_month; end
            sig { params(_day_of_month: Integer).returns(Integer) }
            def day_of_month=(_day_of_month); end
            # Hour of day in UTC (0-23).
            sig { returns(T.nilable(Integer)) }
            def hour; end
            sig { params(_hour: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def hour=(_hour); end
            # Minute of hour (0-59).
            sig { returns(T.nilable(Integer)) }
            def minute; end
            sig { params(_minute: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def minute=(_minute); end
            # Month of year (1-12).
            sig { returns(T.nilable(Integer)) }
            def month_of_year; end
            sig { params(_month_of_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def month_of_year=(_month_of_year); end
            # Second of minute (0-59).
            sig { returns(T.nilable(Integer)) }
            def second; end
            sig { params(_second: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def second=(_second); end
            sig {
              params(day_of_month: Integer, hour: T.nilable(Integer), minute: T.nilable(Integer), month_of_year: T.nilable(Integer), second: T.nilable(Integer)).void
             }
            def initialize(
              day_of_month: nil,
              hour: nil,
              minute: nil,
              month_of_year: nil,
              second: nil
            ); end
          end
          # Configuration for determining the billing cycle anchor by calendar fields.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor::Config))
           }
          def config; end
          sig {
            params(_config: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor::Config)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor::Config))
           }
          def config=(_config); end
          # A specific timestamp to use as the billing cycle anchor.
          sig { returns(T.nilable(String)) }
          def timestamp; end
          sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
          def timestamp=(_timestamp); end
          # The type of billing cycle anchor.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(config: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor::Config), timestamp: T.nilable(String), type: String).void
           }
          def initialize(config: nil, timestamp: nil, type: nil); end
        end
        class BillingSettings < ::Stripe::RequestParams
          class BillSettingsDetails < ::Stripe::RequestParams
            class Calculation < ::Stripe::RequestParams
              class Tax < ::Stripe::RequestParams
                # The type of tax calculation.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(type: String).void }
                def initialize(type: nil); end
              end
              # Tax calculation settings.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation::Tax))
               }
              def tax; end
              sig {
                params(_tax: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation::Tax)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation::Tax))
               }
              def tax=(_tax); end
              sig {
                params(tax: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation::Tax)).void
               }
              def initialize(tax: nil); end
            end
            class Invoice < ::Stripe::RequestParams
              class TimeUntilDue < ::Stripe::RequestParams
                # The interval unit.
                sig { returns(String) }
                def interval; end
                sig { params(_interval: String).returns(String) }
                def interval=(_interval); end
                # The number of intervals.
                sig { returns(Integer) }
                def interval_count; end
                sig { params(_interval_count: Integer).returns(Integer) }
                def interval_count=(_interval_count); end
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # The number of time units before the invoice is past due.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue))
               }
              def time_until_due; end
              sig {
                params(_time_until_due: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue))
               }
              def time_until_due=(_time_until_due); end
              sig {
                params(time_until_due: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue)).void
               }
              def initialize(time_until_due: nil); end
            end
            # Calculation settings.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation))
             }
            def calculation; end
            sig {
              params(_calculation: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation))
             }
            def calculation=(_calculation); end
            # Invoice settings.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice))
             }
            def invoice; end
            sig {
              params(_invoice: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice))
             }
            def invoice=(_invoice); end
            sig {
              params(calculation: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Calculation), invoice: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails::Invoice)).void
             }
            def initialize(calculation: nil, invoice: nil); end
          end
          class BillingProfileDetails < ::Stripe::RequestParams
            # The customer who pays for the contract invoice.
            sig { returns(String) }
            def customer; end
            sig { params(_customer: String).returns(String) }
            def customer=(_customer); end
            # The default payment method for the contract.
            sig { returns(T.nilable(String)) }
            def default_payment_method; end
            sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
            def default_payment_method=(_default_payment_method); end
            sig { params(customer: String, default_payment_method: T.nilable(String)).void }
            def initialize(customer: nil, default_payment_method: nil); end
          end
          class CollectionSettingsDetails < ::Stripe::RequestParams
            # The collection method.
            sig { returns(String) }
            def collection_method; end
            sig { params(_collection_method: String).returns(String) }
            def collection_method=(_collection_method); end
            # The payment method configuration.
            sig { returns(T.nilable(String)) }
            def payment_method_configuration; end
            sig {
              params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String))
             }
            def payment_method_configuration=(_payment_method_configuration); end
            sig {
              params(collection_method: String, payment_method_configuration: T.nilable(String)).void
             }
            def initialize(collection_method: nil, payment_method_configuration: nil); end
          end
          # The bill settings details configures invoice and tax settings for the contract.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails))
           }
          def bill_settings_details; end
          sig {
            params(_bill_settings_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails))
           }
          def bill_settings_details=(_bill_settings_details); end
          # The billing profile details configures who is charged for the contract.
          sig {
            returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillingProfileDetails)
           }
          def billing_profile_details; end
          sig {
            params(_billing_profile_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillingProfileDetails).returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillingProfileDetails)
           }
          def billing_profile_details=(_billing_profile_details); end
          # The collection settings details configures how payments are collected on the contract.
          sig {
            returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::CollectionSettingsDetails)
           }
          def collection_settings_details; end
          sig {
            params(_collection_settings_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::CollectionSettingsDetails).returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::CollectionSettingsDetails)
           }
          def collection_settings_details=(_collection_settings_details); end
          sig {
            params(bill_settings_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillSettingsDetails), billing_profile_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::BillingProfileDetails, collection_settings_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::CollectionSettingsDetails).void
           }
          def initialize(
            bill_settings_details: nil,
            billing_profile_details: nil,
            collection_settings_details: nil
          ); end
        end
        class OneTimeFee < ::Stripe::RequestParams
          class BillAt < ::Stripe::RequestParams
            # The timestamp at which the entry should be billed. Required if `type` is `timestamp`.
            sig { returns(T.nilable(String)) }
            def timestamp; end
            sig { params(_timestamp: T.nilable(String)).returns(T.nilable(String)) }
            def timestamp=(_timestamp); end
            # The type of the bill_at.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(timestamp: T.nilable(String), type: String).void }
            def initialize(timestamp: nil, type: nil); end
          end
          # The amount to bill.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
          def amount=(_amount); end
          # When this fee should be billed.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillAt) }
          def bill_at; end
          sig {
            params(_bill_at: ::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillAt).returns(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillAt)
           }
          def bill_at=(_bill_at); end
          # A user-provided lookup key.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # The ID of the v1 Product for this fee.
          sig { returns(String) }
          def product; end
          sig { params(_product: String).returns(String) }
          def product=(_product); end
          sig {
            params(amount: ::Stripe::V2::Amount, bill_at: ::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillAt, lookup_key: T.nilable(String), product: String).void
           }
          def initialize(amount: nil, bill_at: nil, lookup_key: nil, product: nil); end
        end
        class PricingLine < ::Stripe::RequestParams
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
                    returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier]))
                   }
                  def tiers; end
                  sig {
                    params(_tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier]))
                   }
                  def tiers=(_tiers); end
                  # The per-unit amount to be charged, represented as a decimal string in minor currency units.
                  sig { returns(T.nilable(String)) }
                  def unit_amount; end
                  sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
                  def unit_amount=(_unit_amount); end
                  sig {
                    params(tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice::Tier]), unit_amount: T.nilable(String)).void
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
                  returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::EndsAt))
                 }
                def ends_at; end
                sig {
                  params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::EndsAt))
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
                  returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice))
                 }
                def overwrite_price; end
                sig {
                  params(_overwrite_price: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice))
                 }
                def overwrite_price=(_overwrite_price); end
                # The priority of this override relative to others. 0 is highest, 100 is lowest. Defaults to 50.
                sig { returns(T.nilable(Integer)) }
                def priority; end
                sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def priority=(_priority); end
                # When the override starts. Defaults to the pricing line's start if not specified.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::StartsAt))
                 }
                def starts_at; end
                sig {
                  params(_starts_at: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::StartsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::StartsAt))
                 }
                def starts_at=(_starts_at); end
                # The type of override. Currently only `overwrite_price` is supported.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(ends_at: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::EndsAt), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), overwrite_price: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::OverwritePrice), priority: T.nilable(Integer), starts_at: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride::StartsAt), type: String).void
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
                  returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange::EffectiveAt)
                 }
                def effective_at; end
                sig {
                  params(_effective_at: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange::EffectiveAt).returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange::EffectiveAt)
                 }
                def effective_at=(_effective_at); end
                # The quantity to set.
                sig { returns(BigDecimal) }
                def set; end
                sig { params(_set: BigDecimal).returns(BigDecimal) }
                def set=(_set); end
                sig {
                  params(effective_at: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange::EffectiveAt, set: BigDecimal).void
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
                returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride]))
               }
              def pricing_overrides; end
              sig {
                params(_pricing_overrides: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride]))
               }
              def pricing_overrides=(_pricing_overrides); end
              # Quantity changes for the pricing line. For now, at most one entry is allowed.
              # A quantity change clears all future quantity changes on this pricing line.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange]))
               }
              def quantity_changes; end
              sig {
                params(_quantity_changes: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange]))
               }
              def quantity_changes=(_quantity_changes); end
              sig {
                params(price: String, pricing_overrides: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::PricingOverride]), quantity_changes: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails::QuantityChange])).void
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
              returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails))
             }
            def price_details; end
            sig {
              params(_price_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails))
             }
            def price_details=(_price_details); end
            # The type of pricing.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(price_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetails), type: String).void
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
                  },
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
          # When the pricing line ends.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::EndsAt) }
          def ends_at; end
          sig {
            params(_ends_at: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::EndsAt).returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::EndsAt)
           }
          def ends_at=(_ends_at); end
          # A user-provided lookup key to reference this pricing line.
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
          # The pricing configuration for the pricing line.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing) }
          def pricing; end
          sig {
            params(_pricing: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing).returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing)
           }
          def pricing=(_pricing); end
          # When the pricing line starts.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::StartsAt) }
          def starts_at; end
          sig {
            params(_starts_at: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::StartsAt).returns(::Stripe::V2::Billing::ContractCreateParams::PricingLine::StartsAt)
           }
          def starts_at=(_starts_at); end
          sig {
            params(ends_at: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::EndsAt, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), pricing: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::Pricing, starts_at: ::Stripe::V2::Billing::ContractCreateParams::PricingLine::StartsAt).void
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
              returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion]))
             }
            def criteria; end
            sig {
              params(_criteria: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion]))
             }
            def criteria=(_criteria); end
            # The multiplier factor, represented as a decimal string. e.g. "0.8" for a 20% reduction.
            sig { returns(String) }
            def factor; end
            sig { params(_factor: String).returns(String) }
            def factor=(_factor); end
            sig {
              params(criteria: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion]), factor: String).void
             }
            def initialize(criteria: nil, factor: nil); end
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
          # When the pricing override ends.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::EndsAt) }
          def ends_at; end
          sig {
            params(_ends_at: ::Stripe::V2::Billing::ContractCreateParams::PricingOverride::EndsAt).returns(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::EndsAt)
           }
          def ends_at=(_ends_at); end
          # A user-provided lookup key to reference this pricing override.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # Parameters for a multiplier override. Required if `type` is `multiplier`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier))
           }
          def multiplier; end
          sig {
            params(_multiplier: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier))
           }
          def multiplier=(_multiplier); end
          # The priority of this override relative to others. The highest priority is 0 and the lowest is 100.
          sig { returns(Integer) }
          def priority; end
          sig { params(_priority: Integer).returns(Integer) }
          def priority=(_priority); end
          # When the pricing override starts.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::StartsAt) }
          def starts_at; end
          sig {
            params(_starts_at: ::Stripe::V2::Billing::ContractCreateParams::PricingOverride::StartsAt).returns(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::StartsAt)
           }
          def starts_at=(_starts_at); end
          # The type of pricing override.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(ends_at: ::Stripe::V2::Billing::ContractCreateParams::PricingOverride::EndsAt, lookup_key: T.nilable(String), multiplier: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier), priority: Integer, starts_at: ::Stripe::V2::Billing::ContractCreateParams::PricingOverride::StartsAt, type: String).void
           }
          def initialize(
            ends_at: nil,
            lookup_key: nil,
            multiplier: nil,
            priority: nil,
            starts_at: nil,
            type: nil
          ); end
        end
        # The billing cycle anchor for the contract. If not provided, defaults to the pricing line start time.
        # It is only at the top-level of the contract with no option to override at the pricing line level.
        sig { returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor)) }
        def billing_cycle_anchor; end
        sig {
          params(_billing_cycle_anchor: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor))
         }
        def billing_cycle_anchor=(_billing_cycle_anchor); end
        # The billing settings for the contract.
        sig { returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings)) }
        def billing_settings; end
        sig {
          params(_billing_settings: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings))
         }
        def billing_settings=(_billing_settings); end
        # A unique user-provided contract number e.g. C-2026-0001.
        sig { returns(String) }
        def contract_number; end
        sig { params(_contract_number: String).returns(String) }
        def contract_number=(_contract_number); end
        # Currency of the contract.
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # Additional fields to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # Set of key-value pairs that you can attach to an object.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # A list of one-time fees to create with the contract. Each fee is billed as individual invoice items per its bill_schedule.
        sig {
          returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee]))
         }
        def one_time_fees; end
        sig {
          params(_one_time_fees: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee]))
         }
        def one_time_fees=(_one_time_fees); end
        # A list of pricing lines to create with the contract.
        sig { returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine]) }
        def pricing_lines; end
        sig {
          params(_pricing_lines: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine])
         }
        def pricing_lines=(_pricing_lines); end
        # A list of pricing overrides to create with the contract.
        sig {
          returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride]))
         }
        def pricing_overrides; end
        sig {
          params(_pricing_overrides: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride]))
         }
        def pricing_overrides=(_pricing_overrides); end
        sig {
          params(billing_cycle_anchor: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingCycleAnchor), billing_settings: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings), contract_number: String, currency: String, include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), one_time_fees: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee]), pricing_lines: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine], pricing_overrides: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride])).void
         }
        def initialize(
          billing_cycle_anchor: nil,
          billing_settings: nil,
          contract_number: nil,
          currency: nil,
          include: nil,
          metadata: nil,
          one_time_fees: nil,
          pricing_lines: nil,
          pricing_overrides: nil
        ); end
        def self.field_encodings
          @field_encodings = {
            pricing_lines: {
              kind: :array,
              element: {
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
            },
          }
        end
      end
    end
  end
end