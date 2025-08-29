# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CadenceService < StripeService
        class ListParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Customer object. If provided, only cadences that specifically reference the provided customer ID will be returned.
            sig { returns(T.nilable(String)) }
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # If provided, only cadences that specifically reference the payer will be returned. Mutually exclusive with `test_clock`.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::ListParams::Payer)) }
          attr_accessor :payer
          # If provided, only cadences that specifically reference the provided test clock ID (via the
          # customer's test clock) will be returned.
          # Mutually exclusive with `payer`.
          sig { returns(T.nilable(String)) }
          attr_accessor :test_clock
          sig {
            params(include: T.nilable(T::Array[String]), limit: T.nilable(Integer), payer: T.nilable(::Stripe::V2::Billing::CadenceService::ListParams::Payer), test_clock: T.nilable(String)).void
           }
          def initialize(include: nil, limit: nil, payer: nil, test_clock: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class BillingCycle < Stripe::RequestParams
            class Day < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :second
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day::Time))
               }
              attr_accessor :time
              sig {
                params(time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day::Time)).void
               }
              def initialize(time: nil); end
            end
            class Month < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :second
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              sig { returns(Integer) }
              attr_accessor :day_of_month
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month::Time))
               }
              attr_accessor :time
              sig {
                params(day_of_month: Integer, time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month::Time)).void
               }
              def initialize(day_of_month: nil, time: nil); end
            end
            class Week < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :second
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day of the week to bill the type=week billing cycle on.
              # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601
              # week day numbering. If not provided, this will default to the day the
              # cadence was created.
              sig { returns(Integer) }
              attr_accessor :day_of_week
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week::Time))
               }
              attr_accessor :time
              sig {
                params(day_of_week: Integer, time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week::Time)).void
               }
              def initialize(day_of_week: nil, time: nil); end
            end
            class Year < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                attr_accessor :second
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :day_of_month
              # The month to bill on from 1-12. If not provided, this will default to the
              # month the cadence was created.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :month_of_year
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year::Time))
               }
              attr_accessor :time
              sig {
                params(day_of_month: T.nilable(Integer), month_of_year: T.nilable(Integer), time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year::Time)).void
               }
              def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
            end
            # The number of intervals (specified in the interval attribute) between
            # cadence billings. For example, type=month and interval_count=3 bills every
            # 3 months. If this is not provided, it will default to 1.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            # The frequency at which a cadence bills.
            sig { returns(String) }
            attr_accessor :type
            # Specific configuration for determining billing dates when type=day.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day))
             }
            attr_accessor :day
            # Specific configuration for determining billing dates when type=month.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month))
             }
            attr_accessor :month
            # Specific configuration for determining billing dates when type=week.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week))
             }
            attr_accessor :week
            # Specific configuration for determining billing dates when type=year.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year))
             }
            attr_accessor :year
            sig {
              params(interval_count: T.nilable(Integer), type: String, day: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day), month: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month), week: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week), year: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year)).void
             }
            def initialize(
              interval_count: nil,
              type: nil,
              day: nil,
              month: nil,
              week: nil,
              year: nil
            ); end
          end
          class Payer < Stripe::RequestParams
            # The ID of the Billing Profile object which determines how a bill will be paid. If provided, the created cadence will be
            # associated with the provided Billing Profile. If not provided, a new Billing Profile will be created and associated with the cadence.
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_profile
            # The ID of the Customer object.
            sig { returns(T.nilable(String)) }
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            sig { returns(T.nilable(String)) }
            attr_accessor :type
            sig {
              params(billing_profile: T.nilable(String), customer: T.nilable(String), type: T.nilable(String)).void
             }
            def initialize(billing_profile: nil, customer: nil, type: nil); end
          end
          class Settings < Stripe::RequestParams
            class Bill < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              attr_accessor :id
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              sig { returns(T.nilable(String)) }
              attr_accessor :version
              sig { params(id: String, version: T.nilable(String)).void }
              def initialize(id: nil, version: nil); end
            end
            class Collection < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              attr_accessor :id
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              sig { returns(T.nilable(String)) }
              attr_accessor :version
              sig { params(id: String, version: T.nilable(String)).void }
              def initialize(id: nil, version: nil); end
            end
            # Settings that configure bill generation, which includes calculating totals, tax, and presenting invoices.
            # If no setting is provided here, the settings from the customer referenced on the payer will be used.
            # If no customer settings are present, the merchant default settings will be used.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Bill))
             }
            attr_accessor :bill
            # Settings that configure and manage the behavior of collecting payments.
            # If no setting is provided here, the settings from the customer referenced from the payer will be used if they exist.
            # If no customer settings are present, the merchant default settings will be used.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Collection))
             }
            attr_accessor :collection
            sig {
              params(bill: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Bill), collection: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Collection)).void
             }
            def initialize(bill: nil, collection: nil); end
          end
          # The billing cycle is the object that defines future billing cycle dates.
          sig { returns(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle) }
          attr_accessor :billing_cycle
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The payer determines the entity financially responsible for the bill.
          sig { returns(::Stripe::V2::Billing::CadenceService::CreateParams::Payer) }
          attr_accessor :payer
          # The settings associated with the cadence.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings)) }
          attr_accessor :settings
          sig {
            params(billing_cycle: ::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle, include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payer: ::Stripe::V2::Billing::CadenceService::CreateParams::Payer, settings: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings)).void
           }
          def initialize(
            billing_cycle: nil,
            include: nil,
            metadata: nil,
            payer: nil,
            settings: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          sig { params(include: T.nilable(T::Array[String])).void }
          def initialize(include: nil); end
        end
        class UpdateParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Billing Profile object which determines how a bill will be paid.
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_profile
            sig { params(billing_profile: T.nilable(String)).void }
            def initialize(billing_profile: nil); end
          end
          class Settings < Stripe::RequestParams
            class Bill < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              attr_accessor :id
              # An optional field to specify the version of Settings to use.
              # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
              # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
              # To clear a pinned version, set the version to null.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :version
              sig { params(id: String, version: T.nilable(T.nilable(String))).void }
              def initialize(id: nil, version: nil); end
            end
            class Collection < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              attr_accessor :id
              # An optional field to specify the version of Settings to use.
              # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
              # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
              # To clear a pinned version, set the version to null.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :version
              sig { params(id: String, version: T.nilable(T.nilable(String))).void }
              def initialize(id: nil, version: nil); end
            end
            # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices. If null is provided, the current bill settings will be removed from the billing cadence.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Bill)))
             }
            attr_accessor :bill
            # Settings that configure and manage the behavior of collecting payments. If null is provided, the current collection settings will be removed from the billing cadence.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Collection)))
             }
            attr_accessor :collection
            sig {
              params(bill: T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Bill)), collection: T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Collection))).void
             }
            def initialize(bill: nil, collection: nil); end
          end
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
          # The payer determines the entity financially responsible for the bill.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Payer)) }
          attr_accessor :payer
          # The settings associated with the cadence.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings)) }
          attr_accessor :settings
          sig {
            params(include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, T.nilable(String)]), payer: T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Payer), settings: T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings)).void
           }
          def initialize(include: nil, metadata: nil, payer: nil, settings: nil); end
        end
        class CancelParams < Stripe::RequestParams
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include
          sig { params(include: T.nilable(T::Array[String])).void }
          def initialize(include: nil); end
        end
        # Cancel the Billing Cadence.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CadenceService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Cadence)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a Billing Cadence object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CadenceService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Cadence)
         }
        def create(params = {}, opts = {}); end

        # List Billing Cadences.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CadenceService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Billing Cadence object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CadenceService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Cadence)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Billing Cadence object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CadenceService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Cadence)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end