# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractUpdateParams < ::Stripe::RequestParams
        class Action < ::Stripe::RequestParams
          class AddTerm < ::Stripe::RequestParams
            class PricingOverride < ::Stripe::RequestParams
              class Criterion < ::Stripe::RequestParams
                class Term < ::Stripe::RequestParams
                  # Select this term by its stable ID.
                  sig { returns(T.nilable(String)) }
                  def id; end
                  sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
                  def id=(_id); end
                  # Select this term by its unique lookup key.
                  sig { returns(T.nilable(String)) }
                  def lookup_key; end
                  sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
                  def lookup_key=(_lookup_key); end
                  # Whether the selector uses a term ID or lookup key.
                  sig { returns(String) }
                  def type; end
                  sig { params(_type: String).returns(String) }
                  def type=(_type); end
                  sig {
                    params(id: T.nilable(String), lookup_key: T.nilable(String), type: String).void
                   }
                  def initialize(id: nil, lookup_key: nil, type: nil); end
                end
                # Term selectors. Each ID or lookup key resolves to one fixed term ID.
                # Omitted or empty selects all charge-bearing terms. Override terms cannot be targets.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion::Term]))
                 }
                def terms; end
                sig {
                  params(_terms: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion::Term])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion::Term]))
                 }
                def terms=(_terms); end
                # Whether to include or exclude the selected recurring or scheduled_fee terms.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(terms: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion::Term]), type: String).void
                 }
                def initialize(terms: nil, type: nil); end
              end
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
              class Multiply < ::Stripe::RequestParams
                # The multiplier, for example 0.85 for a 15% discount.
                sig { returns(BigDecimal) }
                def factor; end
                sig { params(_factor: BigDecimal).returns(BigDecimal) }
                def factor=(_factor); end
                sig { params(factor: BigDecimal).void }
                def initialize(factor: nil); end
                def self.field_encodings
                  @field_encodings = {factor: :decimal_string}
                end
              end
              class Overwrite < ::Stripe::RequestParams
                class Tier < ::Stripe::RequestParams
                  # Flat amount in minor currency units.
                  sig { returns(T.nilable(BigDecimal)) }
                  def flat_amount_decimal; end
                  sig {
                    params(_flat_amount_decimal: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal))
                   }
                  def flat_amount_decimal=(_flat_amount_decimal); end
                  # Per-unit amount in minor currency units.
                  sig { returns(T.nilable(BigDecimal)) }
                  def unit_amount_decimal; end
                  sig {
                    params(_unit_amount_decimal: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal))
                   }
                  def unit_amount_decimal=(_unit_amount_decimal); end
                  # Inclusive whole-number upper bound. Omitted for an unbounded final tier.
                  sig { returns(T.nilable(Integer)) }
                  def up_to; end
                  sig { params(_up_to: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def up_to=(_up_to); end
                  sig {
                    params(flat_amount_decimal: T.nilable(BigDecimal), unit_amount_decimal: T.nilable(BigDecimal), up_to: T.nilable(Integer)).void
                   }
                  def initialize(
                    flat_amount_decimal: nil,
                    unit_amount_decimal: nil,
                    up_to: nil
                  ); end
                  def self.field_encodings
                    @field_encodings = {
                      flat_amount_decimal: :decimal_string,
                      unit_amount_decimal: :decimal_string,
                      up_to: :int64_string,
                    }
                  end
                end
                # Whether the replacement pricing is per unit or tiered.
                sig { returns(T.nilable(String)) }
                def billing_scheme; end
                sig { params(_billing_scheme: T.nilable(String)).returns(T.nilable(String)) }
                def billing_scheme=(_billing_scheme); end
                # Replacement pricing tiers.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite::Tier]))
                 }
                def tiers; end
                sig {
                  params(_tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite::Tier])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite::Tier]))
                 }
                def tiers=(_tiers); end
                # How the pricing tiers are applied.
                sig { returns(T.nilable(String)) }
                def tiers_mode; end
                sig { params(_tiers_mode: T.nilable(String)).returns(T.nilable(String)) }
                def tiers_mode=(_tiers_mode); end
                # The replacement per-unit amount in minor currency units.
                sig { returns(T.nilable(BigDecimal)) }
                def unit_amount_decimal; end
                sig {
                  params(_unit_amount_decimal: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal))
                 }
                def unit_amount_decimal=(_unit_amount_decimal); end
                sig {
                  params(billing_scheme: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite::Tier]), tiers_mode: T.nilable(String), unit_amount_decimal: T.nilable(BigDecimal)).void
                 }
                def initialize(
                  billing_scheme: nil,
                  tiers: nil,
                  tiers_mode: nil,
                  unit_amount_decimal: nil
                ); end
                def self.field_encodings
                  @field_encodings = {
                    tiers: {
                      kind: :array,
                      element: {
                        kind: :object,
                        fields: {
                          flat_amount_decimal: :decimal_string,
                          unit_amount_decimal: :decimal_string,
                          up_to: :int64_string,
                        },
                      },
                    },
                    unit_amount_decimal: :decimal_string,
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
              # Optional criteria selecting recurring or scheduled_fee terms. If omitted, the override applies to all recurring and scheduled_fee terms.
              sig {
                returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion]))
               }
              def criteria; end
              sig {
                params(_criteria: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion]))
               }
              def criteria=(_criteria); end
              # The exclusive end. Omitted means open-ended.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::EndsAt))
               }
              def ends_at; end
              sig {
                params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::EndsAt))
               }
              def ends_at=(_ends_at); end
              # Required when type is multiply.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Multiply))
               }
              def multiply; end
              sig {
                params(_multiply: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Multiply)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Multiply))
               }
              def multiply=(_multiply); end
              # Required when type is overwrite.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite))
               }
              def overwrite; end
              sig {
                params(_overwrite: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite))
               }
              def overwrite=(_overwrite); end
              # Lower numbers win; defaults to 50.
              sig { returns(T.nilable(Integer)) }
              def priority; end
              sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def priority=(_priority); end
              # The inclusive start of the validity window.
              sig {
                returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::StartsAt)
               }
              def starts_at; end
              sig {
                params(_starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::StartsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::StartsAt)
               }
              def starts_at=(_starts_at); end
              # The pricing operation. Exactly one matching pricing payload is required.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(criteria: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Criterion]), ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::EndsAt), multiply: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Multiply), overwrite: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::Overwrite), priority: T.nilable(Integer), starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride::StartsAt, type: String).void
               }
              def initialize(
                criteria: nil,
                ends_at: nil,
                multiply: nil,
                overwrite: nil,
                priority: nil,
                starts_at: nil,
                type: nil
              ); end
              def self.field_encodings
                @field_encodings = {
                  multiply: {kind: :object, fields: {factor: :decimal_string}},
                  overwrite: {
                    kind: :object,
                    fields: {
                      tiers: {
                        kind: :array,
                        element: {
                          kind: :object,
                          fields: {
                            flat_amount_decimal: :decimal_string,
                            unit_amount_decimal: :decimal_string,
                            up_to: :int64_string,
                          },
                        },
                      },
                      unit_amount_decimal: :decimal_string,
                    },
                  },
                }
              end
            end
            class RecurringPrice < ::Stripe::RequestParams
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
              # The exclusive end. Omitted means open-ended.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::EndsAt))
               }
              def ends_at; end
              sig {
                params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::EndsAt))
               }
              def ends_at=(_ends_at); end
              # The V1 recurring Price.
              sig { returns(String) }
              def price; end
              sig { params(_price: String).returns(String) }
              def price=(_price); end
              # Initial licensed quantity. Defaults to 1; must be omitted for metered Prices.
              sig { returns(T.nilable(BigDecimal)) }
              def quantity; end
              sig { params(_quantity: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal)) }
              def quantity=(_quantity); end
              # The inclusive start of the term.
              sig {
                returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::StartsAt)
               }
              def starts_at; end
              sig {
                params(_starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::StartsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::StartsAt)
               }
              def starts_at=(_starts_at); end
              sig {
                params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::EndsAt), price: String, quantity: T.nilable(BigDecimal), starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice::StartsAt).void
               }
              def initialize(ends_at: nil, price: nil, quantity: nil, starts_at: nil); end
              def self.field_encodings
                @field_encodings = {quantity: :decimal_string}
              end
            end
            class ScheduledFee < ::Stripe::RequestParams
              class BillSchedule < ::Stripe::RequestParams
                class Custom < ::Stripe::RequestParams
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
                  # A finite bill date. Resolved once per request, including on idempotent retries.
                  sig {
                    returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom::BillAt)
                   }
                  def bill_at; end
                  sig {
                    params(_bill_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom::BillAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom::BillAt)
                   }
                  def bill_at=(_bill_at); end
                  # Positive installment quantity. Defaults to 1 when omitted.
                  sig { returns(T.nilable(BigDecimal)) }
                  def quantity; end
                  sig { params(_quantity: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal)) }
                  def quantity=(_quantity); end
                  # Positive unit price in minor units of the contract's currency, before multiplying by quantity.
                  sig { returns(BigDecimal) }
                  def unit_amount_decimal; end
                  sig { params(_unit_amount_decimal: BigDecimal).returns(BigDecimal) }
                  def unit_amount_decimal=(_unit_amount_decimal); end
                  sig {
                    params(bill_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom::BillAt, quantity: T.nilable(BigDecimal), unit_amount_decimal: BigDecimal).void
                   }
                  def initialize(bill_at: nil, quantity: nil, unit_amount_decimal: nil); end
                  def self.field_encodings
                    @field_encodings = {
                      quantity: :decimal_string,
                      unit_amount_decimal: :decimal_string,
                    }
                  end
                end
                # Between one and ten installments. Empty schedules are allowed only on update.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom]))
                 }
                def custom; end
                sig {
                  params(_custom: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom]))
                 }
                def custom=(_custom); end
                # The type of schedule.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(custom: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule::Custom]), type: String).void
                 }
                def initialize(custom: nil, type: nil); end
                def self.field_encodings
                  @field_encodings = {
                    custom: {
                      kind: :array,
                      element: {
                        kind: :object,
                        fields: {quantity: :decimal_string, unit_amount_decimal: :decimal_string},
                      },
                    },
                  }
                end
              end
              class ServicePeriod < ::Stripe::RequestParams
                class EndsAt < ::Stripe::RequestParams
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
                # The finite exclusive end; must be after starts_at. Never is not supported.
                sig {
                  returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::EndsAt)
                 }
                def ends_at; end
                sig {
                  params(_ends_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::EndsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::EndsAt)
                 }
                def ends_at=(_ends_at); end
                # The finite inclusive start of the service period.
                sig {
                  returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::StartsAt)
                 }
                def starts_at; end
                sig {
                  params(_starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::StartsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::StartsAt)
                 }
                def starts_at=(_starts_at); end
                sig {
                  params(ends_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::EndsAt, starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod::StartsAt).void
                 }
                def initialize(ends_at: nil, starts_at: nil); end
              end
              # Explicit bill dates and amounts.
              sig {
                returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule)
               }
              def bill_schedule; end
              sig {
                params(_bill_schedule: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule)
               }
              def bill_schedule=(_bill_schedule); end
              # The V1 Product being billed.
              sig { returns(String) }
              def product; end
              sig { params(_product: String).returns(String) }
              def product=(_product); end
              # Informational service period, independent of bill dates.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod))
               }
              def service_period; end
              sig {
                params(_service_period: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod))
               }
              def service_period=(_service_period); end
              sig {
                params(bill_schedule: ::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::BillSchedule, product: String, service_period: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee::ServicePeriod)).void
               }
              def initialize(bill_schedule: nil, product: nil, service_period: nil); end
              def self.field_encodings
                @field_encodings = {
                  bill_schedule: {
                    kind: :object,
                    fields: {
                      custom: {
                        kind: :array,
                        element: {
                          kind: :object,
                          fields: {quantity: :decimal_string, unit_amount_decimal: :decimal_string},
                        },
                      },
                    },
                  },
                }
              end
            end
            # Lookup key unique across all term types on the contract.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
            def lookup_key=(_lookup_key); end
            # Set of key-value pairs attached to the term.
            sig { returns(T.nilable(T::Hash[String, String])) }
            def metadata; end
            sig {
              params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
             }
            def metadata=(_metadata); end
            # Required when type is pricing_override.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride))
             }
            def pricing_override; end
            sig {
              params(_pricing_override: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride))
             }
            def pricing_override=(_pricing_override); end
            # Required when type is recurring_price.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice))
             }
            def recurring_price; end
            sig {
              params(_recurring_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice))
             }
            def recurring_price=(_recurring_price); end
            # Required when type is scheduled_fee.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee))
             }
            def scheduled_fee; end
            sig {
              params(_scheduled_fee: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee))
             }
            def scheduled_fee=(_scheduled_fee); end
            # The term type. Production types require exactly one matching payload.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), pricing_override: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::PricingOverride), recurring_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::RecurringPrice), scheduled_fee: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm::ScheduledFee), type: String).void
             }
            def initialize(
              lookup_key: nil,
              metadata: nil,
              pricing_override: nil,
              recurring_price: nil,
              scheduled_fee: nil,
              type: nil
            ); end
            def self.field_encodings
              @field_encodings = {
                pricing_override: {
                  kind: :object,
                  fields: {
                    multiply: {kind: :object, fields: {factor: :decimal_string}},
                    overwrite: {
                      kind: :object,
                      fields: {
                        tiers: {
                          kind: :array,
                          element: {
                            kind: :object,
                            fields: {
                              flat_amount_decimal: :decimal_string,
                              unit_amount_decimal: :decimal_string,
                              up_to: :int64_string,
                            },
                          },
                        },
                        unit_amount_decimal: :decimal_string,
                      },
                    },
                  },
                },
                recurring_price: {kind: :object, fields: {quantity: :decimal_string}},
                scheduled_fee: {
                  kind: :object,
                  fields: {
                    bill_schedule: {
                      kind: :object,
                      fields: {
                        custom: {
                          kind: :array,
                          element: {
                            kind: :object,
                            fields: {
                              quantity: :decimal_string,
                              unit_amount_decimal: :decimal_string,
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
          class RemoveTerm < ::Stripe::RequestParams
            class Term < ::Stripe::RequestParams
              # Select this term by its stable ID.
              sig { returns(T.nilable(String)) }
              def id; end
              sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
              def id=(_id); end
              # Select this term by its unique lookup key.
              sig { returns(T.nilable(String)) }
              def lookup_key; end
              sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
              def lookup_key=(_lookup_key); end
              # Whether the selector uses a term ID or lookup key.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(id: T.nilable(String), lookup_key: T.nilable(String), type: String).void
               }
              def initialize(id: nil, lookup_key: nil, type: nil); end
            end
            # Select a term by ID or its unique lookup key.
            sig { returns(::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm::Term) }
            def term; end
            sig {
              params(_term: ::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm::Term).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm::Term)
             }
            def term=(_term); end
            sig {
              params(term: ::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm::Term).void
             }
            def initialize(term: nil); end
          end
          class UpdateTerm < ::Stripe::RequestParams
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
              # Omission leaves the end unchanged; never requests an open end.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::EndsAt))
               }
              def ends_at; end
              sig {
                params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::EndsAt))
               }
              def ends_at=(_ends_at); end
              # Can change only before the override starts. Accepts timestamp or now.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::StartsAt))
               }
              def starts_at; end
              sig {
                params(_starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::StartsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::StartsAt))
               }
              def starts_at=(_starts_at); end
              sig {
                params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::EndsAt), starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride::StartsAt)).void
               }
              def initialize(ends_at: nil, starts_at: nil); end
            end
            class RecurringPrice < ::Stripe::RequestParams
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
              # Omission leaves the end unchanged; never requests an open end.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::EndsAt))
               }
              def ends_at; end
              sig {
                params(_ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::EndsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::EndsAt))
               }
              def ends_at=(_ends_at); end
              # Update an active term's licensed quantity at the contract's current clock time,
              # or an unstarted term's initial quantity, preserving its ID. Ended terms cannot change quantity.
              sig { returns(T.nilable(BigDecimal)) }
              def quantity; end
              sig { params(_quantity: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal)) }
              def quantity=(_quantity); end
              # Reschedule an unstarted term in place.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::StartsAt))
               }
              def starts_at; end
              sig {
                params(_starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::StartsAt)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::StartsAt))
               }
              def starts_at=(_starts_at); end
              sig {
                params(ends_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::EndsAt), quantity: T.nilable(BigDecimal), starts_at: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice::StartsAt)).void
               }
              def initialize(ends_at: nil, quantity: nil, starts_at: nil); end
              def self.field_encodings
                @field_encodings = {quantity: :decimal_string}
              end
            end
            class ScheduledFee < ::Stripe::RequestParams
              class BillSchedule < ::Stripe::RequestParams
                class Custom < ::Stripe::RequestParams
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
                  # A finite bill date. Resolved once per request, including on idempotent retries.
                  sig {
                    returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom::BillAt)
                   }
                  def bill_at; end
                  sig {
                    params(_bill_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom::BillAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom::BillAt)
                   }
                  def bill_at=(_bill_at); end
                  # Positive installment quantity. Defaults to 1 when omitted.
                  sig { returns(T.nilable(BigDecimal)) }
                  def quantity; end
                  sig { params(_quantity: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal)) }
                  def quantity=(_quantity); end
                  # Positive unit price in minor units of the contract's currency, before multiplying by quantity.
                  sig { returns(BigDecimal) }
                  def unit_amount_decimal; end
                  sig { params(_unit_amount_decimal: BigDecimal).returns(BigDecimal) }
                  def unit_amount_decimal=(_unit_amount_decimal); end
                  sig {
                    params(bill_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom::BillAt, quantity: T.nilable(BigDecimal), unit_amount_decimal: BigDecimal).void
                   }
                  def initialize(bill_at: nil, quantity: nil, unit_amount_decimal: nil); end
                  def self.field_encodings
                    @field_encodings = {
                      quantity: :decimal_string,
                      unit_amount_decimal: :decimal_string,
                    }
                  end
                end
                # Full replacement of up to ten unbilled installments. An explicit empty array cancels all of them.
                sig {
                  returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom]))
                 }
                def custom; end
                sig {
                  params(_custom: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom]))
                 }
                def custom=(_custom); end
                # The type of schedule.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(custom: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule::Custom]), type: String).void
                 }
                def initialize(custom: nil, type: nil); end
                def self.field_encodings
                  @field_encodings = {
                    custom: {
                      kind: :array,
                      element: {
                        kind: :object,
                        fields: {quantity: :decimal_string, unit_amount_decimal: :decimal_string},
                      },
                    },
                  }
                end
              end
              class ServicePeriod < ::Stripe::RequestParams
                class EndsAt < ::Stripe::RequestParams
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
                # The finite exclusive end; must be after starts_at. Never is not supported.
                sig {
                  returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::EndsAt)
                 }
                def ends_at; end
                sig {
                  params(_ends_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::EndsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::EndsAt)
                 }
                def ends_at=(_ends_at); end
                # The finite inclusive start of the service period.
                sig {
                  returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::StartsAt)
                 }
                def starts_at; end
                sig {
                  params(_starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::StartsAt).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::StartsAt)
                 }
                def starts_at=(_starts_at); end
                sig {
                  params(ends_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::EndsAt, starts_at: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod::StartsAt).void
                 }
                def initialize(ends_at: nil, starts_at: nil); end
              end
              # Replace remaining unbilled installments. Billed entries remain immutable.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule))
               }
              def bill_schedule; end
              sig {
                params(_bill_schedule: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule))
               }
              def bill_schedule=(_bill_schedule); end
              # Informational service period; cannot change historical billing.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod))
               }
              def service_period; end
              sig {
                params(_service_period: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod))
               }
              def service_period=(_service_period); end
              sig {
                params(bill_schedule: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::BillSchedule), service_period: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee::ServicePeriod)).void
               }
              def initialize(bill_schedule: nil, service_period: nil); end
              def self.field_encodings
                @field_encodings = {
                  bill_schedule: {
                    kind: :object,
                    fields: {
                      custom: {
                        kind: :array,
                        element: {
                          kind: :object,
                          fields: {quantity: :decimal_string, unit_amount_decimal: :decimal_string},
                        },
                      },
                    },
                  },
                }
              end
            end
            class Term < ::Stripe::RequestParams
              # Select this term by its stable ID.
              sig { returns(T.nilable(String)) }
              def id; end
              sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
              def id=(_id); end
              # Select this term by its unique lookup key.
              sig { returns(T.nilable(String)) }
              def lookup_key; end
              sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
              def lookup_key=(_lookup_key); end
              # Whether the selector uses a term ID or lookup key.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(id: T.nilable(String), lookup_key: T.nilable(String), type: String).void
               }
              def initialize(id: nil, lookup_key: nil, type: nil); end
            end
            # Metadata changes to apply immediately.
            sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
            def metadata; end
            sig {
              params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
             }
            def metadata=(_metadata); end
            # Only validity dates can change; pricing, criteria, and priority are immutable.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride))
             }
            def pricing_override; end
            sig {
              params(_pricing_override: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride))
             }
            def pricing_override=(_pricing_override); end
            # Must match the existing term's type.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice))
             }
            def recurring_price; end
            sig {
              params(_recurring_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice))
             }
            def recurring_price=(_recurring_price); end
            # Must match the existing term's type.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee))
             }
            def scheduled_fee; end
            sig {
              params(_scheduled_fee: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee))
             }
            def scheduled_fee=(_scheduled_fee); end
            # Select a term by ID or its unique lookup key.
            sig { returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::Term) }
            def term; end
            sig {
              params(_term: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::Term).returns(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::Term)
             }
            def term=(_term); end
            sig {
              params(metadata: T.nilable(T::Hash[String, T.nilable(String)]), pricing_override: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::PricingOverride), recurring_price: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::RecurringPrice), scheduled_fee: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::ScheduledFee), term: ::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm::Term).void
             }
            def initialize(
              metadata: nil,
              pricing_override: nil,
              recurring_price: nil,
              scheduled_fee: nil,
              term: nil
            ); end
            def self.field_encodings
              @field_encodings = {
                recurring_price: {kind: :object, fields: {quantity: :decimal_string}},
                scheduled_fee: {
                  kind: :object,
                  fields: {
                    bill_schedule: {
                      kind: :object,
                      fields: {
                        custom: {
                          kind: :array,
                          element: {
                            kind: :object,
                            fields: {
                              quantity: :decimal_string,
                              unit_amount_decimal: :decimal_string,
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
          # Prepend a term, preserving relative order among additions in this request.
          sig { returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm)) }
          def add_term; end
          sig {
            params(_add_term: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm))
           }
          def add_term=(_add_term); end
          # Remove a term that has not started.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm))
           }
          def remove_term; end
          sig {
            params(_remove_term: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm))
           }
          def remove_term=(_remove_term); end
          # The action type. Exactly one matching payload is required.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Edit a term without changing its display position.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm))
           }
          def update_term; end
          sig {
            params(_update_term: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm))
           }
          def update_term=(_update_term); end
          sig {
            params(add_term: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::AddTerm), remove_term: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::RemoveTerm), type: String, update_term: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::Action::UpdateTerm)).void
           }
          def initialize(add_term: nil, remove_term: nil, type: nil, update_term: nil); end
          def self.field_encodings
            @field_encodings = {
              add_term: {
                kind: :object,
                fields: {
                  pricing_override: {
                    kind: :object,
                    fields: {
                      multiply: {kind: :object, fields: {factor: :decimal_string}},
                      overwrite: {
                        kind: :object,
                        fields: {
                          tiers: {
                            kind: :array,
                            element: {
                              kind: :object,
                              fields: {
                                flat_amount_decimal: :decimal_string,
                                unit_amount_decimal: :decimal_string,
                                up_to: :int64_string,
                              },
                            },
                          },
                          unit_amount_decimal: :decimal_string,
                        },
                      },
                    },
                  },
                  recurring_price: {kind: :object, fields: {quantity: :decimal_string}},
                  scheduled_fee: {
                    kind: :object,
                    fields: {
                      bill_schedule: {
                        kind: :object,
                        fields: {
                          custom: {
                            kind: :array,
                            element: {
                              kind: :object,
                              fields: {
                                quantity: :decimal_string,
                                unit_amount_decimal: :decimal_string,
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                },
              },
              update_term: {
                kind: :object,
                fields: {
                  recurring_price: {kind: :object, fields: {quantity: :decimal_string}},
                  scheduled_fee: {
                    kind: :object,
                    fields: {
                      bill_schedule: {
                        kind: :object,
                        fields: {
                          custom: {
                            kind: :array,
                            element: {
                              kind: :object,
                              fields: {
                                quantity: :decimal_string,
                                unit_amount_decimal: :decimal_string,
                              },
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
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation::Tax))
               }
              def tax; end
              sig {
                params(_tax: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation::Tax)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation::Tax))
               }
              def tax=(_tax); end
              sig {
                params(tax: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation::Tax)).void
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
              # How long the customer has to pay the invoice before it's past due.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue))
               }
              def time_until_due; end
              sig {
                params(_time_until_due: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue))
               }
              def time_until_due=(_time_until_due); end
              sig {
                params(time_until_due: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice::TimeUntilDue)).void
               }
              def initialize(time_until_due: nil); end
            end
            # The tax calculation settings to update.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation))
             }
            def calculation; end
            sig {
              params(_calculation: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation))
             }
            def calculation=(_calculation); end
            # The invoice settings to update.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice))
             }
            def invoice; end
            sig {
              params(_invoice: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice))
             }
            def invoice=(_invoice); end
            sig {
              params(calculation: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Calculation), invoice: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails::Invoice)).void
             }
            def initialize(calculation: nil, invoice: nil); end
          end
          class BillingProfileDetails < ::Stripe::RequestParams
            # The default payment method to charge for the contract.
            sig { returns(T.nilable(String)) }
            def default_payment_method; end
            sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
            def default_payment_method=(_default_payment_method); end
            sig { params(default_payment_method: T.nilable(String)).void }
            def initialize(default_payment_method: nil); end
          end
          class CollectionSettingsDetails < ::Stripe::RequestParams
            # How payment is collected for the contract. An omitted value leaves the
            # collection method unchanged.
            sig { returns(T.nilable(String)) }
            def collection_method; end
            sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
            def collection_method=(_collection_method); end
            # The payment method configuration.
            sig { returns(T.nilable(String)) }
            def payment_method_configuration; end
            sig {
              params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String))
             }
            def payment_method_configuration=(_payment_method_configuration); end
            sig {
              params(collection_method: T.nilable(String), payment_method_configuration: T.nilable(String)).void
             }
            def initialize(collection_method: nil, payment_method_configuration: nil); end
          end
          # The bill settings to update (tax calculation type and/or invoice time until due).
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails))
           }
          def bill_settings_details; end
          sig {
            params(_bill_settings_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails))
           }
          def bill_settings_details=(_bill_settings_details); end
          # The billing profile details to update.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillingProfileDetails))
           }
          def billing_profile_details; end
          sig {
            params(_billing_profile_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillingProfileDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillingProfileDetails))
           }
          def billing_profile_details=(_billing_profile_details); end
          # The collection settings details to update on the contract.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::CollectionSettingsDetails))
           }
          def collection_settings_details; end
          sig {
            params(_collection_settings_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::CollectionSettingsDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::CollectionSettingsDetails))
           }
          def collection_settings_details=(_collection_settings_details); end
          sig {
            params(bill_settings_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillSettingsDetails), billing_profile_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::BillingProfileDetails), collection_settings_details: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings::CollectionSettingsDetails)).void
           }
          def initialize(
            bill_settings_details: nil,
            billing_profile_details: nil,
            collection_settings_details: nil
          ); end
        end
        # Apply all term actions atomically.
        sig { returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action])) }
        def actions; end
        sig {
          params(_actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action]))
         }
        def actions=(_actions); end
        # The billing settings to update on the contract.
        sig { returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings)) }
        def billing_settings; end
        sig {
          params(_billing_settings: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings)).returns(T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings))
         }
        def billing_settings=(_billing_settings); end
        # The unique user-provided contract number. This can only be changed while the contract is in draft.
        sig { returns(T.nilable(String)) }
        def contract_number; end
        sig { params(_contract_number: T.nilable(String)).returns(T.nilable(String)) }
        def contract_number=(_contract_number); end
        # Additional fields to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # Set of key-value pairs.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        sig {
          params(actions: T.nilable(T::Array[::Stripe::V2::Billing::ContractUpdateParams::Action]), billing_settings: T.nilable(::Stripe::V2::Billing::ContractUpdateParams::BillingSettings), contract_number: T.nilable(String), include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(
          actions: nil,
          billing_settings: nil,
          contract_number: nil,
          include: nil,
          metadata: nil
        ); end
        def self.field_encodings
          @field_encodings = {
            actions: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  add_term: {
                    kind: :object,
                    fields: {
                      pricing_override: {
                        kind: :object,
                        fields: {
                          multiply: {kind: :object, fields: {factor: :decimal_string}},
                          overwrite: {
                            kind: :object,
                            fields: {
                              tiers: {
                                kind: :array,
                                element: {
                                  kind: :object,
                                  fields: {
                                    flat_amount_decimal: :decimal_string,
                                    unit_amount_decimal: :decimal_string,
                                    up_to: :int64_string,
                                  },
                                },
                              },
                              unit_amount_decimal: :decimal_string,
                            },
                          },
                        },
                      },
                      recurring_price: {kind: :object, fields: {quantity: :decimal_string}},
                      scheduled_fee: {
                        kind: :object,
                        fields: {
                          bill_schedule: {
                            kind: :object,
                            fields: {
                              custom: {
                                kind: :array,
                                element: {
                                  kind: :object,
                                  fields: {
                                    quantity: :decimal_string,
                                    unit_amount_decimal: :decimal_string,
                                  },
                                },
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                  update_term: {
                    kind: :object,
                    fields: {
                      recurring_price: {kind: :object, fields: {quantity: :decimal_string}},
                      scheduled_fee: {
                        kind: :object,
                        fields: {
                          bill_schedule: {
                            kind: :object,
                            fields: {
                              custom: {
                                kind: :array,
                                element: {
                                  kind: :object,
                                  fields: {
                                    quantity: :decimal_string,
                                    unit_amount_decimal: :decimal_string,
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
              },
            },
          }
        end
      end
    end
  end
end