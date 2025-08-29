# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ServiceAction < APIResource
        class CreditGrant < Stripe::StripeObject
          class Amount < Stripe::StripeObject
            class CustomPricingUnit < Stripe::StripeObject
              # The id of the custom pricing unit.
              sig { returns(String) }
              attr_reader :id
              # The value of the credit grant, decimal value represented as a string.
              sig { returns(String) }
              attr_reader :value
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            sig { returns(String) }
            attr_reader :type
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            sig { returns(T.nilable(CustomPricingUnit)) }
            attr_reader :custom_pricing_unit
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            sig { returns(T.nilable(Stripe::V2::Amount)) }
            attr_reader :monetary
          end
          class ApplicabilityConfig < Stripe::StripeObject
            class Scope < Stripe::StripeObject
              # The billable items to apply the credit grant to.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :billable_items
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              sig { returns(T.nilable(String)) }
              attr_reader :price_type
            end
            # The applicability scope of the credit grant.
            sig { returns(Scope) }
            attr_reader :scope
          end
          class ExpiryConfig < Stripe::StripeObject
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            sig { returns(String) }
            attr_reader :type
          end
          # The amount of the credit grant.
          sig { returns(Amount) }
          attr_reader :amount
          # Defines the scope where the credit grant is applicable.
          sig { returns(ApplicabilityConfig) }
          attr_reader :applicability_config
          # The expiry configuration for the credit grant.
          sig { returns(ExpiryConfig) }
          attr_reader :expiry_config
          # A descriptive name shown in dashboard.
          sig { returns(String) }
          attr_reader :name
        end
        class CreditGrantPerTenant < Stripe::StripeObject
          class Amount < Stripe::StripeObject
            class CustomPricingUnit < Stripe::StripeObject
              # The id of the custom pricing unit.
              sig { returns(String) }
              attr_reader :id
              # The value of the credit grant, decimal value represented as a string.
              sig { returns(String) }
              attr_reader :value
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            sig { returns(String) }
            attr_reader :type
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            sig { returns(T.nilable(CustomPricingUnit)) }
            attr_reader :custom_pricing_unit
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            sig { returns(T.nilable(Stripe::V2::Amount)) }
            attr_reader :monetary
          end
          class ApplicabilityConfig < Stripe::StripeObject
            class Scope < Stripe::StripeObject
              # The billable items to apply the credit grant to.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :billable_items
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              sig { returns(T.nilable(String)) }
              attr_reader :price_type
            end
            # The applicability scope of the credit grant.
            sig { returns(Scope) }
            attr_reader :scope
          end
          class ExpiryConfig < Stripe::StripeObject
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            sig { returns(String) }
            attr_reader :type
          end
          # The amount of the credit grant.
          sig { returns(Amount) }
          attr_reader :amount
          # Defines the scope where the credit grant is applicable.
          sig { returns(ApplicabilityConfig) }
          attr_reader :applicability_config
          # The expiry configuration for the credit grant.
          sig { returns(ExpiryConfig) }
          attr_reader :expiry_config
          # Customer-facing name for the credit grant.
          sig { returns(String) }
          attr_reader :name
        end
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # An internal key you can use to search for this service action.
        sig { returns(T.nilable(String)) }
        attr_reader :lookup_key
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The interval for assessing service.
        sig { returns(String) }
        attr_reader :service_interval
        # The length of the interval for assessing service.
        sig { returns(Integer) }
        attr_reader :service_interval_count
        # The type of the service action.
        sig { returns(String) }
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
        # Details for the credit grant. Provided only if `type` is "credit_grant".
        sig { returns(T.nilable(CreditGrant)) }
        attr_reader :credit_grant
        # Details for the credit grant per tenant. Provided only if `type` is "credit_grant_per_tenant".
        sig { returns(T.nilable(CreditGrantPerTenant)) }
        attr_reader :credit_grant_per_tenant
      end
    end
  end
end