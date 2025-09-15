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
            def customer; end
            sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
            def customer=(_customer); end
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # If provided, only cadences that specifically reference the payer will be returned. Mutually exclusive with `test_clock`.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::ListParams::Payer)) }
          def payer; end
          sig {
            params(_payer: T.nilable(::Stripe::V2::Billing::CadenceService::ListParams::Payer)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::ListParams::Payer))
           }
          def payer=(_payer); end
          # If provided, only cadences that specifically reference the provided test clock ID (via the
          # customer's test clock) will be returned.
          # Mutually exclusive with `payer`.
          sig { returns(T.nilable(String)) }
          def test_clock; end
          sig { params(_test_clock: T.nilable(String)).returns(T.nilable(String)) }
          def test_clock=(_test_clock); end
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
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day::Time))
               }
              def time; end
              sig {
                params(_time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day::Time)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day::Time))
               }
              def time=(_time); end
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
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              sig { returns(Integer) }
              def day_of_month; end
              sig { params(_day_of_month: Integer).returns(Integer) }
              def day_of_month=(_day_of_month); end
              # The month to anchor the billing on for a type="month" billing cycle from
              # 1-12. If not provided, this will default to the month the cadence was created.
              # This setting can only be used for monthly billing cycles with `interval_count` of 2, 3, 4 or 6.
              # All occurrences will be calculated from month provided.
              sig { returns(T.nilable(Integer)) }
              def month_of_year; end
              sig { params(_month_of_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def month_of_year=(_month_of_year); end
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month::Time))
               }
              def time; end
              sig {
                params(_time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month::Time)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month::Time))
               }
              def time=(_time); end
              sig {
                params(day_of_month: Integer, month_of_year: T.nilable(Integer), time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month::Time)).void
               }
              def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
            end
            class Week < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day of the week to bill the type=week billing cycle on.
              # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601
              # week day numbering. If not provided, this will default to the day the
              # cadence was created.
              sig { returns(Integer) }
              def day_of_week; end
              sig { params(_day_of_week: Integer).returns(Integer) }
              def day_of_week=(_day_of_week); end
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week::Time))
               }
              def time; end
              sig {
                params(_time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week::Time)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week::Time))
               }
              def time=(_time); end
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
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              sig { returns(T.nilable(Integer)) }
              def day_of_month; end
              sig { params(_day_of_month: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def day_of_month=(_day_of_month); end
              # The month to bill on from 1-12. If not provided, this will default to the
              # month the cadence was created.
              sig { returns(T.nilable(Integer)) }
              def month_of_year; end
              sig { params(_month_of_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def month_of_year=(_month_of_year); end
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year::Time))
               }
              def time; end
              sig {
                params(_time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year::Time)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year::Time))
               }
              def time=(_time); end
              sig {
                params(day_of_month: T.nilable(Integer), month_of_year: T.nilable(Integer), time: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year::Time)).void
               }
              def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
            end
            # The number of intervals (specified in the interval attribute) between
            # cadence billings. For example, type=month and interval_count=3 bills every
            # 3 months. If this is not provided, it will default to 1.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # The frequency at which a cadence bills.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # Specific configuration for determining billing dates when type=day.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day))
             }
            def day; end
            sig {
              params(_day: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Day))
             }
            def day=(_day); end
            # Specific configuration for determining billing dates when type=month.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month))
             }
            def month; end
            sig {
              params(_month: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Month))
             }
            def month=(_month); end
            # Specific configuration for determining billing dates when type=week.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week))
             }
            def week; end
            sig {
              params(_week: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Week))
             }
            def week=(_week); end
            # Specific configuration for determining billing dates when type=year.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year))
             }
            def year; end
            sig {
              params(_year: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle::Year))
             }
            def year=(_year); end
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
            def billing_profile; end
            sig { params(_billing_profile: T.nilable(String)).returns(T.nilable(String)) }
            def billing_profile=(_billing_profile); end
            # The ID of the Customer object.
            sig { returns(T.nilable(String)) }
            def customer; end
            sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
            def customer=(_customer); end
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            sig { returns(T.nilable(String)) }
            def type; end
            sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
            def type=(_type); end
            sig {
              params(billing_profile: T.nilable(String), customer: T.nilable(String), type: T.nilable(String)).void
             }
            def initialize(billing_profile: nil, customer: nil, type: nil); end
          end
          class Settings < Stripe::RequestParams
            class Bill < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              sig { returns(T.nilable(String)) }
              def version; end
              sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
              def version=(_version); end
              sig { params(id: String, version: T.nilable(String)).void }
              def initialize(id: nil, version: nil); end
            end
            class Collection < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              sig { returns(T.nilable(String)) }
              def version; end
              sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
              def version=(_version); end
              sig { params(id: String, version: T.nilable(String)).void }
              def initialize(id: nil, version: nil); end
            end
            # Settings that configure bill generation, which includes calculating totals, tax, and presenting invoices.
            # If no setting is provided here, the settings from the customer referenced on the payer will be used.
            # If no customer settings are present, the merchant default settings will be used.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Bill))
             }
            def bill; end
            sig {
              params(_bill: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Bill)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Bill))
             }
            def bill=(_bill); end
            # Settings that configure and manage the behavior of collecting payments.
            # If no setting is provided here, the settings from the customer referenced from the payer will be used if they exist.
            # If no customer settings are present, the merchant default settings will be used.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Collection))
             }
            def collection; end
            sig {
              params(_collection: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Collection)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Collection))
             }
            def collection=(_collection); end
            sig {
              params(bill: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Bill), collection: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings::Collection)).void
             }
            def initialize(bill: nil, collection: nil); end
          end
          # The billing cycle is the object that defines future billing cycle dates.
          sig { returns(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle) }
          def billing_cycle; end
          sig {
            params(_billing_cycle: ::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle).returns(::Stripe::V2::Billing::CadenceService::CreateParams::BillingCycle)
           }
          def billing_cycle=(_billing_cycle); end
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The payer determines the entity financially responsible for the bill.
          sig { returns(::Stripe::V2::Billing::CadenceService::CreateParams::Payer) }
          def payer; end
          sig {
            params(_payer: ::Stripe::V2::Billing::CadenceService::CreateParams::Payer).returns(::Stripe::V2::Billing::CadenceService::CreateParams::Payer)
           }
          def payer=(_payer); end
          # The settings associated with the cadence.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings)) }
          def settings; end
          sig {
            params(_settings: T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::CreateParams::Settings))
           }
          def settings=(_settings); end
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
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          sig { params(include: T.nilable(T::Array[String])).void }
          def initialize(include: nil); end
        end
        class UpdateParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Billing Profile object which determines how a bill will be paid.
            sig { returns(T.nilable(String)) }
            def billing_profile; end
            sig { params(_billing_profile: T.nilable(String)).returns(T.nilable(String)) }
            def billing_profile=(_billing_profile); end
            sig { params(billing_profile: T.nilable(String)).void }
            def initialize(billing_profile: nil); end
          end
          class Settings < Stripe::RequestParams
            class Bill < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # An optional field to specify the version of Settings to use.
              # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
              # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
              # To clear a pinned version, set the version to null.
              sig { returns(T.nilable(T.nilable(String))) }
              def version; end
              sig {
                params(_version: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def version=(_version); end
              sig { params(id: String, version: T.nilable(T.nilable(String))).void }
              def initialize(id: nil, version: nil); end
            end
            class Collection < Stripe::RequestParams
              # The ID of the referenced settings object.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # An optional field to specify the version of Settings to use.
              # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
              # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
              # To clear a pinned version, set the version to null.
              sig { returns(T.nilable(T.nilable(String))) }
              def version; end
              sig {
                params(_version: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def version=(_version); end
              sig { params(id: String, version: T.nilable(T.nilable(String))).void }
              def initialize(id: nil, version: nil); end
            end
            # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices. If null is provided, the current bill settings will be removed from the billing cadence.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Bill)))
             }
            def bill; end
            sig {
              params(_bill: T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Bill))).returns(T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Bill)))
             }
            def bill=(_bill); end
            # Settings that configure and manage the behavior of collecting payments. If null is provided, the current collection settings will be removed from the billing cadence.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Collection)))
             }
            def collection; end
            sig {
              params(_collection: T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Collection))).returns(T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Collection)))
             }
            def collection=(_collection); end
            sig {
              params(bill: T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Bill)), collection: T.nilable(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings::Collection))).void
             }
            def initialize(bill: nil, collection: nil); end
          end
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
           }
          def metadata=(_metadata); end
          # The payer determines the entity financially responsible for the bill.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Payer)) }
          def payer; end
          sig {
            params(_payer: T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Payer)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Payer))
           }
          def payer=(_payer); end
          # The settings associated with the cadence.
          sig { returns(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings)) }
          def settings; end
          sig {
            params(_settings: T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings)).returns(T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings))
           }
          def settings=(_settings); end
          sig {
            params(include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, T.nilable(String)]), payer: T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Payer), settings: T.nilable(::Stripe::V2::Billing::CadenceService::UpdateParams::Settings)).void
           }
          def initialize(include: nil, metadata: nil, payer: nil, settings: nil); end
        end
        class CancelParams < Stripe::RequestParams
          # Additional resource to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
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