# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class BillSettingCreateParams < ::Stripe::RequestParams
        class Calculation < ::Stripe::RequestParams
          class Tax < ::Stripe::RequestParams
            # Determines if tax will be calculated automatically based on a PTC or manually based on rules defined by the merchant. Defaults to "manual".
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end
          # Settings for calculating tax.
          attr_accessor :tax

          def initialize(tax: nil)
            @tax = tax
          end
        end

        class Invoice < ::Stripe::RequestParams
          class TimeUntilDue < ::Stripe::RequestParams
            # The interval unit for the time until due.
            attr_accessor :interval
            # The number of interval units. For example, if interval=day and interval_count=30,
            # the invoice will be due in 30 days.
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # The amount of time until the invoice will be overdue for payment.
          attr_accessor :time_until_due

          def initialize(time_until_due: nil)
            @time_until_due = time_until_due
          end
        end
        # Settings related to calculating a bill.
        attr_accessor :calculation
        # An optional customer-facing display name for the CollectionSetting object.
        # Maximum length of 250 characters.
        attr_accessor :display_name
        # Settings related to invoice behavior.
        attr_accessor :invoice
        # The ID of the invoice rendering template to be used when generating invoices.
        attr_accessor :invoice_rendering_template
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        attr_accessor :lookup_key

        def initialize(
          calculation: nil,
          display_name: nil,
          invoice: nil,
          invoice_rendering_template: nil,
          lookup_key: nil
        )
          @calculation = calculation
          @display_name = display_name
          @invoice = invoice
          @invoice_rendering_template = invoice_rendering_template
          @lookup_key = lookup_key
        end
      end
    end
  end
end
