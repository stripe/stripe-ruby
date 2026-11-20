# File generated from our OpenAPI spec
# frozen_string_literal: true

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
                  attr_accessor :id
                  # Select this term by its unique lookup key.
                  attr_accessor :lookup_key
                  # Whether the selector uses a term ID or lookup key.
                  attr_accessor :type

                  def initialize(id: nil, lookup_key: nil, type: nil)
                    @id = id
                    @lookup_key = lookup_key
                    @type = type
                  end
                end
                # Term selectors. Each ID or lookup key resolves to one fixed term ID.
                # Omitted or empty selects all charge-bearing terms. Override terms cannot be targets.
                attr_accessor :terms
                # Whether to include or exclude the selected recurring or scheduled_fee terms.
                attr_accessor :type

                def initialize(terms: nil, type: nil)
                  @terms = terms
                  @type = type
                end
              end

              class EndsAt < ::Stripe::RequestParams
                # The timestamp when the item ends. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the ends_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end

              class Multiply < ::Stripe::RequestParams
                # The multiplier, for example 0.85 for a 15% discount.
                attr_accessor :factor

                def initialize(factor: nil)
                  @factor = factor
                end

                def self.field_encodings
                  @field_encodings = { factor: :decimal_string }
                end
              end

              class Overwrite < ::Stripe::RequestParams
                class Tier < ::Stripe::RequestParams
                  # Flat amount in minor currency units.
                  attr_accessor :flat_amount_decimal
                  # Per-unit amount in minor currency units.
                  attr_accessor :unit_amount_decimal
                  # Inclusive whole-number upper bound. Omitted for an unbounded final tier.
                  attr_accessor :up_to

                  def initialize(flat_amount_decimal: nil, unit_amount_decimal: nil, up_to: nil)
                    @flat_amount_decimal = flat_amount_decimal
                    @unit_amount_decimal = unit_amount_decimal
                    @up_to = up_to
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
                attr_accessor :billing_scheme
                # Replacement pricing tiers.
                attr_accessor :tiers
                # How the pricing tiers are applied.
                attr_accessor :tiers_mode
                # The replacement per-unit amount in minor currency units.
                attr_accessor :unit_amount_decimal

                def initialize(
                  billing_scheme: nil,
                  tiers: nil,
                  tiers_mode: nil,
                  unit_amount_decimal: nil
                )
                  @billing_scheme = billing_scheme
                  @tiers = tiers
                  @tiers_mode = tiers_mode
                  @unit_amount_decimal = unit_amount_decimal
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

              class StartsAt < ::Stripe::RequestParams
                # The timestamp when the item starts. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the starts_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end
              # Optional criteria selecting recurring or scheduled_fee terms. If omitted, the override applies to all recurring and scheduled_fee terms.
              attr_accessor :criteria
              # The exclusive end. Omitted means open-ended.
              attr_accessor :ends_at
              # Required when type is multiply.
              attr_accessor :multiply
              # Required when type is overwrite.
              attr_accessor :overwrite
              # Lower numbers win; defaults to 50.
              attr_accessor :priority
              # The inclusive start of the validity window.
              attr_accessor :starts_at
              # The pricing operation. Exactly one matching pricing payload is required.
              attr_accessor :type

              def initialize(
                criteria: nil,
                ends_at: nil,
                multiply: nil,
                overwrite: nil,
                priority: nil,
                starts_at: nil,
                type: nil
              )
                @criteria = criteria
                @ends_at = ends_at
                @multiply = multiply
                @overwrite = overwrite
                @priority = priority
                @starts_at = starts_at
                @type = type
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

            class RecurringPrice < ::Stripe::RequestParams
              class EndsAt < ::Stripe::RequestParams
                # The timestamp when the item ends. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the ends_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end

              class StartsAt < ::Stripe::RequestParams
                # The timestamp when the item starts. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the starts_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end
              # The exclusive end. Omitted means open-ended.
              attr_accessor :ends_at
              # The V1 recurring Price.
              attr_accessor :price
              # Initial licensed quantity. Defaults to 1; must be omitted for metered Prices.
              attr_accessor :quantity
              # The inclusive start of the term.
              attr_accessor :starts_at

              def initialize(ends_at: nil, price: nil, quantity: nil, starts_at: nil)
                @ends_at = ends_at
                @price = price
                @quantity = quantity
                @starts_at = starts_at
              end

              def self.field_encodings
                @field_encodings = { quantity: :decimal_string }
              end
            end

            class ScheduledFee < ::Stripe::RequestParams
              class BillSchedule < ::Stripe::RequestParams
                class Custom < ::Stripe::RequestParams
                  class BillAt < ::Stripe::RequestParams
                    # The timestamp at which the entry should be billed. Required if `type` is `timestamp`.
                    attr_accessor :timestamp
                    # The type of the bill_at.
                    attr_accessor :type

                    def initialize(timestamp: nil, type: nil)
                      @timestamp = timestamp
                      @type = type
                    end
                  end
                  # A finite bill date. Resolved once per request, including on idempotent retries.
                  attr_accessor :bill_at
                  # Positive installment quantity. Defaults to 1 when omitted.
                  attr_accessor :quantity
                  # Positive unit price in minor units of the contract's currency, before multiplying by quantity.
                  attr_accessor :unit_amount_decimal

                  def initialize(bill_at: nil, quantity: nil, unit_amount_decimal: nil)
                    @bill_at = bill_at
                    @quantity = quantity
                    @unit_amount_decimal = unit_amount_decimal
                  end

                  def self.field_encodings
                    @field_encodings = {
                      quantity: :decimal_string,
                      unit_amount_decimal: :decimal_string,
                    }
                  end
                end
                # Between one and ten installments. Empty schedules are allowed only on update.
                attr_accessor :custom
                # The type of schedule.
                attr_accessor :type

                def initialize(custom: nil, type: nil)
                  @custom = custom
                  @type = type
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

              class ServicePeriod < ::Stripe::RequestParams
                class EndsAt < ::Stripe::RequestParams
                  # The timestamp when the item starts. Required if `type` is `timestamp`.
                  attr_accessor :timestamp
                  # The type of the starts_at.
                  attr_accessor :type

                  def initialize(timestamp: nil, type: nil)
                    @timestamp = timestamp
                    @type = type
                  end
                end

                class StartsAt < ::Stripe::RequestParams
                  # The timestamp when the item starts. Required if `type` is `timestamp`.
                  attr_accessor :timestamp
                  # The type of the starts_at.
                  attr_accessor :type

                  def initialize(timestamp: nil, type: nil)
                    @timestamp = timestamp
                    @type = type
                  end
                end
                # The finite exclusive end; must be after starts_at. Never is not supported.
                attr_accessor :ends_at
                # The finite inclusive start of the service period.
                attr_accessor :starts_at

                def initialize(ends_at: nil, starts_at: nil)
                  @ends_at = ends_at
                  @starts_at = starts_at
                end
              end
              # Explicit bill dates and amounts.
              attr_accessor :bill_schedule
              # The V1 Product being billed.
              attr_accessor :product
              # Informational service period, independent of bill dates.
              attr_accessor :service_period

              def initialize(bill_schedule: nil, product: nil, service_period: nil)
                @bill_schedule = bill_schedule
                @product = product
                @service_period = service_period
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
            # Lookup key unique across all term types on the contract.
            attr_accessor :lookup_key
            # Set of key-value pairs attached to the term.
            attr_accessor :metadata
            # Required when type is pricing_override.
            attr_accessor :pricing_override
            # Required when type is recurring_price.
            attr_accessor :recurring_price
            # Required when type is scheduled_fee.
            attr_accessor :scheduled_fee
            # The term type. Production types require exactly one matching payload.
            attr_accessor :type

            def initialize(
              lookup_key: nil,
              metadata: nil,
              pricing_override: nil,
              recurring_price: nil,
              scheduled_fee: nil,
              type: nil
            )
              @lookup_key = lookup_key
              @metadata = metadata
              @pricing_override = pricing_override
              @recurring_price = recurring_price
              @scheduled_fee = scheduled_fee
              @type = type
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
              attr_accessor :id
              # Select this term by its unique lookup key.
              attr_accessor :lookup_key
              # Whether the selector uses a term ID or lookup key.
              attr_accessor :type

              def initialize(id: nil, lookup_key: nil, type: nil)
                @id = id
                @lookup_key = lookup_key
                @type = type
              end
            end
            # Select a term by ID or its unique lookup key.
            attr_accessor :term

            def initialize(term: nil)
              @term = term
            end
          end

          class UpdateTerm < ::Stripe::RequestParams
            class PricingOverride < ::Stripe::RequestParams
              class EndsAt < ::Stripe::RequestParams
                # The timestamp when the item ends. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the ends_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end

              class StartsAt < ::Stripe::RequestParams
                # The timestamp when the item starts. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the starts_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end
              # Omission leaves the end unchanged; never requests an open end.
              attr_accessor :ends_at
              # Can change only before the override starts. Accepts timestamp or now.
              attr_accessor :starts_at

              def initialize(ends_at: nil, starts_at: nil)
                @ends_at = ends_at
                @starts_at = starts_at
              end
            end

            class RecurringPrice < ::Stripe::RequestParams
              class EndsAt < ::Stripe::RequestParams
                # The timestamp when the item ends. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the ends_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end

              class StartsAt < ::Stripe::RequestParams
                # The timestamp when the item starts. Required if `type` is `timestamp`.
                attr_accessor :timestamp
                # The type of the starts_at.
                attr_accessor :type

                def initialize(timestamp: nil, type: nil)
                  @timestamp = timestamp
                  @type = type
                end
              end
              # Omission leaves the end unchanged; never requests an open end.
              attr_accessor :ends_at
              # Update an active term's licensed quantity at the contract's current clock time,
              # or an unstarted term's initial quantity, preserving its ID. Ended terms cannot change quantity.
              attr_accessor :quantity
              # Reschedule an unstarted term in place.
              attr_accessor :starts_at

              def initialize(ends_at: nil, quantity: nil, starts_at: nil)
                @ends_at = ends_at
                @quantity = quantity
                @starts_at = starts_at
              end

              def self.field_encodings
                @field_encodings = { quantity: :decimal_string }
              end
            end

            class ScheduledFee < ::Stripe::RequestParams
              class BillSchedule < ::Stripe::RequestParams
                class Custom < ::Stripe::RequestParams
                  class BillAt < ::Stripe::RequestParams
                    # The timestamp at which the entry should be billed. Required if `type` is `timestamp`.
                    attr_accessor :timestamp
                    # The type of the bill_at.
                    attr_accessor :type

                    def initialize(timestamp: nil, type: nil)
                      @timestamp = timestamp
                      @type = type
                    end
                  end
                  # A finite bill date. Resolved once per request, including on idempotent retries.
                  attr_accessor :bill_at
                  # Positive installment quantity. Defaults to 1 when omitted.
                  attr_accessor :quantity
                  # Positive unit price in minor units of the contract's currency, before multiplying by quantity.
                  attr_accessor :unit_amount_decimal

                  def initialize(bill_at: nil, quantity: nil, unit_amount_decimal: nil)
                    @bill_at = bill_at
                    @quantity = quantity
                    @unit_amount_decimal = unit_amount_decimal
                  end

                  def self.field_encodings
                    @field_encodings = {
                      quantity: :decimal_string,
                      unit_amount_decimal: :decimal_string,
                    }
                  end
                end
                # Full replacement of up to ten unbilled installments. An explicit empty array cancels all of them.
                attr_accessor :custom
                # The type of schedule.
                attr_accessor :type

                def initialize(custom: nil, type: nil)
                  @custom = custom
                  @type = type
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

              class ServicePeriod < ::Stripe::RequestParams
                class EndsAt < ::Stripe::RequestParams
                  # The timestamp when the item starts. Required if `type` is `timestamp`.
                  attr_accessor :timestamp
                  # The type of the starts_at.
                  attr_accessor :type

                  def initialize(timestamp: nil, type: nil)
                    @timestamp = timestamp
                    @type = type
                  end
                end

                class StartsAt < ::Stripe::RequestParams
                  # The timestamp when the item starts. Required if `type` is `timestamp`.
                  attr_accessor :timestamp
                  # The type of the starts_at.
                  attr_accessor :type

                  def initialize(timestamp: nil, type: nil)
                    @timestamp = timestamp
                    @type = type
                  end
                end
                # The finite exclusive end; must be after starts_at. Never is not supported.
                attr_accessor :ends_at
                # The finite inclusive start of the service period.
                attr_accessor :starts_at

                def initialize(ends_at: nil, starts_at: nil)
                  @ends_at = ends_at
                  @starts_at = starts_at
                end
              end
              # Replace remaining unbilled installments. Billed entries remain immutable.
              attr_accessor :bill_schedule
              # Informational service period; cannot change historical billing.
              attr_accessor :service_period

              def initialize(bill_schedule: nil, service_period: nil)
                @bill_schedule = bill_schedule
                @service_period = service_period
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

            class Term < ::Stripe::RequestParams
              # Select this term by its stable ID.
              attr_accessor :id
              # Select this term by its unique lookup key.
              attr_accessor :lookup_key
              # Whether the selector uses a term ID or lookup key.
              attr_accessor :type

              def initialize(id: nil, lookup_key: nil, type: nil)
                @id = id
                @lookup_key = lookup_key
                @type = type
              end
            end
            # Metadata changes to apply immediately.
            attr_accessor :metadata
            # Only validity dates can change; pricing, criteria, and priority are immutable.
            attr_accessor :pricing_override
            # Must match the existing term's type.
            attr_accessor :recurring_price
            # Must match the existing term's type.
            attr_accessor :scheduled_fee
            # Select a term by ID or its unique lookup key.
            attr_accessor :term

            def initialize(
              metadata: nil,
              pricing_override: nil,
              recurring_price: nil,
              scheduled_fee: nil,
              term: nil
            )
              @metadata = metadata
              @pricing_override = pricing_override
              @recurring_price = recurring_price
              @scheduled_fee = scheduled_fee
              @term = term
            end

            def self.field_encodings
              @field_encodings = {
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
          attr_accessor :add_term
          # Remove a term that has not started.
          attr_accessor :remove_term
          # The action type. Exactly one matching payload is required.
          attr_accessor :type
          # Edit a term without changing its display position.
          attr_accessor :update_term

          def initialize(add_term: nil, remove_term: nil, type: nil, update_term: nil)
            @add_term = add_term
            @remove_term = remove_term
            @type = type
            @update_term = update_term
          end

          def self.field_encodings
            @field_encodings = {
              add_term: {
                kind: :object,
                fields: {
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
                attr_accessor :type

                def initialize(type: nil)
                  @type = type
                end
              end
              # Tax calculation settings.
              attr_accessor :tax

              def initialize(tax: nil)
                @tax = tax
              end
            end

            class Invoice < ::Stripe::RequestParams
              class TimeUntilDue < ::Stripe::RequestParams
                # The interval unit.
                attr_accessor :interval
                # The number of intervals.
                attr_accessor :interval_count

                def initialize(interval: nil, interval_count: nil)
                  @interval = interval
                  @interval_count = interval_count
                end
              end
              # How long the customer has to pay the invoice before it's past due.
              attr_accessor :time_until_due

              def initialize(time_until_due: nil)
                @time_until_due = time_until_due
              end
            end
            # The tax calculation settings to update.
            attr_accessor :calculation
            # The invoice settings to update.
            attr_accessor :invoice

            def initialize(calculation: nil, invoice: nil)
              @calculation = calculation
              @invoice = invoice
            end
          end

          class BillingProfileDetails < ::Stripe::RequestParams
            # The default payment method to charge for the contract.
            attr_accessor :default_payment_method

            def initialize(default_payment_method: nil)
              @default_payment_method = default_payment_method
            end
          end

          class CollectionSettingsDetails < ::Stripe::RequestParams
            # How payment is collected for the contract. An omitted value leaves the
            # collection method unchanged.
            attr_accessor :collection_method
            # The payment method configuration.
            attr_accessor :payment_method_configuration

            def initialize(collection_method: nil, payment_method_configuration: nil)
              @collection_method = collection_method
              @payment_method_configuration = payment_method_configuration
            end
          end
          # The bill settings to update (tax calculation type and/or invoice time until due).
          attr_accessor :bill_settings_details
          # The billing profile details to update.
          attr_accessor :billing_profile_details
          # The collection settings details to update on the contract.
          attr_accessor :collection_settings_details

          def initialize(
            bill_settings_details: nil,
            billing_profile_details: nil,
            collection_settings_details: nil
          )
            @bill_settings_details = bill_settings_details
            @billing_profile_details = billing_profile_details
            @collection_settings_details = collection_settings_details
          end
        end
        # Apply all term actions atomically.
        attr_accessor :actions
        # The billing settings to update on the contract.
        attr_accessor :billing_settings
        # The unique user-provided contract number. This can only be changed while the contract is in draft.
        attr_accessor :contract_number
        # Additional fields to include in the response.
        attr_accessor :include
        # Set of key-value pairs.
        attr_accessor :metadata

        def initialize(
          actions: nil,
          billing_settings: nil,
          contract_number: nil,
          include: nil,
          metadata: nil
        )
          @actions = actions
          @billing_settings = billing_settings
          @contract_number = contract_number
          @include = include
          @metadata = metadata
        end

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
