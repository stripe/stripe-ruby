# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Pricing Plan Subscription represents a customer's active subscription to a Pricing Plan. It tracks both the servicing
      # status (whether the customer is receiving service) and collection status (whether payments are current). Subscriptions
      # are created through Billing Intents and bill according to the associated Billing Cadence.
      class PricingPlanSubscription < APIResource
        OBJECT_NAME = "v2.billing.pricing_plan_subscription"
        def self.object_name
          "v2.billing.pricing_plan_subscription"
        end

        class CancellationDetails < ::Stripe::StripeObject
          # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
          attr_reader :comment
          # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
          attr_reader :feedback
          # System-generated reason for cancellation.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CollectionStatusTransitions < ::Stripe::StripeObject
          # When the collection status transitioned to awaiting customer action.
          attr_reader :awaiting_customer_action_at
          # When the collection status transitioned to current.
          attr_reader :current_at
          # When the collection status transitioned to past due.
          attr_reader :past_due_at
          # When the collection status transitioned to paused.
          attr_reader :paused_at
          # When the collection status transitioned to unpaid.
          attr_reader :unpaid_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class DiscountDetail < ::Stripe::StripeObject
          class Source < ::Stripe::StripeObject
            # The ID of the Coupon.
            attr_reader :coupon
            # Type of the Discount source.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The ID of the Discount.
          attr_reader :discount
          # The time at which the Discount ends, if applicable.
          attr_reader :end
          # The ID of the PromotionCode, if applicable.
          attr_reader :promotion_code
          # The source of the Discount.
          attr_reader :source
          # The time at which the Discount starts.
          attr_reader :start

          def self.inner_class_types
            @inner_class_types = { source: Source }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PricingPlanComponentDetail < ::Stripe::StripeObject
          class LicenseFeeDetails < ::Stripe::StripeObject
            class ServiceCycle < ::Stripe::StripeObject
              # The interval for assessing service.
              attr_reader :interval
              # The length of the interval for assessing service. For example, set this to 3 and `interval` to `"month"` in
              # order to specify quarterly service.
              attr_reader :interval_count

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Tier < ::Stripe::StripeObject
              # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
              attr_reader :flat_amount
              # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
              # most 12 decimal places.
              attr_reader :unit_amount
              # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
              # be set.
              attr_reader :up_to_decimal
              # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
              attr_reader :up_to_inf

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { up_to_decimal: :decimal_string }
              end
            end

            class TransformQuantity < ::Stripe::StripeObject
              # Divide usage by this number.
              attr_reader :divide_by
              # After division, round the result up or down.
              attr_reader :round

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { divide_by: :int64_string }
              end
            end
            # Three-letter ISO currency code, in lowercase.
            attr_reader :currency
            # A customer-facing name for the license fee.
            attr_reader :display_name
            # The ID of the License Fee.
            attr_reader :license_fee
            # The ID of the License Fee Version.
            attr_reader :license_fee_version
            # Quantity of the license fee on the subscription.
            attr_reader :quantity
            # The service cycle configuration.
            attr_reader :service_cycle
            # Defines whether the tiering price should be graduated or volume-based.
            attr_reader :tiering_mode
            # Each element represents a pricing tier.
            attr_reader :tiers
            # Apply a transformation to the reported usage or set quantity before computing the amount billed.
            attr_reader :transform_quantity
            # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal places.
            attr_reader :unit_amount
            # The unit label from the licensed item, used for display purposes (e.g. "seat", "environment").
            attr_reader :unit_label

            def self.inner_class_types
              @inner_class_types = {
                service_cycle: ServiceCycle,
                tiers: Tier,
                transform_quantity: TransformQuantity,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                tiers: {
                  kind: :array,
                  element: { kind: :object, fields: { up_to_decimal: :decimal_string } },
                },
                transform_quantity: { kind: :object, fields: { divide_by: :int64_string } },
              }
            end
          end

          class RateCardDetails < ::Stripe::StripeObject
            class ServiceCycle < ::Stripe::StripeObject
              # The interval for assessing service.
              attr_reader :interval
              # The length of the interval for assessing service. For example, set this to 3 and `interval` to `"month"` in
              # order to specify quarterly service.
              attr_reader :interval_count

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Three-letter ISO currency code, in lowercase.
            attr_reader :currency
            # A customer-facing name for the rate card.
            attr_reader :display_name
            # The ID of the Rate Card.
            attr_reader :rate_card
            # The ID of the Rate Card Version.
            attr_reader :rate_card_version
            # The service cycle configuration.
            attr_reader :service_cycle
            # Whether the rates are inclusive or exclusive of tax.
            attr_reader :tax_behavior

            def self.inner_class_types
              @inner_class_types = { service_cycle: ServiceCycle }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class RecurringCreditGrantDetails < ::Stripe::StripeObject
            class CreditGrantDetails < ::Stripe::StripeObject
              class Amount < ::Stripe::StripeObject
                class CustomPricingUnit < ::Stripe::StripeObject
                  # The Custom Pricing Unit object.
                  attr_reader :custom_pricing_unit_details
                  # The id of the custom pricing unit.
                  attr_reader :id
                  # The value of the credit grant, decimal value represented as a string.
                  attr_reader :value

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end

                  def self.field_encodings
                    @field_encodings = { value: :decimal_string }
                  end
                end
                # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
                attr_reader :custom_pricing_unit
                # The monetary amount of the credit grant. Required if `type` is `monetary`.
                attr_reader :monetary
                # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { custom_pricing_unit: CustomPricingUnit }
                end

                def self.field_remappings
                  @field_remappings = {}
                end

                def self.field_encodings
                  @field_encodings = {
                    custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                  }
                end
              end

              class ApplicabilityConfig < ::Stripe::StripeObject
                class Scope < ::Stripe::StripeObject
                  # The billable items to apply the credit grant to.
                  attr_reader :billable_items
                  # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
                  attr_reader :price_type

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The applicability scope of the credit grant.
                attr_reader :scope

                def self.inner_class_types
                  @inner_class_types = { scope: Scope }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ExpiryConfig < ::Stripe::StripeObject
                # The type of the expiry configuration. We currently support `end_of_service_period`.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The amount of the credit grant.
              attr_reader :amount
              # Defines the scope where the credit grant is applicable.
              attr_reader :applicability_config
              # The expiry configuration for the credit grant.
              attr_reader :expiry_config

              def self.inner_class_types
                @inner_class_types = {
                  amount: Amount,
                  applicability_config: ApplicabilityConfig,
                  expiry_config: ExpiryConfig,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = {
                  amount: {
                    kind: :object,
                    fields: {
                      custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                    },
                  },
                }
              end
            end

            class CreditGrantPerTenantDetails < ::Stripe::StripeObject
              class Amount < ::Stripe::StripeObject
                class CustomPricingUnit < ::Stripe::StripeObject
                  # The Custom Pricing Unit object.
                  attr_reader :custom_pricing_unit_details
                  # The id of the custom pricing unit.
                  attr_reader :id
                  # The value of the credit grant, decimal value represented as a string.
                  attr_reader :value

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end

                  def self.field_encodings
                    @field_encodings = { value: :decimal_string }
                  end
                end
                # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
                attr_reader :custom_pricing_unit
                # The monetary amount of the credit grant. Required if `type` is `monetary`.
                attr_reader :monetary
                # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { custom_pricing_unit: CustomPricingUnit }
                end

                def self.field_remappings
                  @field_remappings = {}
                end

                def self.field_encodings
                  @field_encodings = {
                    custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                  }
                end
              end

              class ApplicabilityConfig < ::Stripe::StripeObject
                class Scope < ::Stripe::StripeObject
                  # The billable items to apply the credit grant to.
                  attr_reader :billable_items
                  # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
                  attr_reader :price_type

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The applicability scope of the credit grant.
                attr_reader :scope

                def self.inner_class_types
                  @inner_class_types = { scope: Scope }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ExpiryConfig < ::Stripe::StripeObject
                # The type of the expiry configuration. We currently support `end_of_service_period`.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The amount of the credit grant.
              attr_reader :amount
              # Defines the scope where the credit grant is applicable.
              attr_reader :applicability_config
              # The expiry configuration for the credit grant.
              attr_reader :expiry_config

              def self.inner_class_types
                @inner_class_types = {
                  amount: Amount,
                  applicability_config: ApplicabilityConfig,
                  expiry_config: ExpiryConfig,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = {
                  amount: {
                    kind: :object,
                    fields: {
                      custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                    },
                  },
                }
              end
            end

            class ServiceCycle < ::Stripe::StripeObject
              # The interval for assessing service.
              attr_reader :interval
              # The length of the interval for assessing service. For example, set this to 3 and `interval` to `"month"` in
              # order to specify quarterly service.
              attr_reader :interval_count

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Credit grant details, present when type is CREDIT_GRANT.
            attr_reader :credit_grant_details
            # Credit grant per tenant details, present when type is CREDIT_GRANT_PER_TENANT.
            attr_reader :credit_grant_per_tenant_details
            # The ID of the Recurring Credit Grant.
            attr_reader :recurring_credit_grant
            # The service cycle configuration.
            attr_reader :service_cycle
            # The type of the recurring credit grant.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {
                credit_grant_details: CreditGrantDetails,
                credit_grant_per_tenant_details: CreditGrantPerTenantDetails,
                service_cycle: ServiceCycle,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = {
                credit_grant_details: {
                  kind: :object,
                  fields: {
                    amount: {
                      kind: :object,
                      fields: {
                        custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                      },
                    },
                  },
                },
                credit_grant_per_tenant_details: {
                  kind: :object,
                  fields: {
                    amount: {
                      kind: :object,
                      fields: {
                        custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                      },
                    },
                  },
                },
              }
            end
          end
          # License fee details, present when type is license_fee_details.
          attr_reader :license_fee_details
          # The ID of the Pricing Plan Component.
          attr_reader :pricing_plan_component
          # Rate card details, present when type is rate_card_details.
          attr_reader :rate_card_details
          # Recurring credit grant details, present when type is recurring_credit_grant_details.
          attr_reader :recurring_credit_grant_details
          # The type of component details included.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              license_fee_details: LicenseFeeDetails,
              rate_card_details: RateCardDetails,
              recurring_credit_grant_details: RecurringCreditGrantDetails,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              license_fee_details: {
                kind: :object,
                fields: {
                  tiers: {
                    kind: :array,
                    element: { kind: :object, fields: { up_to_decimal: :decimal_string } },
                  },
                  transform_quantity: { kind: :object, fields: { divide_by: :int64_string } },
                },
              },
              recurring_credit_grant_details: {
                kind: :object,
                fields: {
                  credit_grant_details: {
                    kind: :object,
                    fields: {
                      amount: {
                        kind: :object,
                        fields: {
                          custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                        },
                      },
                    },
                  },
                  credit_grant_per_tenant_details: {
                    kind: :object,
                    fields: {
                      amount: {
                        kind: :object,
                        fields: {
                          custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
                        },
                      },
                    },
                  },
                },
              },
            }
          end
        end

        class ServicingStatusTransitions < ::Stripe::StripeObject
          # When the servicing status transitioned to activated.
          attr_reader :activated_at
          # When the servicing status transitioned to canceled.
          attr_reader :canceled_at
          # When the servicing status transitioned to paused.
          attr_reader :paused_at
          # When the servicing is scheduled to transition to activate.
          attr_reader :will_activate_at
          # When the servicing is scheduled to cancel.
          attr_reader :will_cancel_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the Billing Cadence this subscription is billed on.
        attr_reader :billing_cadence
        # Details about why the subscription was canceled, if applicable. Includes system-generated reason.
        attr_reader :cancellation_details
        # Current collection status of this subscription.
        attr_reader :collection_status
        # Timestamps for collection status transitions.
        attr_reader :collection_status_transitions
        # Time at which the object was created.
        attr_reader :created
        # Details about Discounts applied to this subscription.
        attr_reader :discount_details
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the Pricing Plan for this subscription.
        attr_reader :pricing_plan
        # Pricing plan component details for the subscription, populated when pricing_plan_component_details is included.
        attr_reader :pricing_plan_component_details
        # The ID of the Pricing Plan Version for this subscription.
        attr_reader :pricing_plan_version
        # Current servicing status of this subscription.
        attr_reader :servicing_status
        # Timestamps for servicing status transitions.
        attr_reader :servicing_status_transitions
        # The ID of the Test Clock of the associated Billing Cadence, if any.
        attr_reader :test_clock

        def self.inner_class_types
          @inner_class_types = {
            cancellation_details: CancellationDetails,
            collection_status_transitions: CollectionStatusTransitions,
            discount_details: DiscountDetail,
            pricing_plan_component_details: PricingPlanComponentDetail,
            servicing_status_transitions: ServicingStatusTransitions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            pricing_plan_component_details: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  license_fee_details: {
                    kind: :object,
                    fields: {
                      tiers: {
                        kind: :array,
                        element: { kind: :object, fields: { up_to_decimal: :decimal_string } },
                      },
                      transform_quantity: { kind: :object, fields: { divide_by: :int64_string } },
                    },
                  },
                  recurring_credit_grant_details: {
                    kind: :object,
                    fields: {
                      credit_grant_details: {
                        kind: :object,
                        fields: {
                          amount: {
                            kind: :object,
                            fields: {
                              custom_pricing_unit: {
                                kind: :object,
                                fields: { value: :decimal_string },
                              },
                            },
                          },
                        },
                      },
                      credit_grant_per_tenant_details: {
                        kind: :object,
                        fields: {
                          amount: {
                            kind: :object,
                            fields: {
                              custom_pricing_unit: {
                                kind: :object,
                                fields: { value: :decimal_string },
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
