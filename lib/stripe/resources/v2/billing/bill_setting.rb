# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # BillSetting is responsible for settings which dictate generating bills, which include settings for calculating totals on bills, tax on bill items, as well as how to generate and present invoices.
      class BillSetting < APIResource
        OBJECT_NAME = "v2.billing.bill_setting"
        def self.object_name
          "v2.billing.bill_setting"
        end

        class Calculation < Stripe::StripeObject
          class Tax < Stripe::StripeObject
            # Determines if tax will be calculated automatically based on a PTC or manually based on rules defined by the merchant. Defaults to "manual".
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Settings for calculating tax.
          attr_reader :tax

          def self.inner_class_types
            @inner_class_types = { tax: Tax }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Invoice < Stripe::StripeObject
          class TimeUntilDue < Stripe::StripeObject
            # The interval unit for the time until due.
            attr_reader :interval
            # The number of interval units. For example, if interval=day and interval_count=30,
            # the invoice will be due in 30 days.
            attr_reader :interval_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The amount of time until the invoice will be overdue for payment.
          attr_reader :time_until_due

          def self.inner_class_types
            @inner_class_types = { time_until_due: TimeUntilDue }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Settings related to calculating a bill.
        attr_reader :calculation
        # Timestamp of when the object was created.
        attr_reader :created
        # An optional field for adding a display name for the BillSetting object.
        attr_reader :display_name
        # The ID of the BillSetting object.
        attr_reader :id
        # Settings related to invoice behavior.
        attr_reader :invoice
        # The ID of the invoice rendering template to be used when generating invoices.
        attr_reader :invoice_rendering_template
        # The latest version of the current settings object. This will be
        # Updated every time an attribute of the settings is updated.
        attr_reader :latest_version
        # The current live version of the settings object. This can be different from
        # latest_version if settings are updated without setting live_version='latest'.
        attr_reader :live_version
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        attr_reader :lookup_key
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { calculation: Calculation, invoice: Invoice }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
