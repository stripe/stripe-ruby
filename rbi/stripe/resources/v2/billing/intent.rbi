# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class Intent < APIResource
        class AmountDetails < ::Stripe::StripeObject
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          sig { returns(String) }
          def currency; end
          # Amount of discount applied.
          sig { returns(String) }
          def discount; end
          # Amount of shipping charges.
          sig { returns(String) }
          def shipping; end
          # Subtotal amount before tax and discounts.
          sig { returns(String) }
          def subtotal; end
          # Amount of tax.
          sig { returns(String) }
          def tax; end
          # Total amount for the Billing Intent.
          sig { returns(String) }
          def total; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Time at which the Billing Intent was canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Time at which the Billing Intent was committed.
          sig { returns(T.nilable(String)) }
          def committed_at; end
          # Time at which the Billing Intent was drafted.
          sig { returns(T.nilable(String)) }
          def drafted_at; end
          # Time at which the Billing Intent was reserved.
          sig { returns(T.nilable(String)) }
          def reserved_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CadenceData < ::Stripe::StripeObject
          class BillingCycle < ::Stripe::StripeObject
            class Day < ::Stripe::StripeObject
              class Time < ::Stripe::StripeObject
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                def hour; end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(T.nilable(Integer)) }
                def second; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The time at which the billing cycle ends.
              sig { returns(Time) }
              def time; end
              def self.inner_class_types
                @inner_class_types = {time: Time}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Month < ::Stripe::StripeObject
              class Time < ::Stripe::StripeObject
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                def hour; end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(T.nilable(Integer)) }
                def second; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The day to anchor the billing on for a type="month" billing cycle from 1-31.
              # If this number is greater than the number of days in the month being billed,
              # this will anchor to the last day of the month.
              sig { returns(Integer) }
              def day_of_month; end
              # The month to anchor the billing on for a type="month" billing cycle from
              # 1-12. Occurrences are calculated from the month anchor.
              sig { returns(T.nilable(Integer)) }
              def month_of_year; end
              # The time at which the billing cycle ends.
              sig { returns(Time) }
              def time; end
              def self.inner_class_types
                @inner_class_types = {time: Time}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Week < ::Stripe::StripeObject
              class Time < ::Stripe::StripeObject
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                def hour; end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(T.nilable(Integer)) }
                def second; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The day of the week to bill the type=week billing cycle on.
              # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601 week day numbering.
              sig { returns(Integer) }
              def day_of_week; end
              # The time at which the billing cycle ends.
              sig { returns(Time) }
              def time; end
              def self.inner_class_types
                @inner_class_types = {time: Time}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Year < ::Stripe::StripeObject
              class Time < ::Stripe::StripeObject
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                sig { returns(Integer) }
                def hour; end
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(Integer) }
                def minute; end
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                sig { returns(T.nilable(Integer)) }
                def second; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The day to anchor the billing on for a type="month" billing cycle from 1-31.
              # If this number is greater than the number of days in the month being billed,
              # this will anchor to the last day of the month.
              sig { returns(Integer) }
              def day_of_month; end
              # The month to bill on from 1-12. If not provided, this will default to the month the cadence was created.
              sig { returns(Integer) }
              def month_of_year; end
              # The time at which the billing cycle ends.
              sig { returns(Time) }
              def time; end
              def self.inner_class_types
                @inner_class_types = {time: Time}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The number of intervals (specified in the interval attribute) between cadence billings. For example, type=month and interval_count=3 bills every 3 months.
            sig { returns(Integer) }
            def interval_count; end
            # The frequency at which a cadence bills.
            sig { returns(String) }
            def type; end
            # Specific configuration for determining billing dates when type=day.
            sig { returns(T.nilable(Day)) }
            def day; end
            # Specific configuration for determining billing dates when type=month.
            sig { returns(T.nilable(Month)) }
            def month; end
            # Specific configuration for determining billing dates when type=week.
            sig { returns(T.nilable(Week)) }
            def week; end
            # Specific configuration for determining billing dates when type=year.
            sig { returns(T.nilable(Year)) }
            def year; end
            def self.inner_class_types
              @inner_class_types = {day: Day, month: Month, week: Week, year: Year}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Payer < ::Stripe::StripeObject
            class BillingProfileData < ::Stripe::StripeObject
              # The customer to associate with the profile.
              sig { returns(String) }
              def customer; end
              # The default payment method to use when billing this profile.
              # If none is provided, the customer `default_payment_method` will be used.
              sig { returns(T.nilable(String)) }
              def default_payment_method; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The ID of the Billing Profile object which determines how a bill will be paid.
            sig { returns(T.nilable(String)) }
            def billing_profile; end
            # Data for creating a new profile.
            sig { returns(T.nilable(BillingProfileData)) }
            def billing_profile_data; end
            def self.inner_class_types
              @inner_class_types = {billing_profile_data: BillingProfileData}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Settings < ::Stripe::StripeObject
            class Bill < ::Stripe::StripeObject
              # The ID of the referenced settings object.
              sig { returns(String) }
              def id; end
              # Returns the Settings Version when the cadence is pinned to a specific version.
              sig { returns(T.nilable(String)) }
              def version; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Collection < ::Stripe::StripeObject
              # The ID of the referenced settings object.
              sig { returns(String) }
              def id; end
              # Returns the Settings Version when the cadence is pinned to a specific version.
              sig { returns(T.nilable(String)) }
              def version; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices.
            sig { returns(T.nilable(Bill)) }
            def bill; end
            # Settings that configure and manage the behavior of collecting payments.
            sig { returns(T.nilable(Collection)) }
            def collection; end
            def self.inner_class_types
              @inner_class_types = {bill: Bill, collection: Collection}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The billing cycle configuration for this Cadence.
          sig { returns(BillingCycle) }
          def billing_cycle; end
          # Information about the payer for this Cadence.
          sig { returns(Payer) }
          def payer; end
          # Settings for creating the Cadence.
          sig { returns(T.nilable(Settings)) }
          def settings; end
          def self.inner_class_types
            @inner_class_types = {billing_cycle: BillingCycle, payer: Payer, settings: Settings}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Breakdown of the amount for this Billing Intent.
        sig { returns(AmountDetails) }
        def amount_details; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Current status of the Billing Intent.
        sig { returns(String) }
        def status; end
        # Timestamps for status transitions of the Billing Intent.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # ID of an existing Cadence to use.
        sig { returns(T.nilable(String)) }
        def cadence; end
        # Data for creating a new Cadence.
        sig { returns(T.nilable(CadenceData)) }
        def cadence_data; end
      end
    end
  end
end