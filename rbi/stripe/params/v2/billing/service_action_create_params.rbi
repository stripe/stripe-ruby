# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ServiceActionCreateParams < ::Stripe::RequestParams
        class CreditGrant < ::Stripe::RequestParams
          class Amount < ::Stripe::RequestParams
            class CustomPricingUnit < ::Stripe::RequestParams
              # The id of the custom pricing unit.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # The value of the credit grant, decimal value represented as a string.
              sig { returns(String) }
              def value; end
              sig { params(_value: String).returns(String) }
              def value=(_value); end
              sig { params(id: String, value: String).void }
              def initialize(id: nil, value: nil); end
            end
            class Monetary < ::Stripe::RequestParams
              # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              def currency; end
              sig { params(_currency: String).returns(String) }
              def currency=(_currency); end
              sig { params(value: Integer, currency: String).void }
              def initialize(value: nil, currency: nil); end
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::CustomPricingUnit))
             }
            def custom_pricing_unit; end
            sig {
              params(_custom_pricing_unit: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::CustomPricingUnit)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::CustomPricingUnit))
             }
            def custom_pricing_unit=(_custom_pricing_unit); end
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::Monetary))
             }
            def monetary; end
            sig {
              params(_monetary: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::Monetary)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::Monetary))
             }
            def monetary=(_monetary); end
            sig {
              params(type: String, custom_pricing_unit: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::CustomPricingUnit), monetary: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::Monetary)).void
             }
            def initialize(type: nil, custom_pricing_unit: nil, monetary: nil); end
          end
          class ApplicabilityConfig < ::Stripe::RequestParams
            class Scope < ::Stripe::RequestParams
              # The billable items to apply the credit grant to.
              sig { returns(T.nilable(T::Array[String])) }
              def billable_items; end
              sig {
                params(_billable_items: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def billable_items=(_billable_items); end
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              sig { returns(T.nilable(String)) }
              def price_type; end
              sig { params(_price_type: T.nilable(String)).returns(T.nilable(String)) }
              def price_type=(_price_type); end
              sig {
                params(billable_items: T.nilable(T::Array[String]), price_type: T.nilable(String)).void
               }
              def initialize(billable_items: nil, price_type: nil); end
            end
            # The applicability scope of the credit grant.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig::Scope)
             }
            def scope; end
            sig {
              params(_scope: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig::Scope).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig::Scope)
             }
            def scope=(_scope); end
            sig {
              params(scope: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig::Scope).void
             }
            def initialize(scope: nil); end
          end
          class ExpiryConfig < ::Stripe::RequestParams
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          # The amount of the credit grant.
          sig { returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount) }
          def amount; end
          sig {
            params(_amount: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount)
           }
          def amount=(_amount); end
          # Defines the scope where the credit grant is applicable.
          sig {
            returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig)
           }
          def applicability_config; end
          sig {
            params(_applicability_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig)
           }
          def applicability_config=(_applicability_config); end
          # The category of the credit grant.
          sig { returns(T.nilable(String)) }
          def category; end
          sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
          def category=(_category); end
          # The expiry configuration for the credit grant.
          sig {
            returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ExpiryConfig)
           }
          def expiry_config; end
          sig {
            params(_expiry_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ExpiryConfig).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ExpiryConfig)
           }
          def expiry_config=(_expiry_config); end
          # A descriptive name shown in dashboard.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
          sig { returns(T.nilable(Integer)) }
          def priority; end
          sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def priority=(_priority); end
          sig {
            params(amount: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::Amount, applicability_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ApplicabilityConfig, category: T.nilable(String), expiry_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant::ExpiryConfig, name: String, priority: T.nilable(Integer)).void
           }
          def initialize(
            amount: nil,
            applicability_config: nil,
            category: nil,
            expiry_config: nil,
            name: nil,
            priority: nil
          ); end
        end
        class CreditGrantPerTenant < ::Stripe::RequestParams
          class Amount < ::Stripe::RequestParams
            class CustomPricingUnit < ::Stripe::RequestParams
              # The id of the custom pricing unit.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # The value of the credit grant, decimal value represented as a string.
              sig { returns(String) }
              def value; end
              sig { params(_value: String).returns(String) }
              def value=(_value); end
              sig { params(id: String, value: String).void }
              def initialize(id: nil, value: nil); end
            end
            class Monetary < ::Stripe::RequestParams
              # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              def currency; end
              sig { params(_currency: String).returns(String) }
              def currency=(_currency); end
              sig { params(value: Integer, currency: String).void }
              def initialize(value: nil, currency: nil); end
            end
            # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::CustomPricingUnit))
             }
            def custom_pricing_unit; end
            sig {
              params(_custom_pricing_unit: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::CustomPricingUnit)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::CustomPricingUnit))
             }
            def custom_pricing_unit=(_custom_pricing_unit); end
            # The monetary amount of the credit grant. Required if `type` is `monetary`.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::Monetary))
             }
            def monetary; end
            sig {
              params(_monetary: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::Monetary)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::Monetary))
             }
            def monetary=(_monetary); end
            sig {
              params(type: String, custom_pricing_unit: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::CustomPricingUnit), monetary: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::Monetary)).void
             }
            def initialize(type: nil, custom_pricing_unit: nil, monetary: nil); end
          end
          class ApplicabilityConfig < ::Stripe::RequestParams
            class Scope < ::Stripe::RequestParams
              # The billable items to apply the credit grant to.
              sig { returns(T.nilable(T::Array[String])) }
              def billable_items; end
              sig {
                params(_billable_items: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def billable_items=(_billable_items); end
              # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
              sig { returns(T.nilable(String)) }
              def price_type; end
              sig { params(_price_type: T.nilable(String)).returns(T.nilable(String)) }
              def price_type=(_price_type); end
              sig {
                params(billable_items: T.nilable(T::Array[String]), price_type: T.nilable(String)).void
               }
              def initialize(billable_items: nil, price_type: nil); end
            end
            # The applicability scope of the credit grant.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig::Scope)
             }
            def scope; end
            sig {
              params(_scope: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig::Scope).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig::Scope)
             }
            def scope=(_scope); end
            sig {
              params(scope: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig::Scope).void
             }
            def initialize(scope: nil); end
          end
          class ExpiryConfig < ::Stripe::RequestParams
            # The type of the expiry configuration. We currently support `end_of_service_period`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class GrantCondition < ::Stripe::RequestParams
            class MeterEventFirstPerPeriod < ::Stripe::RequestParams
              class MeterSegmentCondition < ::Stripe::RequestParams
                class Dimension < ::Stripe::RequestParams
                  # The payload key for the dimension.
                  sig { returns(String) }
                  def payload_key; end
                  sig { params(_payload_key: String).returns(String) }
                  def payload_key=(_payload_key); end
                  # The value for the dimension.
                  sig { returns(String) }
                  def value; end
                  sig { params(_value: String).returns(String) }
                  def value=(_value); end
                  sig { params(payload_key: String, value: String).void }
                  def initialize(payload_key: nil, value: nil); end
                end
                # The type of the meter segment condition. We currently support `dimension`.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                # Dimension-based meter segment condition.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition::Dimension))
                 }
                def dimension; end
                sig {
                  params(_dimension: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition::Dimension)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition::Dimension))
                 }
                def dimension=(_dimension); end
                sig {
                  params(type: String, dimension: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition::Dimension)).void
                 }
                def initialize(type: nil, dimension: nil); end
              end
              # The meter segment conditions for the grant condition.
              sig {
                returns(T::Array[::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition])
               }
              def meter_segment_conditions; end
              sig {
                params(_meter_segment_conditions: T::Array[::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition]).returns(T::Array[::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition])
               }
              def meter_segment_conditions=(_meter_segment_conditions); end
              sig {
                params(meter_segment_conditions: T::Array[::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition]).void
               }
              def initialize(meter_segment_conditions: nil); end
            end
            # The type of the grant condition. We currently support `meter_event_first_per_period`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # The grant condition for the meter event first per period.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod))
             }
            def meter_event_first_per_period; end
            sig {
              params(_meter_event_first_per_period: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod))
             }
            def meter_event_first_per_period=(_meter_event_first_per_period); end
            sig {
              params(type: String, meter_event_first_per_period: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod)).void
             }
            def initialize(type: nil, meter_event_first_per_period: nil); end
          end
          # The amount of the credit grant.
          sig {
            returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount)
           }
          def amount; end
          sig {
            params(_amount: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount)
           }
          def amount=(_amount); end
          # Defines the scope where the credit grant is applicable.
          sig {
            returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig)
           }
          def applicability_config; end
          sig {
            params(_applicability_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig)
           }
          def applicability_config=(_applicability_config); end
          # The category of the credit grant.
          sig { returns(T.nilable(String)) }
          def category; end
          sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
          def category=(_category); end
          # The expiry configuration for the credit grant.
          sig {
            returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ExpiryConfig)
           }
          def expiry_config; end
          sig {
            params(_expiry_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ExpiryConfig).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ExpiryConfig)
           }
          def expiry_config=(_expiry_config); end
          # The grant condition for the credit grant.
          sig {
            returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition)
           }
          def grant_condition; end
          sig {
            params(_grant_condition: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition).returns(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition)
           }
          def grant_condition=(_grant_condition); end
          # Customer-facing name for the credit grant.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
          sig { returns(T.nilable(Integer)) }
          def priority; end
          sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def priority=(_priority); end
          sig {
            params(amount: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount, applicability_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ApplicabilityConfig, category: T.nilable(String), expiry_config: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::ExpiryConfig, grant_condition: ::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::GrantCondition, name: String, priority: T.nilable(Integer)).void
           }
          def initialize(
            amount: nil,
            applicability_config: nil,
            category: nil,
            expiry_config: nil,
            grant_condition: nil,
            name: nil,
            priority: nil
          ); end
        end
        # An internal key you can use to search for this service action. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # The interval for assessing service.
        sig { returns(String) }
        def service_interval; end
        sig { params(_service_interval: String).returns(String) }
        def service_interval=(_service_interval); end
        # The length of the interval for assessing service.
        sig { returns(Integer) }
        def service_interval_count; end
        sig { params(_service_interval_count: Integer).returns(Integer) }
        def service_interval_count=(_service_interval_count); end
        # The type of the service action.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # Details for the credit grant. Required if `type` is `credit_grant`.
        sig { returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant)) }
        def credit_grant; end
        sig {
          params(_credit_grant: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant))
         }
        def credit_grant=(_credit_grant); end
        # Details for the credit grant per tenant. Required if `type` is `credit_grant_per_tenant`.
        sig {
          returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant))
         }
        def credit_grant_per_tenant; end
        sig {
          params(_credit_grant_per_tenant: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant)).returns(T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant))
         }
        def credit_grant_per_tenant=(_credit_grant_per_tenant); end
        sig {
          params(lookup_key: T.nilable(String), service_interval: String, service_interval_count: Integer, type: String, credit_grant: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrant), credit_grant_per_tenant: T.nilable(::Stripe::V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant)).void
         }
        def initialize(
          lookup_key: nil,
          service_interval: nil,
          service_interval_count: nil,
          type: nil,
          credit_grant: nil,
          credit_grant_per_tenant: nil
        ); end
      end
    end
  end
end