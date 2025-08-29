# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class BillSettingService < StripeService
        attr_reader :versions
        class ListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Only return the settings with these lookup_keys, if any exist.
          # You can specify up to 10 lookup_keys.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :lookup_keys
          sig { params(limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void }
          def initialize(limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class Calculation < Stripe::RequestParams
            class Tax < Stripe::RequestParams
              # Determines if tax will be calculated automatically based on a PTC or manually based on rules defined by the merchant. Defaults to "manual".
              sig { returns(String) }
              attr_accessor :type
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            # Settings for calculating tax.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Calculation::Tax))
             }
            attr_accessor :tax
            sig {
              params(tax: T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Calculation::Tax)).void
             }
            def initialize(tax: nil); end
          end
          class Invoice < Stripe::RequestParams
            class TimeUntilDue < Stripe::RequestParams
              # The interval unit for the time until due.
              sig { returns(String) }
              attr_accessor :interval
              # The number of interval units. For example, if interval=day and interval_count=30,
              # the invoice will be due in 30 days.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # The amount of time until the invoice will be overdue for payment.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Invoice::TimeUntilDue))
             }
            attr_accessor :time_until_due
            sig {
              params(time_until_due: T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Invoice::TimeUntilDue)).void
             }
            def initialize(time_until_due: nil); end
          end
          # Settings related to calculating a bill.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Calculation))
           }
          attr_accessor :calculation
          # An optional customer-facing display name for the CollectionSetting object.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # Settings related to invoice behavior.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Invoice))
           }
          attr_accessor :invoice
          # The ID of the invoice rendering template to be used when generating invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_rendering_template
          # A lookup key used to retrieve settings dynamically from a static string.
          # This may be up to 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          sig {
            params(calculation: T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Calculation), display_name: T.nilable(String), invoice: T.nilable(::Stripe::V2::Billing::BillSettingService::CreateParams::Invoice), invoice_rendering_template: T.nilable(String), lookup_key: T.nilable(String)).void
           }
          def initialize(
            calculation: nil,
            display_name: nil,
            invoice: nil,
            invoice_rendering_template: nil,
            lookup_key: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          class Calculation < Stripe::RequestParams
            class Tax < Stripe::RequestParams
              # Determines if tax will be calculated automatically based on a PTC or manually based on rules defined by the merchant. Defaults to "manual".
              sig { returns(String) }
              attr_accessor :type
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            # Settings for calculating tax.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Calculation::Tax))
             }
            attr_accessor :tax
            sig {
              params(tax: T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Calculation::Tax)).void
             }
            def initialize(tax: nil); end
          end
          class Invoice < Stripe::RequestParams
            class TimeUntilDue < Stripe::RequestParams
              # The interval unit for the time until due.
              sig { returns(String) }
              attr_accessor :interval
              # The number of interval units. For example, if interval=day and interval_count=30,
              # the invoice will be due in 30 days.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # The amount of time until the invoice will be overdue for payment.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Invoice::TimeUntilDue))
             }
            attr_accessor :time_until_due
            sig {
              params(time_until_due: T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Invoice::TimeUntilDue)).void
             }
            def initialize(time_until_due: nil); end
          end
          # Settings related to calculating a bill.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Calculation))
           }
          attr_accessor :calculation
          # An optional customer-facing display name for the BillSetting object.
          # To remove the display name, set it to an empty string in the request.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # Settings related to invoice behavior.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Invoice))
           }
          attr_accessor :invoice
          # The ID of the invoice rendering template to be used when generating invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_rendering_template
          # Optionally change the live version of the BillSetting. Providing `live_version = "latest"` will set the
          # BillSetting' `live_version` to its latest version.
          sig { returns(T.nilable(String)) }
          attr_accessor :live_version
          # A lookup key used to retrieve settings dynamically from a static string.
          # This may be up to 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          sig {
            params(calculation: T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Calculation), display_name: T.nilable(String), invoice: T.nilable(::Stripe::V2::Billing::BillSettingService::UpdateParams::Invoice), invoice_rendering_template: T.nilable(String), live_version: T.nilable(String), lookup_key: T.nilable(String)).void
           }
          def initialize(
            calculation: nil,
            display_name: nil,
            invoice: nil,
            invoice_rendering_template: nil,
            live_version: nil,
            lookup_key: nil
          ); end
        end
        # Create a BillSetting object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::BillSettingService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::BillSetting)
         }
        def create(params = {}, opts = {}); end

        # List all BillSetting objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::BillSettingService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a BillSetting object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::BillSettingService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::BillSetting)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update fields on an existing BillSetting object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::BillSettingService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::BillSetting)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end