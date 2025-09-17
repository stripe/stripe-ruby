# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class Cadence < APIResource
        OBJECT_NAME = "v2.billing.cadence"
        def self.object_name
          "v2.billing.cadence"
        end

        class BillingCycle < Stripe::StripeObject
          class Day < Stripe::StripeObject
            class Time < Stripe::StripeObject
              # The hour at which the billing cycle ends.
              # This must be an integer between 0 and 23, inclusive.
              # 0 represents midnight, and 23 represents 11 PM.
              attr_reader :hour
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :minute
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :second

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The time at which the billing cycle ends.
            attr_reader :time

            def self.inner_class_types
              @inner_class_types = { time: Time }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Month < Stripe::StripeObject
            class Time < Stripe::StripeObject
              # The hour at which the billing cycle ends.
              # This must be an integer between 0 and 23, inclusive.
              # 0 represents midnight, and 23 represents 11 PM.
              attr_reader :hour
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :minute
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :second

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
            attr_reader :day_of_month
            # The month to anchor the billing on for a type="month" billing cycle from
            # 1-12. Occurrences are calculated from the month anchor.
            attr_reader :month_of_year
            # The time at which the billing cycle ends.
            attr_reader :time

            def self.inner_class_types
              @inner_class_types = { time: Time }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Week < Stripe::StripeObject
            class Time < Stripe::StripeObject
              # The hour at which the billing cycle ends.
              # This must be an integer between 0 and 23, inclusive.
              # 0 represents midnight, and 23 represents 11 PM.
              attr_reader :hour
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :minute
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :second

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The day of the week to bill the type=week billing cycle on.
            # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601 week day numbering.
            attr_reader :day_of_week
            # The time at which the billing cycle ends.
            attr_reader :time

            def self.inner_class_types
              @inner_class_types = { time: Time }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Year < Stripe::StripeObject
            class Time < Stripe::StripeObject
              # The hour at which the billing cycle ends.
              # This must be an integer between 0 and 23, inclusive.
              # 0 represents midnight, and 23 represents 11 PM.
              attr_reader :hour
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :minute
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              attr_reader :second

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
            attr_reader :day_of_month
            # The month to bill on from 1-12. If not provided, this will default to the month the cadence was created.
            attr_reader :month_of_year
            # The time at which the billing cycle ends.
            attr_reader :time

            def self.inner_class_types
              @inner_class_types = { time: Time }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The number of intervals (specified in the interval attribute) between cadence billings. For example, type=month and interval_count=3 bills every 3 months.
          attr_reader :interval_count
          # The frequency at which a cadence bills.
          attr_reader :type
          # Specific configuration for determining billing dates when type=day.
          attr_reader :day
          # Specific configuration for determining billing dates when type=month.
          attr_reader :month
          # Specific configuration for determining billing dates when type=week.
          attr_reader :week
          # Specific configuration for determining billing dates when type=year.
          attr_reader :year

          def self.inner_class_types
            @inner_class_types = { day: Day, month: Month, week: Week, year: Year }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class InvoiceDiscountRule < Stripe::StripeObject
          class PercentOff < Stripe::StripeObject
            class MaximumApplications < Stripe::StripeObject
              # Max applications type of this discount, ex: indefinite.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The maximum applications configuration for this discount.
            attr_reader :maximum_applications
            # Percent that will be taken off of the amount. For example, percent_off of 50.0 will make $100 amount $50 instead.
            attr_reader :percent_off

            def self.inner_class_types
              @inner_class_types = { maximum_applications: MaximumApplications }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Unique identifier for the object.
          attr_reader :id
          # The type of the discount.
          attr_reader :type
          # Details if the discount is a percentage off.
          attr_reader :percent_off

          def self.inner_class_types
            @inner_class_types = { percent_off: PercentOff }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Payer < Stripe::StripeObject
          # The ID of the Billing Profile object which determines how a bill will be paid.
          attr_reader :billing_profile
          # The ID of the Customer object.
          attr_reader :customer
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Settings < Stripe::StripeObject
          class Bill < Stripe::StripeObject
            # The ID of the referenced settings object.
            attr_reader :id
            # Returns the Settings Version when the cadence is pinned to a specific version.
            attr_reader :version

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Collection < Stripe::StripeObject
            # The ID of the referenced settings object.
            attr_reader :id
            # Returns the Settings Version when the cadence is pinned to a specific version.
            attr_reader :version

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices.
          attr_reader :bill
          # Settings that configure and manage the behavior of collecting payments.
          attr_reader :collection

          def self.inner_class_types
            @inner_class_types = { bill: Bill, collection: Collection }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing cycle is the object that defines future billing cycle dates.
        attr_reader :billing_cycle
        # Timestamp of when the object was created.
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # The discount rules applied to all invoices for the cadence.
        attr_reader :invoice_discount_rules
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # The date that the billing cadence will next bill. Null if the cadence is not active.
        attr_reader :next_billing_date
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The payer determines the entity financially responsible for the bill.
        attr_reader :payer
        # The settings associated with the cadence.
        attr_reader :settings
        # The current status of the cadence.
        attr_reader :status
        # The ID of the Test Clock.
        attr_reader :test_clock
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            billing_cycle: BillingCycle,
            invoice_discount_rules: InvoiceDiscountRule,
            payer: Payer,
            settings: Settings,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
