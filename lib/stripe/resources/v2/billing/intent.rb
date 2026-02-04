# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class Intent < APIResource
        OBJECT_NAME = "v2.billing.intent"
        def self.object_name
          "v2.billing.intent"
        end

        class AmountDetails < ::Stripe::StripeObject
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          attr_reader :currency
          # Amount of discount applied.
          attr_reader :discount
          # Amount of shipping charges.
          attr_reader :shipping
          # Subtotal amount before tax and discounts.
          attr_reader :subtotal
          # Amount of tax.
          attr_reader :tax
          # Total amount for the Billing Intent.
          attr_reader :total

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Time at which the Billing Intent was canceled.
          attr_reader :canceled_at
          # Time at which the Billing Intent was committed.
          attr_reader :committed_at
          # Time at which the Billing Intent was drafted.
          attr_reader :drafted_at
          # Time at which the Billing Intent was reserved.
          attr_reader :reserved_at

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

            class Month < ::Stripe::StripeObject
              class Time < ::Stripe::StripeObject
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

            class Week < ::Stripe::StripeObject
              class Time < ::Stripe::StripeObject
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

            class Year < ::Stripe::StripeObject
              class Time < ::Stripe::StripeObject
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

          class Payer < ::Stripe::StripeObject
            class BillingProfileData < ::Stripe::StripeObject
              # The customer to associate with the profile.
              attr_reader :customer
              # The default payment method to use when billing this profile.
              # If none is provided, the customer `default_payment_method` will be used.
              attr_reader :default_payment_method

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The ID of the Billing Profile object which determines how a bill will be paid.
            attr_reader :billing_profile
            # Data for creating a new profile.
            attr_reader :billing_profile_data

            def self.inner_class_types
              @inner_class_types = { billing_profile_data: BillingProfileData }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Settings < ::Stripe::StripeObject
            class Bill < ::Stripe::StripeObject
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

            class Collection < ::Stripe::StripeObject
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
          # The billing cycle configuration for this Cadence.
          attr_reader :billing_cycle
          # Information about the payer for this Cadence.
          attr_reader :payer
          # Settings for creating the Cadence.
          attr_reader :settings

          def self.inner_class_types
            @inner_class_types = { billing_cycle: BillingCycle, payer: Payer, settings: Settings }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Breakdown of the amount for this Billing Intent.
        attr_reader :amount_details
        # Time at which the object was created.
        attr_reader :created
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_reader :currency
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Current status of the Billing Intent.
        attr_reader :status
        # Timestamps for status transitions of the Billing Intent.
        attr_reader :status_transitions
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # ID of an existing Cadence to use.
        attr_reader :cadence
        # Data for creating a new Cadence.
        attr_reader :cadence_data

        def self.inner_class_types
          @inner_class_types = {
            amount_details: AmountDetails,
            status_transitions: StatusTransitions,
            cadence_data: CadenceData,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
