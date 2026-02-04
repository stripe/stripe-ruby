# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class BillSettingCreateParams < ::Stripe::RequestParams
        class Calculation < ::Stripe::RequestParams
          class Tax < ::Stripe::RequestParams
            # Determines if tax will be calculated automatically based on a PTC or manually based on rules defined by the merchant. Defaults to "manual".
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          # Settings for calculating tax.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation::Tax))
           }
          def tax; end
          sig {
            params(_tax: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation::Tax)).returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation::Tax))
           }
          def tax=(_tax); end
          sig {
            params(tax: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation::Tax)).void
           }
          def initialize(tax: nil); end
        end
        class Invoice < ::Stripe::RequestParams
          class TimeUntilDue < ::Stripe::RequestParams
            # The interval unit for the time until due.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of interval units. For example, if interval=day and interval_count=30,
            # the invoice will be due in 30 days.
            sig { returns(Integer) }
            def interval_count; end
            sig { params(_interval_count: Integer).returns(Integer) }
            def interval_count=(_interval_count); end
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # The amount of time until the invoice will be overdue for payment.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice::TimeUntilDue))
           }
          def time_until_due; end
          sig {
            params(_time_until_due: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice::TimeUntilDue)).returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice::TimeUntilDue))
           }
          def time_until_due=(_time_until_due); end
          sig {
            params(time_until_due: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice::TimeUntilDue)).void
           }
          def initialize(time_until_due: nil); end
        end
        # Settings related to calculating a bill.
        sig { returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation)) }
        def calculation; end
        sig {
          params(_calculation: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation)).returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation))
         }
        def calculation=(_calculation); end
        # An optional customer-facing display name for the CollectionSetting object.
        # Maximum length of 250 characters.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # Settings related to invoice behavior.
        sig { returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice)) }
        def invoice; end
        sig {
          params(_invoice: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice)).returns(T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice))
         }
        def invoice=(_invoice); end
        # The ID of the invoice rendering template to be used when generating invoices.
        sig { returns(T.nilable(String)) }
        def invoice_rendering_template; end
        sig { params(_invoice_rendering_template: T.nilable(String)).returns(T.nilable(String)) }
        def invoice_rendering_template=(_invoice_rendering_template); end
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        sig {
          params(calculation: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Calculation), display_name: T.nilable(String), invoice: T.nilable(::Stripe::V2::Billing::BillSettingCreateParams::Invoice), invoice_rendering_template: T.nilable(String), lookup_key: T.nilable(String)).void
         }
        def initialize(
          calculation: nil,
          display_name: nil,
          invoice: nil,
          invoice_rendering_template: nil,
          lookup_key: nil
        ); end
      end
    end
  end
end