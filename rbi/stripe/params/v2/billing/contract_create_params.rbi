# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractCreateParams < ::Stripe::RequestParams
        class BillingSettings < ::Stripe::RequestParams
          class ContractBillingDetails < ::Stripe::RequestParams
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
                  returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation::Tax))
                 }
                def tax; end
                sig {
                  params(_tax: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation::Tax)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation::Tax))
                 }
                def tax=(_tax); end
                sig {
                  params(tax: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation::Tax)).void
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
                  returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice::TimeUntilDue))
                 }
                def time_until_due; end
                sig {
                  params(_time_until_due: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice::TimeUntilDue)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice::TimeUntilDue))
                 }
                def time_until_due=(_time_until_due); end
                sig {
                  params(time_until_due: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice::TimeUntilDue)).void
                 }
                def initialize(time_until_due: nil); end
              end
              # Calculation settings.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation))
               }
              def calculation; end
              sig {
                params(_calculation: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation))
               }
              def calculation=(_calculation); end
              # Invoice settings.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice))
               }
              def invoice; end
              sig {
                params(_invoice: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice))
               }
              def invoice=(_invoice); end
              sig {
                params(calculation: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Calculation), invoice: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails::Invoice)).void
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
            # The bill settings details.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails))
             }
            def bill_settings_details; end
            sig {
              params(_bill_settings_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails))
             }
            def bill_settings_details=(_bill_settings_details); end
            # The billing profile details.
            sig {
              returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillingProfileDetails)
             }
            def billing_profile_details; end
            sig {
              params(_billing_profile_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillingProfileDetails).returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillingProfileDetails)
             }
            def billing_profile_details=(_billing_profile_details); end
            # The collection settings details.
            sig {
              returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::CollectionSettingsDetails)
             }
            def collection_settings_details; end
            sig {
              params(_collection_settings_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::CollectionSettingsDetails).returns(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::CollectionSettingsDetails)
             }
            def collection_settings_details=(_collection_settings_details); end
            sig {
              params(bill_settings_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillSettingsDetails), billing_profile_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::BillingProfileDetails, collection_settings_details: ::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails::CollectionSettingsDetails).void
             }
            def initialize(
              bill_settings_details: nil,
              billing_profile_details: nil,
              collection_settings_details: nil
            ); end
          end
          # Billing settings details for the contract.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails))
           }
          def contract_billing_details; end
          sig {
            params(_contract_billing_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails))
           }
          def contract_billing_details=(_contract_billing_details); end
          sig {
            params(contract_billing_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings::ContractBillingDetails)).void
           }
          def initialize(contract_billing_details: nil); end
        end
        class ContractLine < ::Stripe::RequestParams
          class EndsAt < ::Stripe::RequestParams
            # The timestamp when the item ends.
            sig { returns(String) }
            def timestamp; end
            sig { params(_timestamp: String).returns(String) }
            def timestamp=(_timestamp); end
            sig { params(timestamp: String).void }
            def initialize(timestamp: nil); end
          end
          class Override < ::Stripe::RequestParams
            class EndsAt < ::Stripe::RequestParams
              # The timestamp when the item ends.
              sig { returns(String) }
              def timestamp; end
              sig { params(_timestamp: String).returns(String) }
              def timestamp=(_timestamp); end
              sig { params(timestamp: String).void }
              def initialize(timestamp: nil); end
            end
            class ServiceAction < ::Stripe::RequestParams
              class Add < ::Stripe::RequestParams
                class CreditGrant < ::Stripe::RequestParams
                  class Amount < ::Stripe::RequestParams
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    sig { returns(T.nilable(::Stripe::V2::Amount)) }
                    def monetary; end
                    sig {
                      params(_monetary: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
                     }
                    def monetary=(_monetary); end
                    # The type of the credit grant amount.
                    sig { returns(String) }
                    def type; end
                    sig { params(_type: String).returns(String) }
                    def type=(_type); end
                    sig { params(monetary: T.nilable(::Stripe::V2::Amount), type: String).void }
                    def initialize(monetary: nil, type: nil); end
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
                      # The price type that credit grants can apply to.
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
                      returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig::Scope)
                     }
                    def scope; end
                    sig {
                      params(_scope: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig::Scope).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig::Scope)
                     }
                    def scope=(_scope); end
                    sig {
                      params(scope: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig::Scope).void
                     }
                    def initialize(scope: nil); end
                  end
                  class ExpiryConfig < ::Stripe::RequestParams
                    # The type of the expiry configuration.
                    sig { returns(String) }
                    def type; end
                    sig { params(_type: String).returns(String) }
                    def type=(_type); end
                    sig { params(type: String).void }
                    def initialize(type: nil); end
                  end
                  # The amount of the credit grant.
                  sig {
                    returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::Amount)
                   }
                  def amount; end
                  sig {
                    params(_amount: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::Amount).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::Amount)
                   }
                  def amount=(_amount); end
                  # Defines the scope where the credit grant is applicable.
                  sig {
                    returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig)
                   }
                  def applicability_config; end
                  sig {
                    params(_applicability_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig)
                   }
                  def applicability_config=(_applicability_config); end
                  # The category of the credit grant.
                  sig { returns(T.nilable(String)) }
                  def category; end
                  sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
                  def category=(_category); end
                  # The expiry configuration for the credit grant.
                  sig {
                    returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ExpiryConfig)
                   }
                  def expiry_config; end
                  sig {
                    params(_expiry_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ExpiryConfig).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ExpiryConfig)
                   }
                  def expiry_config=(_expiry_config); end
                  # A descriptive name.
                  sig { returns(String) }
                  def name; end
                  sig { params(_name: String).returns(String) }
                  def name=(_name); end
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  sig { returns(T.nilable(Integer)) }
                  def priority; end
                  sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def priority=(_priority); end
                  sig {
                    params(amount: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::Amount, applicability_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ApplicabilityConfig, category: T.nilable(String), expiry_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant::ExpiryConfig, name: String, priority: T.nilable(Integer)).void
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
                # Details for the credit grant. Required if `type` is `credit_grant`.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant))
                 }
                def credit_grant; end
                sig {
                  params(_credit_grant: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant))
                 }
                def credit_grant=(_credit_grant); end
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
                sig {
                  params(credit_grant: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add::CreditGrant), service_interval: String, service_interval_count: Integer, type: String).void
                 }
                def initialize(
                  credit_grant: nil,
                  service_interval: nil,
                  service_interval_count: nil,
                  type: nil
                ); end
              end
              class Replace < ::Stripe::RequestParams
                class CreditGrant < ::Stripe::RequestParams
                  class Amount < ::Stripe::RequestParams
                    # The monetary amount of the credit grant. Required if `type` is `monetary`.
                    sig { returns(T.nilable(::Stripe::V2::Amount)) }
                    def monetary; end
                    sig {
                      params(_monetary: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
                     }
                    def monetary=(_monetary); end
                    # The type of the credit grant amount.
                    sig { returns(String) }
                    def type; end
                    sig { params(_type: String).returns(String) }
                    def type=(_type); end
                    sig { params(monetary: T.nilable(::Stripe::V2::Amount), type: String).void }
                    def initialize(monetary: nil, type: nil); end
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
                      # The price type that credit grants can apply to.
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
                      returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig::Scope)
                     }
                    def scope; end
                    sig {
                      params(_scope: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig::Scope).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig::Scope)
                     }
                    def scope=(_scope); end
                    sig {
                      params(scope: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig::Scope).void
                     }
                    def initialize(scope: nil); end
                  end
                  class ExpiryConfig < ::Stripe::RequestParams
                    # The type of the expiry configuration.
                    sig { returns(String) }
                    def type; end
                    sig { params(_type: String).returns(String) }
                    def type=(_type); end
                    sig { params(type: String).void }
                    def initialize(type: nil); end
                  end
                  # The amount of the credit grant.
                  sig {
                    returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::Amount)
                   }
                  def amount; end
                  sig {
                    params(_amount: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::Amount).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::Amount)
                   }
                  def amount=(_amount); end
                  # Defines the scope where the credit grant is applicable.
                  sig {
                    returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig)
                   }
                  def applicability_config; end
                  sig {
                    params(_applicability_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig)
                   }
                  def applicability_config=(_applicability_config); end
                  # The category of the credit grant.
                  sig { returns(T.nilable(String)) }
                  def category; end
                  sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
                  def category=(_category); end
                  # The expiry configuration for the credit grant.
                  sig {
                    returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ExpiryConfig)
                   }
                  def expiry_config; end
                  sig {
                    params(_expiry_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ExpiryConfig).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ExpiryConfig)
                   }
                  def expiry_config=(_expiry_config); end
                  # A descriptive name.
                  sig { returns(String) }
                  def name; end
                  sig { params(_name: String).returns(String) }
                  def name=(_name); end
                  # The desired priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
                  sig { returns(T.nilable(Integer)) }
                  def priority; end
                  sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def priority=(_priority); end
                  sig {
                    params(amount: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::Amount, applicability_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ApplicabilityConfig, category: T.nilable(String), expiry_config: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant::ExpiryConfig, name: String, priority: T.nilable(Integer)).void
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
                # Details for the credit grant. Required if `type` is `credit_grant`.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant))
                 }
                def credit_grant; end
                sig {
                  params(_credit_grant: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant))
                 }
                def credit_grant=(_credit_grant); end
                # The ID of the service action to replace.
                sig { returns(T.nilable(String)) }
                def id; end
                sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
                def id=(_id); end
                # The lookup key for the service action to replace.
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
                sig {
                  params(credit_grant: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace::CreditGrant), id: T.nilable(String), lookup_key: T.nilable(String), service_interval: String, service_interval_count: Integer, type: String).void
                 }
                def initialize(
                  credit_grant: nil,
                  id: nil,
                  lookup_key: nil,
                  service_interval: nil,
                  service_interval_count: nil,
                  type: nil
                ); end
              end
              # Parameters for adding a new service action.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add))
               }
              def add; end
              sig {
                params(_add: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add))
               }
              def add=(_add); end
              # Parameters for replacing an existing service action.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace))
               }
              def replace; end
              sig {
                params(_replace: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace))
               }
              def replace=(_replace); end
              # The type of service action override.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(add: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Add), replace: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction::Replace), type: String).void
               }
              def initialize(add: nil, replace: nil, type: nil); end
            end
            class StartsAt < ::Stripe::RequestParams
              # The timestamp when the item starts.
              sig { returns(String) }
              def timestamp; end
              sig { params(_timestamp: String).returns(String) }
              def timestamp=(_timestamp); end
              sig { params(timestamp: String).void }
              def initialize(timestamp: nil); end
            end
            # Timestamp to indicate when the override ends.
            sig {
              returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::EndsAt)
             }
            def ends_at; end
            sig {
              params(_ends_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::EndsAt).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::EndsAt)
             }
            def ends_at=(_ends_at); end
            # Service action override parameters. Required if `type` is `service_action`.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction))
             }
            def service_action; end
            sig {
              params(_service_action: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction))
             }
            def service_action=(_service_action); end
            # Timestamp to indicate when the override starts.
            sig {
              returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::StartsAt)
             }
            def starts_at; end
            sig {
              params(_starts_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::StartsAt).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::StartsAt)
             }
            def starts_at=(_starts_at); end
            # The type of the override.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(ends_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::EndsAt, service_action: T.nilable(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::ServiceAction), starts_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override::StartsAt, type: String).void
             }
            def initialize(ends_at: nil, service_action: nil, starts_at: nil, type: nil); end
          end
          class Pricing < ::Stripe::RequestParams; end
          class StartsAt < ::Stripe::RequestParams
            # The timestamp when the item starts.
            sig { returns(String) }
            def timestamp; end
            sig { params(_timestamp: String).returns(String) }
            def timestamp=(_timestamp); end
            sig { params(timestamp: String).void }
            def initialize(timestamp: nil); end
          end
          # Timestamp to indicate when the contract line ends.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::EndsAt) }
          def ends_at; end
          sig {
            params(_ends_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::EndsAt).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::EndsAt)
           }
          def ends_at=(_ends_at); end
          # Set of key-value pairs that you can attach to an object.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # List of overrides. Later overrides in the list override earlier ones.
          sig {
            returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override])
           }
          def overrides; end
          sig {
            params(_overrides: T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override])
           }
          def overrides=(_overrides); end
          # The pricing configuration for the contract line.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Pricing) }
          def pricing; end
          sig {
            params(_pricing: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Pricing).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::Pricing)
           }
          def pricing=(_pricing); end
          # Timestamp to indicate when the contract line starts.
          sig { returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::StartsAt) }
          def starts_at; end
          sig {
            params(_starts_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::StartsAt).returns(::Stripe::V2::Billing::ContractCreateParams::ContractLine::StartsAt)
           }
          def starts_at=(_starts_at); end
          sig {
            params(ends_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::EndsAt, metadata: T.nilable(T::Hash[String, String]), overrides: T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine::Override], pricing: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::Pricing, starts_at: ::Stripe::V2::Billing::ContractCreateParams::ContractLine::StartsAt).void
           }
          def initialize(
            ends_at: nil,
            metadata: nil,
            overrides: nil,
            pricing: nil,
            starts_at: nil
          ); end
        end
        class LicenseQuantityAction < ::Stripe::RequestParams
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
          class Set < ::Stripe::RequestParams
            # The quantity to set.
            sig { returns(Integer) }
            def quantity; end
            sig { params(_quantity: Integer).returns(Integer) }
            def quantity=(_quantity); end
            sig { params(quantity: Integer).void }
            def initialize(quantity: nil); end
          end
          # The effective at for the license quantity action.
          sig {
            returns(::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::EffectiveAt)
           }
          def effective_at; end
          sig {
            params(_effective_at: ::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::EffectiveAt).returns(::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::EffectiveAt)
           }
          def effective_at=(_effective_at); end
          # The ID of the license pricing.
          sig { returns(T.nilable(String)) }
          def license_pricing_id; end
          sig { params(_license_pricing_id: T.nilable(String)).returns(T.nilable(String)) }
          def license_pricing_id=(_license_pricing_id); end
          # The lookup key for the license pricing.
          sig { returns(T.nilable(String)) }
          def license_pricing_lookup_key; end
          sig { params(_license_pricing_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def license_pricing_lookup_key=(_license_pricing_lookup_key); end
          # The type of the license pricing.
          sig { returns(String) }
          def license_pricing_type; end
          sig { params(_license_pricing_type: String).returns(String) }
          def license_pricing_type=(_license_pricing_type); end
          # The pricing line for the license quantity action.
          sig { returns(T.nilable(String)) }
          def pricing_line; end
          sig { params(_pricing_line: T.nilable(String)).returns(T.nilable(String)) }
          def pricing_line=(_pricing_line); end
          # The set quantity for the license quantity action.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::Set))
           }
          def set; end
          sig {
            params(_set: T.nilable(::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::Set)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::Set))
           }
          def set=(_set); end
          # The type of the license quantity action.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(effective_at: ::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::EffectiveAt, license_pricing_id: T.nilable(String), license_pricing_lookup_key: T.nilable(String), license_pricing_type: String, pricing_line: T.nilable(String), set: T.nilable(::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction::Set), type: String).void
           }
          def initialize(
            effective_at: nil,
            license_pricing_id: nil,
            license_pricing_lookup_key: nil,
            license_pricing_type: nil,
            pricing_line: nil,
            set: nil,
            type: nil
          ); end
        end
        class OneTimeFee < ::Stripe::RequestParams
          class BillSchedule < ::Stripe::RequestParams
            class BillAt < ::Stripe::RequestParams
              # The datetime at which the entry should be billed. Required if `type` is `datetime`.
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
            # When this entry should be billed.
            sig {
              returns(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule::BillAt)
             }
            def bill_at; end
            sig {
              params(_bill_at: ::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule::BillAt).returns(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule::BillAt)
             }
            def bill_at=(_bill_at); end
            # The amount to bill for this entry, in the smallest currency unit.
            sig { returns(Integer) }
            def value; end
            sig { params(_value: Integer).returns(Integer) }
            def value=(_value); end
            sig {
              params(bill_at: ::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule::BillAt, value: Integer).void
             }
            def initialize(bill_at: nil, value: nil); end
            def self.field_encodings
              @field_encodings = {value: :int64_string}
            end
          end
          class ProductDetails < ::Stripe::RequestParams
            # The ID of the v1 Product.
            sig { returns(String) }
            def product; end
            sig { params(_product: String).returns(String) }
            def product=(_product); end
            sig { params(product: String).void }
            def initialize(product: nil); end
          end
          # The bill schedule for the fee. Each entry produces an individual invoice item billed at `bill_at`.
          sig {
            returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule])
           }
          def bill_schedule; end
          sig {
            params(_bill_schedule: T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule])
           }
          def bill_schedule=(_bill_schedule); end
          # The type of billable item that this fee references.
          sig { returns(String) }
          def billable_item_type; end
          sig { params(_billable_item_type: String).returns(String) }
          def billable_item_type=(_billable_item_type); end
          # Details for a product billable target. Required when `billable_item_type` is `product`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::ProductDetails))
           }
          def product_details; end
          sig {
            params(_product_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::ProductDetails)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::ProductDetails))
           }
          def product_details=(_product_details); end
          sig {
            params(bill_schedule: T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::BillSchedule], billable_item_type: String, product_details: T.nilable(::Stripe::V2::Billing::ContractCreateParams::OneTimeFee::ProductDetails)).void
           }
          def initialize(bill_schedule: nil, billable_item_type: nil, product_details: nil); end
          def self.field_encodings
            @field_encodings = {
              bill_schedule: {
                kind: :array,
                element: {kind: :object, fields: {value: :int64_string}},
              },
            }
          end
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
              # The ID of the V1 price.
              sig { returns(String) }
              def price; end
              sig { params(_price: String).returns(String) }
              def price=(_price); end
              # The quantity for the price. Only applicable for licensed prices.
              sig { returns(T.nilable(Integer)) }
              def quantity; end
              sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def quantity=(_quantity); end
              sig { params(price: String, quantity: T.nilable(Integer)).void }
              def initialize(price: nil, quantity: nil); end
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
              class MetadataCondition < ::Stripe::RequestParams
                class AllOf < ::Stripe::RequestParams
                  # The metadata key.
                  sig { returns(String) }
                  def key; end
                  sig { params(_key: String).returns(String) }
                  def key=(_key); end
                  # The metadata value.
                  sig { returns(String) }
                  def value; end
                  sig { params(_value: String).returns(String) }
                  def value=(_value); end
                  sig { params(key: String, value: String).void }
                  def initialize(key: nil, value: nil); end
                end
                # All of these key-value conditions must match.
                sig {
                  returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition::AllOf])
                 }
                def all_of; end
                sig {
                  params(_all_of: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition::AllOf]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition::AllOf])
                 }
                def all_of=(_all_of); end
                sig {
                  params(all_of: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition::AllOf]).void
                 }
                def initialize(all_of: nil); end
              end
              # Filter by billable item IDs.
              sig { returns(T::Array[String]) }
              def billable_item_ids; end
              sig { params(_billable_item_ids: T::Array[String]).returns(T::Array[String]) }
              def billable_item_ids=(_billable_item_ids); end
              # Filter by billable item lookup keys.
              sig { returns(T::Array[String]) }
              def billable_item_lookup_keys; end
              sig { params(_billable_item_lookup_keys: T::Array[String]).returns(T::Array[String]) }
              def billable_item_lookup_keys=(_billable_item_lookup_keys); end
              # Filter by billable item type.
              sig { returns(T::Array[String]) }
              def billable_item_types; end
              sig { params(_billable_item_types: T::Array[String]).returns(T::Array[String]) }
              def billable_item_types=(_billable_item_types); end
              # Filter by metadata conditions.
              sig {
                returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition])
               }
              def metadata_conditions; end
              sig {
                params(_metadata_conditions: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition])
               }
              def metadata_conditions=(_metadata_conditions); end
              # Filter by rate card IDs. Only applicable for `multiplier` overrides.
              sig { returns(T::Array[String]) }
              def rate_card_ids; end
              sig { params(_rate_card_ids: T::Array[String]).returns(T::Array[String]) }
              def rate_card_ids=(_rate_card_ids); end
              # Whether to include or exclude items matching these criteria.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(billable_item_ids: T::Array[String], billable_item_lookup_keys: T::Array[String], billable_item_types: T::Array[String], metadata_conditions: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion::MetadataCondition], rate_card_ids: T::Array[String], type: String).void
               }
              def initialize(
                billable_item_ids: nil,
                billable_item_lookup_keys: nil,
                billable_item_types: nil,
                metadata_conditions: nil,
                rate_card_ids: nil,
                type: nil
              ); end
            end
            # Criteria determining which rates the multiplier applies to.
            sig {
              returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion])
             }
            def criteria; end
            sig {
              params(_criteria: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion])
             }
            def criteria=(_criteria); end
            # The multiplier factor, represented as a decimal string. e.g. "0.8" for a 20% reduction.
            sig { returns(String) }
            def factor; end
            sig { params(_factor: String).returns(String) }
            def factor=(_factor); end
            sig {
              params(criteria: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion], factor: String).void
             }
            def initialize(criteria: nil, factor: nil); end
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
              sig { params(_up_to_decimal: T.nilable(BigDecimal)).returns(T.nilable(BigDecimal)) }
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
            # The ID of the V1 price to overwrite.
            sig { returns(String) }
            def price; end
            sig { params(_price: String).returns(String) }
            def price=(_price); end
            # Defines whether the tiered price should be graduated or volume-based.
            sig { returns(T.nilable(String)) }
            def tiering_mode; end
            sig { params(_tiering_mode: T.nilable(String)).returns(T.nilable(String)) }
            def tiering_mode=(_tiering_mode); end
            # Each element represents a pricing tier.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice::Tier]))
             }
            def tiers; end
            sig {
              params(_tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice::Tier])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice::Tier]))
             }
            def tiers=(_tiers); end
            # The per-unit amount to be charged, represented as a decimal string in minor currency units.
            sig { returns(T.nilable(String)) }
            def unit_amount; end
            sig { params(_unit_amount: T.nilable(String)).returns(T.nilable(String)) }
            def unit_amount=(_unit_amount); end
            sig {
              params(price: String, tiering_mode: T.nilable(String), tiers: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice::Tier]), unit_amount: T.nilable(String)).void
             }
            def initialize(price: nil, tiering_mode: nil, tiers: nil, unit_amount: nil); end
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
          # Parameters for an overwrite_price override. Required if `type` is `overwrite_price`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice))
           }
          def overwrite_price; end
          sig {
            params(_overwrite_price: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice))
           }
          def overwrite_price=(_overwrite_price); end
          # The priority of this override relative to others. Lower number = higher priority.
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
            params(ends_at: ::Stripe::V2::Billing::ContractCreateParams::PricingOverride::EndsAt, lookup_key: T.nilable(String), multiplier: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::Multiplier), overwrite_price: T.nilable(::Stripe::V2::Billing::ContractCreateParams::PricingOverride::OverwritePrice), priority: Integer, starts_at: ::Stripe::V2::Billing::ContractCreateParams::PricingOverride::StartsAt, type: String).void
           }
          def initialize(
            ends_at: nil,
            lookup_key: nil,
            multiplier: nil,
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
        # The billing settings for the contract.
        sig { returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings)) }
        def billing_settings; end
        sig {
          params(_billing_settings: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings)).returns(T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings))
         }
        def billing_settings=(_billing_settings); end
        # A list of contract lines to create with the contract.
        sig { returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine]) }
        def contract_lines; end
        sig {
          params(_contract_lines: T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine])
         }
        def contract_lines=(_contract_lines); end
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
        # A list of license quantity actions to create with the contract.
        sig {
          returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction])
         }
        def license_quantity_actions; end
        sig {
          params(_license_quantity_actions: T::Array[::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction])
         }
        def license_quantity_actions=(_license_quantity_actions); end
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
        sig { returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride]) }
        def pricing_overrides; end
        sig {
          params(_pricing_overrides: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride]).returns(T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride])
         }
        def pricing_overrides=(_pricing_overrides); end
        sig {
          params(billing_settings: T.nilable(::Stripe::V2::Billing::ContractCreateParams::BillingSettings), contract_lines: T::Array[::Stripe::V2::Billing::ContractCreateParams::ContractLine], contract_number: String, currency: String, include: T.nilable(T::Array[String]), license_quantity_actions: T::Array[::Stripe::V2::Billing::ContractCreateParams::LicenseQuantityAction], metadata: T.nilable(T::Hash[String, String]), one_time_fees: T.nilable(T::Array[::Stripe::V2::Billing::ContractCreateParams::OneTimeFee]), pricing_lines: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingLine], pricing_overrides: T::Array[::Stripe::V2::Billing::ContractCreateParams::PricingOverride]).void
         }
        def initialize(
          billing_settings: nil,
          contract_lines: nil,
          contract_number: nil,
          currency: nil,
          include: nil,
          license_quantity_actions: nil,
          metadata: nil,
          one_time_fees: nil,
          pricing_lines: nil,
          pricing_overrides: nil
        ); end
        def self.field_encodings
          @field_encodings = {
            one_time_fees: {
              kind: :array,
              element: {
                kind: :object,
                fields: {
                  bill_schedule: {
                    kind: :array,
                    element: {kind: :object, fields: {value: :int64_string}},
                  },
                },
              },
            },
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
          }
        end
      end
    end
  end
end