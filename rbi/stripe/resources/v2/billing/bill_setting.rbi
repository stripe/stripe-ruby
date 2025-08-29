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
            attr_reader :type
          end
          # Settings for calculating tax.
          sig { returns(T.nilable(Tax)) }
          attr_reader :tax
        end
        class Invoice < Stripe::StripeObject
          class TimeUntilDue < Stripe::StripeObject
            # The interval unit for the time until due.
            sig { returns(String) }
            attr_reader :interval
            # The number of interval units. For example, if interval=day and interval_count=30,
            # the invoice will be due in 30 days.
            sig { returns(Integer) }
            attr_reader :interval_count
          end
          # The amount of time until the invoice will be overdue for payment.
          sig { returns(T.nilable(TimeUntilDue)) }
          attr_reader :time_until_due
        end
        # Settings related to calculating a bill.
        sig { returns(T.nilable(Calculation)) }
        attr_reader :calculation
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # An optional field for adding a display name for the BillSetting object.
        sig { returns(T.nilable(String)) }
        attr_reader :display_name
        # The ID of the BillSetting object.
        sig { returns(String) }
        attr_reader :id
        # Settings related to invoice behavior.
        sig { returns(T.nilable(Invoice)) }
        attr_reader :invoice
        # The ID of the invoice rendering template to be used when generating invoices.
        sig { returns(T.nilable(String)) }
        attr_reader :invoice_rendering_template
        # The latest version of the current settings object. This will be
        # Updated every time an attribute of the settings is updated.
        sig { returns(String) }
        attr_reader :latest_version
        # The current live version of the settings object. This can be different from
        # latest_version if settings are updated without setting live_version='latest'.
        sig { returns(String) }
        attr_reader :live_version
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :lookup_key
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end