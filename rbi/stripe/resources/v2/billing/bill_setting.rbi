# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # BillSetting is responsible for settings which dictate generating bills, which include settings for calculating totals on bills, tax on bill items, as well as how to generate and present invoices.
      class BillSetting < APIResource
        class Calculation < Stripe::StripeObject
          class Tax < Stripe::StripeObject
            # Determines if tax will be calculated automatically based on a PTC or manually based on rules defined by the merchant. Defaults to "manual".
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Settings for calculating tax.
          sig { returns(T.nilable(Tax)) }
          def tax; end
          def self.inner_class_types
            @inner_class_types = {tax: Tax}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Invoice < Stripe::StripeObject
          class TimeUntilDue < Stripe::StripeObject
            # The interval unit for the time until due.
            sig { returns(String) }
            def interval; end
            # The number of interval units. For example, if interval=day and interval_count=30,
            # the invoice will be due in 30 days.
            sig { returns(Integer) }
            def interval_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The amount of time until the invoice will be overdue for payment.
          sig { returns(T.nilable(TimeUntilDue)) }
          def time_until_due; end
          def self.inner_class_types
            @inner_class_types = {time_until_due: TimeUntilDue}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Settings related to calculating a bill.
        sig { returns(T.nilable(Calculation)) }
        def calculation; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # An optional field for adding a display name for the BillSetting object.
        sig { returns(T.nilable(String)) }
        def display_name; end
        # The ID of the BillSetting object.
        sig { returns(String) }
        def id; end
        # Settings related to invoice behavior.
        sig { returns(T.nilable(Invoice)) }
        def invoice; end
        # The ID of the invoice rendering template to be used when generating invoices.
        sig { returns(T.nilable(String)) }
        def invoice_rendering_template; end
        # The latest version of the current settings object. This will be
        # Updated every time an attribute of the settings is updated.
        sig { returns(String) }
        def latest_version; end
        # The current live version of the settings object. This can be different from
        # latest_version if settings are updated without setting live_version='latest'.
        sig { returns(String) }
        def live_version; end
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end