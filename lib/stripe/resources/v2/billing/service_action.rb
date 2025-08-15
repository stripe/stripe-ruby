# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ServiceAction < APIResource
        OBJECT_NAME = "v2.billing.service_action"
        def self.object_name
          "v2.billing.service_action"
        end

        class CreditGrant < Stripe::StripeObject
          class Amount < Stripe::StripeObject
            class CustomPricingUnit < Stripe::StripeObject
              # The id of the custom pricing unit.
              attr_reader :id
              # The value of the credit grant, decimal value represented as a string.
              attr_reader :value
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            attr_reader :type
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            attr_reader :custom_pricing_unit
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            attr_reader :monetary
          end

          class ApplicabilityConfig < Stripe::StripeObject
            class Scope < Stripe::StripeObject
              # The billable items to apply the credit grant to.
              attr_reader :billable_items
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              attr_reader :price_type
            end
            # The applicability scope of the credit grant.
            attr_reader :scope
          end

          class ExpiryConfig < Stripe::StripeObject
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            attr_reader :type
          end
          # The amount of the credit grant.
          attr_reader :amount
          # Defines the scope where the credit grant is applicable.
          attr_reader :applicability_config
          # The expiry configuration for the credit grant.
          attr_reader :expiry_config
          # A descriptive name shown in dashboard.
          attr_reader :name
        end

        class CreditGrantPerTenant < Stripe::StripeObject
          class Amount < Stripe::StripeObject
            class CustomPricingUnit < Stripe::StripeObject
              # The id of the custom pricing unit.
              attr_reader :id
              # The value of the credit grant, decimal value represented as a string.
              attr_reader :value
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            attr_reader :type
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            attr_reader :custom_pricing_unit
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            attr_reader :monetary
          end

          class ApplicabilityConfig < Stripe::StripeObject
            class Scope < Stripe::StripeObject
              # The billable items to apply the credit grant to.
              attr_reader :billable_items
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              attr_reader :price_type
            end
            # The applicability scope of the credit grant.
            attr_reader :scope
          end

          class ExpiryConfig < Stripe::StripeObject
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            attr_reader :type
          end
          # The amount of the credit grant.
          attr_reader :amount
          # Defines the scope where the credit grant is applicable.
          attr_reader :applicability_config
          # The expiry configuration for the credit grant.
          attr_reader :expiry_config
          # Customer-facing name for the credit grant.
          attr_reader :name
        end
        # Timestamp of when the object was created.
        attr_reader :created
        # Unique identifier for the ServiceAction.
        attr_reader :id
        # An internal key you can use to search for this service action.
        attr_reader :lookup_key
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The interval for assessing service.
        attr_reader :service_interval
        # The length of the interval for assessing service.
        attr_reader :service_interval_count
        # The type of the service action.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Details for the credit grant. Provided only if `type` is "credit_grant".
        attr_reader :credit_grant
        # Details for the credit grant per tenant. Provided only if `type` is "credit_grant_per_tenant".
        attr_reader :credit_grant_per_tenant
      end
    end
  end
end
