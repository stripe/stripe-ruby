# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A commercial term. Display order is independent of billing evaluation order.
      class ContractTerm < APIResource
        OBJECT_NAME = "v2.billing.contract_term"
        def self.object_name
          "v2.billing.contract_term"
        end

        class PricingOverride < ::Stripe::StripeObject
          class Criterion < ::Stripe::StripeObject
            # Resolved IDs of recurring or scheduled_fee terms. Override terms are not valid targets.
            attr_reader :terms
            # Whether to include or exclude the selected recurring or scheduled_fee terms.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EndsAt < ::Stripe::StripeObject
            # The timestamp when the item ends.
            attr_reader :timestamp

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Multiply < ::Stripe::StripeObject
            # The multiplier, for example 0.85 for a 15% discount.
            attr_reader :factor

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { factor: :decimal_string }
            end
          end

          class Overwrite < ::Stripe::StripeObject
            class Tier < ::Stripe::StripeObject
              # Flat amount in minor currency units.
              attr_reader :flat_amount_decimal
              # Per-unit amount in minor currency units.
              attr_reader :unit_amount_decimal
              # Inclusive whole-number upper bound. Omitted for an unbounded final tier.
              attr_reader :up_to

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = {
                  flat_amount_decimal: :decimal_string,
                  unit_amount_decimal: :decimal_string,
                  up_to: :int64_string,
                }
              end
            end
            # Whether the replacement pricing is per unit or tiered.
            attr_reader :billing_scheme
            # Replacement pricing tiers.
            attr_reader :tiers
            # How the pricing tiers are applied.
            attr_reader :tiers_mode
            # The replacement per-unit amount in minor currency units.
            attr_reader :unit_amount_decimal

            def self.inner_class_types
              @inner_class_types = { tiers: Tier }
            end

            def self.field_remappings
              @field_remappings = {}
            end

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

          class StartsAt < ::Stripe::StripeObject
            # The timestamp when the item starts.
            attr_reader :timestamp

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Recurring or scheduled_fee terms selected by this override. An override without criteria applies to all recurring and scheduled_fee terms.
          attr_reader :criteria
          # The exclusive end of the validity window. Null for an open end.
          attr_reader :ends_at
          # Present when type is multiply.
          attr_reader :multiply
          # Present when type is overwrite.
          attr_reader :overwrite
          # Lower numbers win. Equal priorities resolve by display order; overrides do not stack.
          attr_reader :priority
          # The inclusive start of the override's validity window.
          attr_reader :starts_at
          # The pricing operation.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              criteria: Criterion,
              ends_at: EndsAt,
              multiply: Multiply,
              overwrite: Overwrite,
              starts_at: StartsAt,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              multiply: { kind: :object, fields: { factor: :decimal_string } },
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

        class RecurringPrice < ::Stripe::StripeObject
          class EndsAt < ::Stripe::StripeObject
            # The timestamp when the item ends.
            attr_reader :timestamp

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class StartsAt < ::Stripe::StripeObject
            # The timestamp when the item starts.
            attr_reader :timestamp

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The exclusive end of the term. Null for an open end.
          attr_reader :ends_at
          # The V1 recurring Price.
          attr_reader :price
          # Current licensed quantity. Null for metered Prices; history is available separately.
          attr_reader :quantity
          # The inclusive start of the term.
          attr_reader :starts_at

          def self.inner_class_types
            @inner_class_types = { ends_at: EndsAt, starts_at: StartsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = { quantity: :decimal_string }
          end
        end

        class ScheduledFee < ::Stripe::StripeObject
          class BillSchedule < ::Stripe::StripeObject
            class Custom < ::Stripe::StripeObject
              class BillAt < ::Stripe::StripeObject
                # The timestamp at which the fee will be billed.
                attr_reader :timestamp

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The resolved bill date.
              attr_reader :bill_at
              # Resolved installment quantity. Always present; defaults to 1 when omitted on input.
              attr_reader :quantity
              # Unit price in minor units of the contract's currency, before multiplying by quantity.
              attr_reader :unit_amount_decimal

              def self.inner_class_types
                @inner_class_types = { bill_at: BillAt }
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { quantity: :decimal_string, unit_amount_decimal: :decimal_string }
              end
            end
            # Scheduled installments and billed history.
            attr_reader :custom
            # The type of billing schedule.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { custom: Custom }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                custom: {
                  kind: :array,
                  element: {
                    kind: :object,
                    fields: { quantity: :decimal_string, unit_amount_decimal: :decimal_string },
                  },
                },
              }
            end
          end

          class ServicePeriod < ::Stripe::StripeObject
            class EndsAt < ::Stripe::StripeObject
              # The timestamp when the item ends.
              attr_reader :timestamp

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class StartsAt < ::Stripe::StripeObject
              # The timestamp when the item starts.
              attr_reader :timestamp

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The exclusive end of the service period.
            attr_reader :ends_at
            # The inclusive start of the service period.
            attr_reader :starts_at

            def self.inner_class_types
              @inner_class_types = { ends_at: EndsAt, starts_at: StartsAt }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Explicit bill dates and amounts, including billed history.
          attr_reader :bill_schedule
          # The V1 Product being billed.
          attr_reader :product
          # Informational invoice and revenue-recognition period with timestamp objects; does not affect billing or proration.
          attr_reader :service_period

          def self.inner_class_types
            @inner_class_types = { bill_schedule: BillSchedule, service_period: ServicePeriod }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              bill_schedule: {
                kind: :object,
                fields: {
                  custom: {
                    kind: :array,
                    element: {
                      kind: :object,
                      fields: { quantity: :decimal_string, unit_amount_decimal: :decimal_string },
                    },
                  },
                },
              },
            }
          end
        end
        # The stable ID of the term.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # The lookup key, unique across all term types on this contract.
        attr_reader :lookup_key
        # Set of key-value pairs attached to the term.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Present when type is pricing_override.
        attr_reader :pricing_override
        # Present when type is recurring_price.
        attr_reader :recurring_price
        # Present when type is scheduled_fee.
        attr_reader :scheduled_fee
        # The type of this term.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            pricing_override: PricingOverride,
            recurring_price: RecurringPrice,
            scheduled_fee: ScheduledFee,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            pricing_override: {
              kind: :object,
              fields: {
                multiply: { kind: :object, fields: { factor: :decimal_string } },
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
            recurring_price: { kind: :object, fields: { quantity: :decimal_string } },
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
                        fields: { quantity: :decimal_string, unit_amount_decimal: :decimal_string },
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
