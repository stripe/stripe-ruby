# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ServiceActionService < StripeService
        class CreateParams < Stripe::RequestParams
          class CreditGrant < Stripe::RequestParams
            class Amount < Stripe::RequestParams
              class CustomPricingUnit < Stripe::RequestParams
                # The id of the custom pricing unit.
                sig { returns(String) }
                attr_accessor :id
                # The value of the credit grant, decimal value represented as a string.
                sig { returns(String) }
                attr_accessor :value
                sig { params(id: String, value: String).void }
                def initialize(id: nil, value: nil); end
              end
              # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
              sig { returns(String) }
              attr_accessor :type
              # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::Amount::CustomPricingUnit))
               }
              attr_accessor :custom_pricing_unit
              # The monetary amount of the credit grant. Required if `type` is `monetary`.
              sig { returns(T.nilable(Stripe::V2::Amount)) }
              attr_accessor :monetary
              sig {
                params(type: String, custom_pricing_unit: T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::Amount::CustomPricingUnit), monetary: T.nilable(Stripe::V2::Amount)).void
               }
              def initialize(type: nil, custom_pricing_unit: nil, monetary: nil); end
            end
            class ApplicabilityConfig < Stripe::RequestParams
              class Scope < Stripe::RequestParams
                # The billable items to apply the credit grant to.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :billable_items
                # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
                sig { returns(T.nilable(String)) }
                attr_accessor :price_type
                sig {
                  params(billable_items: T.nilable(T::Array[String]), price_type: T.nilable(String)).void
                 }
                def initialize(billable_items: nil, price_type: nil); end
              end
              # The applicability scope of the credit grant.
              sig {
                returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::ApplicabilityConfig::Scope)
               }
              attr_accessor :scope
              sig {
                params(scope: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::ApplicabilityConfig::Scope).void
               }
              def initialize(scope: nil); end
            end
            class ExpiryConfig < Stripe::RequestParams
              # The type of the expiry configuration. We currently support `end_of_service_period`.
              sig { returns(String) }
              attr_accessor :type
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            # The amount of the credit grant.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::Amount)
             }
            attr_accessor :amount
            # Defines the scope where the credit grant is applicable.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::ApplicabilityConfig)
             }
            attr_accessor :applicability_config
            # The expiry configuration for the credit grant.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::ExpiryConfig)
             }
            attr_accessor :expiry_config
            # A descriptive name shown in dashboard.
            sig { returns(String) }
            attr_accessor :name
            sig {
              params(amount: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::Amount, applicability_config: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::ApplicabilityConfig, expiry_config: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant::ExpiryConfig, name: String).void
             }
            def initialize(
              amount: nil,
              applicability_config: nil,
              expiry_config: nil,
              name: nil
            ); end
          end
          class CreditGrantPerTenant < Stripe::RequestParams
            class Amount < Stripe::RequestParams
              class CustomPricingUnit < Stripe::RequestParams
                # The id of the custom pricing unit.
                sig { returns(String) }
                attr_accessor :id
                # The value of the credit grant, decimal value represented as a string.
                sig { returns(String) }
                attr_accessor :value
                sig { params(id: String, value: String).void }
                def initialize(id: nil, value: nil); end
              end
              # The type of the credit grant amount. We currently support `monetary` and `custom_pricing_unit` billing credits.
              sig { returns(String) }
              attr_accessor :type
              # The custom pricing unit amount of the credit grant. Required if `type` is `custom_pricing_unit`.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::Amount::CustomPricingUnit))
               }
              attr_accessor :custom_pricing_unit
              # The monetary amount of the credit grant. Required if `type` is `monetary`.
              sig { returns(T.nilable(Stripe::V2::Amount)) }
              attr_accessor :monetary
              sig {
                params(type: String, custom_pricing_unit: T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::Amount::CustomPricingUnit), monetary: T.nilable(Stripe::V2::Amount)).void
               }
              def initialize(type: nil, custom_pricing_unit: nil, monetary: nil); end
            end
            class ApplicabilityConfig < Stripe::RequestParams
              class Scope < Stripe::RequestParams
                # The billable items to apply the credit grant to.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :billable_items
                # The price type that credit grants can apply to. We currently only support the `metered` price type. This will apply to metered prices and rate cards. Cannot be used in combination with `billable_items`.
                sig { returns(T.nilable(String)) }
                attr_accessor :price_type
                sig {
                  params(billable_items: T.nilable(T::Array[String]), price_type: T.nilable(String)).void
                 }
                def initialize(billable_items: nil, price_type: nil); end
              end
              # The applicability scope of the credit grant.
              sig {
                returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::ApplicabilityConfig::Scope)
               }
              attr_accessor :scope
              sig {
                params(scope: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::ApplicabilityConfig::Scope).void
               }
              def initialize(scope: nil); end
            end
            class ExpiryConfig < Stripe::RequestParams
              # The type of the expiry configuration. We currently support `end_of_service_period`.
              sig { returns(String) }
              attr_accessor :type
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            class GrantCondition < Stripe::RequestParams
              class MeterEventFirstPerPeriod < Stripe::RequestParams
                class MeterSegmentCondition < Stripe::RequestParams
                  class Dimension < Stripe::RequestParams
                    # The payload key for the dimension.
                    sig { returns(String) }
                    attr_accessor :payload_key
                    # The value for the dimension.
                    sig { returns(String) }
                    attr_accessor :value
                    sig { params(payload_key: String, value: String).void }
                    def initialize(payload_key: nil, value: nil); end
                  end
                  # The type of the meter segment condition. We currently support `dimension`.
                  sig { returns(String) }
                  attr_accessor :type
                  # Dimension-based meter segment condition.
                  sig {
                    returns(T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition::Dimension))
                   }
                  attr_accessor :dimension
                  sig {
                    params(type: String, dimension: T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition::Dimension)).void
                   }
                  def initialize(type: nil, dimension: nil); end
                end
                # The meter segment conditions for the grant condition.
                sig {
                  returns(T::Array[::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition])
                 }
                attr_accessor :meter_segment_conditions
                sig {
                  params(meter_segment_conditions: T::Array[::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod::MeterSegmentCondition]).void
                 }
                def initialize(meter_segment_conditions: nil); end
              end
              # The type of the grant condition. We currently support `meter_event_first_per_period`.
              sig { returns(String) }
              attr_accessor :type
              # The grant condition for the meter event first per period.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod))
               }
              attr_accessor :meter_event_first_per_period
              sig {
                params(type: String, meter_event_first_per_period: T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition::MeterEventFirstPerPeriod)).void
               }
              def initialize(type: nil, meter_event_first_per_period: nil); end
            end
            # The amount of the credit grant.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::Amount)
             }
            attr_accessor :amount
            # Defines the scope where the credit grant is applicable.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::ApplicabilityConfig)
             }
            attr_accessor :applicability_config
            # The expiry configuration for the credit grant.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::ExpiryConfig)
             }
            attr_accessor :expiry_config
            # The grant condition for the credit grant.
            sig {
              returns(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition)
             }
            attr_accessor :grant_condition
            # Customer-facing name for the credit grant.
            sig { returns(String) }
            attr_accessor :name
            sig {
              params(amount: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::Amount, applicability_config: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::ApplicabilityConfig, expiry_config: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::ExpiryConfig, grant_condition: ::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant::GrantCondition, name: String).void
             }
            def initialize(
              amount: nil,
              applicability_config: nil,
              expiry_config: nil,
              grant_condition: nil,
              name: nil
            ); end
          end
          # An internal key you can use to search for this service action. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # The interval for assessing service.
          sig { returns(String) }
          attr_accessor :service_interval
          # The length of the interval for assessing service.
          sig { returns(Integer) }
          attr_accessor :service_interval_count
          # The type of the service action.
          sig { returns(String) }
          attr_accessor :type
          # Details for the credit grant. Required if `type` is `credit_grant`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant))
           }
          attr_accessor :credit_grant
          # Details for the credit grant per tenant. Required if `type` is `credit_grant_per_tenant`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant))
           }
          attr_accessor :credit_grant_per_tenant
          sig {
            params(lookup_key: T.nilable(String), service_interval: String, service_interval_count: Integer, type: String, credit_grant: T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrant), credit_grant_per_tenant: T.nilable(::Stripe::V2::Billing::ServiceActionService::CreateParams::CreditGrantPerTenant)).void
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
        class RetrieveParams < Stripe::RequestParams; end
        # Create a Service Action object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ServiceActionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::ServiceAction)
         }
        def create(params = {}, opts = {}); end

        # Retrieve a Service Action object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ServiceActionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::ServiceAction)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end