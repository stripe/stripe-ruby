# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ServiceActionCreateParams < Stripe::RequestParams
        class CreditGrant < Stripe::RequestParams
          class Amount < Stripe::RequestParams
            class CustomPricingUnit < Stripe::RequestParams
              # The id of the custom pricing unit.
              attr_accessor :id
              # The value of the credit grant, decimal value represented as a string.
              attr_accessor :value

              def initialize(id: nil, value: nil)
                @id = id
                @value = value
              end
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            attr_accessor :type
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            attr_accessor :custom_pricing_unit
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            attr_accessor :monetary

            def initialize(type: nil, custom_pricing_unit: nil, monetary: nil)
              @type = type
              @custom_pricing_unit = custom_pricing_unit
              @monetary = monetary
            end
          end

          class ApplicabilityConfig < Stripe::RequestParams
            class Scope < Stripe::RequestParams
              # The billable items to apply the credit grant to.
              attr_accessor :billable_items
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              attr_accessor :price_type

              def initialize(billable_items: nil, price_type: nil)
                @billable_items = billable_items
                @price_type = price_type
              end
            end
            # The applicability scope of the credit grant.
            attr_accessor :scope

            def initialize(scope: nil)
              @scope = scope
            end
          end

          class ExpiryConfig < Stripe::RequestParams
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end
          # The amount of the credit grant.
          attr_accessor :amount
          # Defines the scope where the credit grant is applicable.
          attr_accessor :applicability_config
          # The category of the credit grant.
          attr_accessor :category
          # The expiry configuration for the credit grant.
          attr_accessor :expiry_config
          # A descriptive name shown in dashboard.
          attr_accessor :name
          # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
          attr_accessor :priority

          def initialize(
            amount: nil,
            applicability_config: nil,
            category: nil,
            expiry_config: nil,
            name: nil,
            priority: nil
          )
            @amount = amount
            @applicability_config = applicability_config
            @category = category
            @expiry_config = expiry_config
            @name = name
            @priority = priority
          end
        end

        class CreditGrantPerTenant < Stripe::RequestParams
          class Amount < Stripe::RequestParams
            class CustomPricingUnit < Stripe::RequestParams
              # The id of the custom pricing unit.
              attr_accessor :id
              # The value of the credit grant, decimal value represented as a string.
              attr_accessor :value

              def initialize(id: nil, value: nil)
                @id = id
                @value = value
              end
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            attr_accessor :type
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            attr_accessor :custom_pricing_unit
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            attr_accessor :monetary

            def initialize(type: nil, custom_pricing_unit: nil, monetary: nil)
              @type = type
              @custom_pricing_unit = custom_pricing_unit
              @monetary = monetary
            end
          end

          class ApplicabilityConfig < Stripe::RequestParams
            class Scope < Stripe::RequestParams
              # The billable items to apply the credit grant to.
              attr_accessor :billable_items
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              attr_accessor :price_type

              def initialize(billable_items: nil, price_type: nil)
                @billable_items = billable_items
                @price_type = price_type
              end
            end
            # The applicability scope of the credit grant.
            attr_accessor :scope

            def initialize(scope: nil)
              @scope = scope
            end
          end

          class ExpiryConfig < Stripe::RequestParams
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class GrantCondition < Stripe::RequestParams
            class MeterEventFirstPerPeriod < Stripe::RequestParams
              class MeterSegmentCondition < Stripe::RequestParams
                class Dimension < Stripe::RequestParams
                  # The payload key for the dimension.
                  attr_accessor :payload_key
                  # The value for the dimension.
                  attr_accessor :value

                  def initialize(payload_key: nil, value: nil)
                    @payload_key = payload_key
                    @value = value
                  end
                end
                # The type of the meter segment condition. We currently support `dimension`.
                attr_accessor :type
                # Dimension-based meter segment condition.
                attr_accessor :dimension

                def initialize(type: nil, dimension: nil)
                  @type = type
                  @dimension = dimension
                end
              end
              # The meter segment conditions for the grant condition.
              attr_accessor :meter_segment_conditions

              def initialize(meter_segment_conditions: nil)
                @meter_segment_conditions = meter_segment_conditions
              end
            end
            # The type of the grant condition. We currently support `meter_event_first_per_period`.
            attr_accessor :type
            # The grant condition for the meter event first per period.
            attr_accessor :meter_event_first_per_period

            def initialize(type: nil, meter_event_first_per_period: nil)
              @type = type
              @meter_event_first_per_period = meter_event_first_per_period
            end
          end
          # The amount of the credit grant.
          attr_accessor :amount
          # Defines the scope where the credit grant is applicable.
          attr_accessor :applicability_config
          # The category of the credit grant.
          attr_accessor :category
          # The expiry configuration for the credit grant.
          attr_accessor :expiry_config
          # The grant condition for the credit grant.
          attr_accessor :grant_condition
          # Customer-facing name for the credit grant.
          attr_accessor :name
          # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
          attr_accessor :priority

          def initialize(
            amount: nil,
            applicability_config: nil,
            category: nil,
            expiry_config: nil,
            grant_condition: nil,
            name: nil,
            priority: nil
          )
            @amount = amount
            @applicability_config = applicability_config
            @category = category
            @expiry_config = expiry_config
            @grant_condition = grant_condition
            @name = name
            @priority = priority
          end
        end
        # An internal key you can use to search for this service action. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # The interval for assessing service.
        attr_accessor :service_interval
        # The length of the interval for assessing service.
        attr_accessor :service_interval_count
        # The type of the service action.
        attr_accessor :type
        # Details for the credit grant. Required if `type` is `credit_grant`.
        attr_accessor :credit_grant
        # Details for the credit grant per tenant. Required if `type` is `credit_grant_per_tenant`.
        attr_accessor :credit_grant_per_tenant

        def initialize(
          lookup_key: nil,
          service_interval: nil,
          service_interval_count: nil,
          type: nil,
          credit_grant: nil,
          credit_grant_per_tenant: nil
        )
          @lookup_key = lookup_key
          @service_interval = service_interval
          @service_interval_count = service_interval_count
          @type = type
          @credit_grant = credit_grant
          @credit_grant_per_tenant = credit_grant_per_tenant
        end
      end
    end
  end
end
