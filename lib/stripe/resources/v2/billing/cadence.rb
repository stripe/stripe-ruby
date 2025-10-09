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

        class InvoiceDiscountRule < ::Stripe::StripeObject
          class PercentOff < ::Stripe::StripeObject
            class MaximumApplications < ::Stripe::StripeObject
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

        class Payer < ::Stripe::StripeObject
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

        class SettingsData < ::Stripe::StripeObject
          class Bill < ::Stripe::StripeObject
            class Calculation < ::Stripe::StripeObject
              class Tax < ::Stripe::StripeObject
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

            class Invoice < ::Stripe::StripeObject
              class TimeUntilDue < ::Stripe::StripeObject
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
            # Settings related to invoice behavior.
            attr_reader :invoice
            # The ID of the invoice rendering template to be used when generating invoices.
            attr_reader :invoice_rendering_template

            def self.inner_class_types
              @inner_class_types = { calculation: Calculation, invoice: Invoice }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Collection < ::Stripe::StripeObject
            class EmailDelivery < ::Stripe::StripeObject
              class PaymentDue < ::Stripe::StripeObject
                # If true an email for the invoice would be generated and sent out.
                attr_reader :enabled
                # If true the payment link to hosted invocie page would be included in email and PDF of the invoice.
                attr_reader :include_payment_link

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Controls emails for when the payment is due. For example after the invoice is finilized and transition to Open state.
              attr_reader :payment_due

              def self.inner_class_types
                @inner_class_types = { payment_due: PaymentDue }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class PaymentMethodOptions < ::Stripe::StripeObject
              class AcssDebit < ::Stripe::StripeObject
                class MandateOptions < ::Stripe::StripeObject
                  # Transaction type of the mandate.
                  attr_reader :transaction_type

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Additional fields for Mandate creation.
                attr_reader :mandate_options
                # Verification method.
                attr_reader :verification_method

                def self.inner_class_types
                  @inner_class_types = { mandate_options: MandateOptions }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Bancontact < ::Stripe::StripeObject
                # Preferred language of the Bancontact authorization page that the customer is redirected to.
                attr_reader :preferred_language

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Card < ::Stripe::StripeObject
                class MandateOptions < ::Stripe::StripeObject
                  # Amount to be charged for future payments.
                  attr_reader :amount
                  # The AmountType for the mandate. One of `fixed` or `maximum`.
                  attr_reader :amount_type
                  # A description of the mandate that is meant to be displayed to the customer.
                  attr_reader :description

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Configuration options for setting up an eMandate for cards issued in India.
                attr_reader :mandate_options
                # Selected network to process the payment on. Depends on the available networks of the card.
                attr_reader :network
                # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
                # for authentication based on risk level and [other requirements](https://docs.corp.stripe.com/strong-customer-authentication).
                # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
                # Read our guide on [manually requesting 3D Secure](https://docs.corp.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
                attr_reader :request_three_d_secure

                def self.inner_class_types
                  @inner_class_types = { mandate_options: MandateOptions }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CustomerBalance < ::Stripe::StripeObject
                class BankTransfer < ::Stripe::StripeObject
                  class EuBankTransfer < ::Stripe::StripeObject
                    # The desired country code of the bank account information.
                    attr_reader :country

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                  attr_reader :eu_bank_transfer
                  # The bank transfer type that can be used for funding.
                  attr_reader :type

                  def self.inner_class_types
                    @inner_class_types = { eu_bank_transfer: EuBankTransfer }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
                attr_reader :bank_transfer
                # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
                attr_reader :funding_type

                def self.inner_class_types
                  @inner_class_types = { bank_transfer: BankTransfer }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class UsBankAccount < ::Stripe::StripeObject
                class FinancialConnections < ::Stripe::StripeObject
                  class Filters < ::Stripe::StripeObject
                    # The account subcategories to use to filter for selectable accounts.
                    attr_reader :account_subcategories

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Provide filters for the linked accounts that the customer can select for the payment method.
                  attr_reader :filters
                  # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                  attr_reader :permissions
                  # List of data features that you would like to retrieve upon account creation.
                  attr_reader :prefetch

                  def self.inner_class_types
                    @inner_class_types = { filters: Filters }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Additional fields for Financial Connections Session creation.
                attr_reader :financial_connections
                # Verification method.
                attr_reader :verification_method

                def self.inner_class_types
                  @inner_class_types = { financial_connections: FinancialConnections }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
              attr_reader :acss_debit
              # This sub-hash contains details about the Bancontact payment method.
              attr_reader :bancontact
              # This sub-hash contains details about the Card payment method options.
              attr_reader :card
              # This sub-hash contains details about the Bank transfer payment method options.
              attr_reader :customer_balance
              # This sub-hash contains details about the Konbini payment method options.
              attr_reader :konbini
              # This sub-hash contains details about the SEPA Direct Debit payment method options.
              attr_reader :sepa_debit
              # This sub-hash contains details about the ACH direct debit payment method options.
              attr_reader :us_bank_account

              def self.inner_class_types
                @inner_class_types = {
                  acss_debit: AcssDebit,
                  bancontact: Bancontact,
                  card: Card,
                  customer_balance: CustomerBalance,
                  us_bank_account: UsBankAccount,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Either automatic, or send_invoice. When charging automatically, Stripe will attempt to pay this
            # bill at the end of the period using the payment method attached to the payer profile. When sending an invoice,
            # Stripe will email your payer profile an invoice with payment instructions.
            # Defaults to automatic.
            attr_reader :collection_method
            # Email delivery settings.
            attr_reader :email_delivery
            # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
            attr_reader :payment_method_configuration
            # Payment Method specific configuration stored on the object.
            attr_reader :payment_method_options

            def self.inner_class_types
              @inner_class_types = {
                email_delivery: EmailDelivery,
                payment_method_options: PaymentMethodOptions,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Expanded bill settings data with actual configuration values.
          attr_reader :bill
          # Expanded collection settings data with actual configuration values.
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
        # A lookup key used to retrieve cadences dynamically from a static string. Maximum length of 200 characters.
        attr_reader :lookup_key
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
        # Settings data that contains expanded billing settings configuration with actual values.
        attr_reader :settings_data
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
            settings_data: SettingsData,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
