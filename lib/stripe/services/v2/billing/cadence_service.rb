# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CadenceService < StripeService
        class ListParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Customer object. If provided, only cadences that specifically reference the provided customer ID will be returned.
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            attr_accessor :type

            def initialize(customer: nil, type: nil)
              @customer = customer
              @type = type
            end
          end
          # Additional resource to include in the response.
          attr_accessor :include
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit
          # If provided, only cadences that specifically reference the payer will be returned. Mutually exclusive with `test_clock`.
          attr_accessor :payer
          # If provided, only cadences that specifically reference the provided test clock ID (via the
          # customer's test clock) will be returned.
          # Mutually exclusive with `payer`.
          attr_accessor :test_clock

          def initialize(include: nil, limit: nil, payer: nil, test_clock: nil)
            @include = include
            @limit = limit
            @payer = payer
            @test_clock = test_clock
          end
        end

        class CreateParams < Stripe::RequestParams
          class BillingCycle < Stripe::RequestParams
            class Day < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(time: nil)
                @time = time
              end
            end

            class Month < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              attr_accessor :day_of_month
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(day_of_month: nil, time: nil)
                @day_of_month = day_of_month
                @time = time
              end
            end

            class Week < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The day of the week to bill the type=week billing cycle on.
              # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601
              # week day numbering. If not provided, this will default to the day the
              # cadence was created.
              attr_accessor :day_of_week
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(day_of_week: nil, time: nil)
                @day_of_week = day_of_week
                @time = time
              end
            end

            class Year < Stripe::RequestParams
              class Time < Stripe::RequestParams
                # The hour at which the billing cycle ends.
                # This must be an integer between 0 and 23, inclusive.
                # 0 represents midnight, and 23 represents 11 PM.
                attr_accessor :hour
                # The minute at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :minute
                # The second at which the billing cycle ends.
                # Must be an integer between 0 and 59, inclusive.
                attr_accessor :second

                def initialize(hour: nil, minute: nil, second: nil)
                  @hour = hour
                  @minute = minute
                  @second = second
                end
              end
              # The day to anchor the billing on for a type="month" billing cycle from
              # 1-31. If this number is greater than the number of days in the month being
              # billed, this will anchor to the last day of the month. If not provided,
              # this will default to the day the cadence was created.
              attr_accessor :day_of_month
              # The month to bill on from 1-12. If not provided, this will default to the
              # month the cadence was created.
              attr_accessor :month_of_year
              # The time at which the billing cycle ends.
              # This field is optional, and if not provided, it will default to
              # the time at which the cadence was created in UTC timezone.
              attr_accessor :time

              def initialize(day_of_month: nil, month_of_year: nil, time: nil)
                @day_of_month = day_of_month
                @month_of_year = month_of_year
                @time = time
              end
            end
            # The number of intervals (specified in the interval attribute) between
            # cadence billings. For example, type=month and interval_count=3 bills every
            # 3 months. If this is not provided, it will default to 1.
            attr_accessor :interval_count
            # The frequency at which a cadence bills.
            attr_accessor :type
            # Specific configuration for determining billing dates when type=day.
            attr_accessor :day
            # Specific configuration for determining billing dates when type=month.
            attr_accessor :month
            # Specific configuration for determining billing dates when type=week.
            attr_accessor :week
            # Specific configuration for determining billing dates when type=year.
            attr_accessor :year

            def initialize(
              interval_count: nil,
              type: nil,
              day: nil,
              month: nil,
              week: nil,
              year: nil
            )
              @interval_count = interval_count
              @type = type
              @day = day
              @month = month
              @week = week
              @year = year
            end
          end

          class Payer < Stripe::RequestParams
            # The ID of the Billing Profile object which determines how a bill will be paid. If provided, the created cadence will be
            # associated with the provided Billing Profile. If not provided, a new Billing Profile will be created and associated with the cadence.
            attr_accessor :billing_profile
            # The ID of the Customer object.
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            attr_accessor :type

            def initialize(billing_profile: nil, customer: nil, type: nil)
              @billing_profile = billing_profile
              @customer = customer
              @type = type
            end
          end

          class Settings < Stripe::RequestParams
            class Bill < Stripe::RequestParams
              # The ID of the referenced settings object.
              attr_accessor :id
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              attr_accessor :version

              def initialize(id: nil, version: nil)
                @id = id
                @version = version
              end
            end

            class Collection < Stripe::RequestParams
              # The ID of the referenced settings object.
              attr_accessor :id
              # An optional field to specify the version of the Settings to use.
              # If not provided, this will always default to the live version any time the settings are used.
              attr_accessor :version

              def initialize(id: nil, version: nil)
                @id = id
                @version = version
              end
            end
            # Settings that configure bill generation, which includes calculating totals, tax, and presenting invoices.
            # If no setting is provided here, the settings from the customer referenced on the payer will be used.
            # If no customer settings are present, the merchant default settings will be used.
            attr_accessor :bill
            # Settings that configure and manage the behavior of collecting payments.
            # If no setting is provided here, the settings from the customer referenced from the payer will be used if they exist.
            # If no customer settings are present, the merchant default settings will be used.
            attr_accessor :collection

            def initialize(bill: nil, collection: nil)
              @bill = bill
              @collection = collection
            end
          end
          # The billing cycle is the object that defines future billing cycle dates.
          attr_accessor :billing_cycle
          # Additional resource to include in the response.
          attr_accessor :include
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The payer determines the entity financially responsible for the bill.
          attr_accessor :payer
          # The settings associated with the cadence.
          attr_accessor :settings

          def initialize(billing_cycle: nil, include: nil, metadata: nil, payer: nil, settings: nil)
            @billing_cycle = billing_cycle
            @include = include
            @metadata = metadata
            @payer = payer
            @settings = settings
          end
        end

        class RetrieveParams < Stripe::RequestParams
          # Additional resource to include in the response.
          attr_accessor :include

          def initialize(include: nil)
            @include = include
          end
        end

        class UpdateParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Billing Profile object which determines how a bill will be paid.
            attr_accessor :billing_profile

            def initialize(billing_profile: nil)
              @billing_profile = billing_profile
            end
          end

          class Settings < Stripe::RequestParams
            class Bill < Stripe::RequestParams
              # The ID of the referenced settings object.
              attr_accessor :id
              # An optional field to specify the version of Settings to use.
              # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
              # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
              # To clear a pinned version, set the version to null.
              attr_accessor :version

              def initialize(id: nil, version: nil)
                @id = id
                @version = version
              end
            end

            class Collection < Stripe::RequestParams
              # The ID of the referenced settings object.
              attr_accessor :id
              # An optional field to specify the version of Settings to use.
              # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
              # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
              # To clear a pinned version, set the version to null.
              attr_accessor :version

              def initialize(id: nil, version: nil)
                @id = id
                @version = version
              end
            end
            # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices. If null is provided, the current bill settings will be removed from the billing cadence.
            attr_accessor :bill
            # Settings that configure and manage the behavior of collecting payments. If null is provided, the current collection settings will be removed from the billing cadence.
            attr_accessor :collection

            def initialize(bill: nil, collection: nil)
              @bill = bill
              @collection = collection
            end
          end
          # Additional resource to include in the response.
          attr_accessor :include
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The payer determines the entity financially responsible for the bill.
          attr_accessor :payer
          # The settings associated with the cadence.
          attr_accessor :settings

          def initialize(include: nil, metadata: nil, payer: nil, settings: nil)
            @include = include
            @metadata = metadata
            @payer = payer
            @settings = settings
          end
        end

        class CancelParams < Stripe::RequestParams
          # Additional resource to include in the response.
          attr_accessor :include

          def initialize(include: nil)
            @include = include
          end
        end

        # Cancel the Billing Cadence.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/cadences/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a Billing Cadence object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/cadences",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List Billing Cadences.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/cadences",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Billing Cadence object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/cadences/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a Billing Cadence object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/cadences/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
