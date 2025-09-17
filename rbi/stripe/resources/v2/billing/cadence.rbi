# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class Cadence < APIResource
        class BillingCycle < Stripe::StripeObject
          class Day < Stripe::StripeObject
            class Time < Stripe::StripeObject
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
            end
            # The time at which the billing cycle ends.
            sig { returns(Time) }
            def time; end
          end
          class Month < Stripe::StripeObject
            class Time < Stripe::StripeObject
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
          end
          class Week < Stripe::StripeObject
            class Time < Stripe::StripeObject
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
            end
            # The day of the week to bill the type=week billing cycle on.
            # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601 week day numbering.
            sig { returns(Integer) }
            def day_of_week; end
            # The time at which the billing cycle ends.
            sig { returns(Time) }
            def time; end
          end
          class Year < Stripe::StripeObject
            class Time < Stripe::StripeObject
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
        end
        class InvoiceDiscountRule < Stripe::StripeObject
          class PercentOff < Stripe::StripeObject
            class MaximumApplications < Stripe::StripeObject
              # Max applications type of this discount, ex: indefinite.
              sig { returns(String) }
              def type; end
            end
            # The maximum applications configuration for this discount.
            sig { returns(MaximumApplications) }
            def maximum_applications; end
            # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
            sig { returns(String) }
            def percent_off; end
          end
          # Unique identifier for the object.
          sig { returns(String) }
          def id; end
          # The type of the discount.
          sig { returns(String) }
          def type; end
          # Details if the discount is a percentage off.
          sig { returns(T.nilable(PercentOff)) }
          def percent_off; end
        end
        class Payer < Stripe::StripeObject
          # The ID of the Billing Profile object which determines how a bill will be paid.
          sig { returns(T.nilable(String)) }
          def billing_profile; end
          # The ID of the Customer object.
          sig { returns(T.nilable(String)) }
          def customer; end
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          sig { returns(String) }
          def type; end
        end
        class Settings < Stripe::StripeObject
          class Bill < Stripe::StripeObject
            # The ID of the referenced settings object.
            sig { returns(String) }
            def id; end
            # Returns the Settings Version when the cadence is pinned to a specific version.
            sig { returns(T.nilable(String)) }
            def version; end
          end
          class Collection < Stripe::StripeObject
            # The ID of the referenced settings object.
            sig { returns(String) }
            def id; end
            # Returns the Settings Version when the cadence is pinned to a specific version.
            sig { returns(T.nilable(String)) }
            def version; end
          end
          # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices.
          sig { returns(T.nilable(Bill)) }
          def bill; end
          # Settings that configure and manage the behavior of collecting payments.
          sig { returns(T.nilable(Collection)) }
          def collection; end
        end
        # The billing cycle is the object that defines future billing cycle dates.
        sig { returns(BillingCycle) }
        def billing_cycle; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # The discount rules applied to all invoices for the cadence.
        sig { returns(T.nilable(T::Array[InvoiceDiscountRule])) }
        def invoice_discount_rules; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # The date that the billing cadence will next bill. Null if the cadence is not active.
        sig { returns(T.nilable(String)) }
        def next_billing_date; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The payer determines the entity financially responsible for the bill.
        sig { returns(Payer) }
        def payer; end
        # The settings associated with the cadence.
        sig { returns(T.nilable(Settings)) }
        def settings; end
        # The current status of the cadence.
        sig { returns(String) }
        def status; end
        # The ID of the Test Clock.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end