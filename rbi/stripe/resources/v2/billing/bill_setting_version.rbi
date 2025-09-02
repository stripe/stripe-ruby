# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class BillSettingVersion < APIResource
        class Calculation < Stripe::StripeObject
          class Tax < Stripe::StripeObject
            # Determines if tax will be calculated automatically based on a PTC or manually based on rules defined by the merchant. Defaults to "manual".
            sig { returns(String) }
            def type; end
          end
          # Settings for calculating tax.
          sig { returns(T.nilable(Tax)) }
          def tax; end
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
          end
          # The amount of time until the invoice will be overdue for payment.
          sig { returns(T.nilable(TimeUntilDue)) }
          def time_until_due; end
        end
        # Settings related to calculating a bill.
        sig { returns(T.nilable(Calculation)) }
        def calculation; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # The ID of the BillSettingVersion object.
        sig { returns(String) }
        def id; end
        # Settings related to invoice behavior.
        sig { returns(T.nilable(Invoice)) }
        def invoice; end
        # The ID of the invoice rendering template to be used when generating invoices.
        sig { returns(T.nilable(String)) }
        def invoice_rendering_template; end
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