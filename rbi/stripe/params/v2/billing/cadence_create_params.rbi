# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CadenceCreateParams < ::Stripe::RequestParams
        class BillingCycle < ::Stripe::RequestParams
          class Day < ::Stripe::RequestParams
            class Time < ::Stripe::RequestParams
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
            sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day::Time)) }
            def time; end
            sig {
              params(_time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day::Time)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day::Time))
             }
            def time=(_time); end
            sig {
              params(time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day::Time)).void
             }
            def initialize(time: nil); end
          end
          class Month < ::Stripe::RequestParams
            class Time < ::Stripe::RequestParams
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
            sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month::Time)) }
            def time; end
            sig {
              params(_time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month::Time)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month::Time))
             }
            def time=(_time); end
            sig {
              params(day_of_month: Integer, month_of_year: T.nilable(Integer), time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month::Time)).void
             }
            def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
          end
          class Week < ::Stripe::RequestParams
            class Time < ::Stripe::RequestParams
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
            sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week::Time)) }
            def time; end
            sig {
              params(_time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week::Time)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week::Time))
             }
            def time=(_time); end
            sig {
              params(day_of_week: Integer, time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week::Time)).void
             }
            def initialize(day_of_week: nil, time: nil); end
          end
          class Year < ::Stripe::RequestParams
            class Time < ::Stripe::RequestParams
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
            sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year::Time)) }
            def time; end
            sig {
              params(_time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year::Time)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year::Time))
             }
            def time=(_time); end
            sig {
              params(day_of_month: T.nilable(Integer), month_of_year: T.nilable(Integer), time: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year::Time)).void
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
          sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day)) }
          def day; end
          sig {
            params(_day: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day))
           }
          def day=(_day); end
          # Specific configuration for determining billing dates when type=month.
          sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month)) }
          def month; end
          sig {
            params(_month: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month))
           }
          def month=(_month); end
          # Specific configuration for determining billing dates when type=week.
          sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week)) }
          def week; end
          sig {
            params(_week: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week))
           }
          def week=(_week); end
          # Specific configuration for determining billing dates when type=year.
          sig { returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year)) }
          def year; end
          sig {
            params(_year: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year)).returns(T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year))
           }
          def year=(_year); end
          sig {
            params(interval_count: T.nilable(Integer), type: String, day: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Day), month: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Month), week: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Week), year: T.nilable(V2::Billing::CadenceCreateParams::BillingCycle::Year)).void
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
        class Payer < ::Stripe::RequestParams
          # The ID of the Billing Profile object which determines how a bill will be paid.
          sig { returns(String) }
          def billing_profile; end
          sig { params(_billing_profile: String).returns(String) }
          def billing_profile=(_billing_profile); end
          sig { params(billing_profile: String).void }
          def initialize(billing_profile: nil); end
        end
        class Settings < ::Stripe::RequestParams
          class Bill < ::Stripe::RequestParams
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
          class Collection < ::Stripe::RequestParams
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
          sig { returns(T.nilable(V2::Billing::CadenceCreateParams::Settings::Bill)) }
          def bill; end
          sig {
            params(_bill: T.nilable(V2::Billing::CadenceCreateParams::Settings::Bill)).returns(T.nilable(V2::Billing::CadenceCreateParams::Settings::Bill))
           }
          def bill=(_bill); end
          # Settings that configure and manage the behavior of collecting payments.
          # If no setting is provided here, the settings from the customer referenced from the payer will be used if they exist.
          # If no customer settings are present, the merchant default settings will be used.
          sig { returns(T.nilable(V2::Billing::CadenceCreateParams::Settings::Collection)) }
          def collection; end
          sig {
            params(_collection: T.nilable(V2::Billing::CadenceCreateParams::Settings::Collection)).returns(T.nilable(V2::Billing::CadenceCreateParams::Settings::Collection))
           }
          def collection=(_collection); end
          sig {
            params(bill: T.nilable(V2::Billing::CadenceCreateParams::Settings::Bill), collection: T.nilable(V2::Billing::CadenceCreateParams::Settings::Collection)).void
           }
          def initialize(bill: nil, collection: nil); end
        end
        # The billing cycle is the object that defines future billing cycle dates.
        sig { returns(V2::Billing::CadenceCreateParams::BillingCycle) }
        def billing_cycle; end
        sig {
          params(_billing_cycle: V2::Billing::CadenceCreateParams::BillingCycle).returns(V2::Billing::CadenceCreateParams::BillingCycle)
         }
        def billing_cycle=(_billing_cycle); end
        # Additional resource to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # A lookup key used to retrieve cadences dynamically from a static string. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The payer determines the entity financially responsible for the bill.
        sig { returns(V2::Billing::CadenceCreateParams::Payer) }
        def payer; end
        sig {
          params(_payer: V2::Billing::CadenceCreateParams::Payer).returns(V2::Billing::CadenceCreateParams::Payer)
         }
        def payer=(_payer); end
        # The settings associated with the cadence.
        sig { returns(T.nilable(V2::Billing::CadenceCreateParams::Settings)) }
        def settings; end
        sig {
          params(_settings: T.nilable(V2::Billing::CadenceCreateParams::Settings)).returns(T.nilable(V2::Billing::CadenceCreateParams::Settings))
         }
        def settings=(_settings); end
        sig {
          params(billing_cycle: V2::Billing::CadenceCreateParams::BillingCycle, include: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), payer: V2::Billing::CadenceCreateParams::Payer, settings: T.nilable(V2::Billing::CadenceCreateParams::Settings)).void
         }
        def initialize(
          billing_cycle: nil,
          include: nil,
          lookup_key: nil,
          metadata: nil,
          payer: nil,
          settings: nil
        ); end
      end
    end
  end
end