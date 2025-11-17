# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class Cadence < APIResource
        class BillingCycle < ::Stripe::StripeObject
          class Day < ::Stripe::StripeObject
            class Time < ::Stripe::StripeObject
              # The hour at which the billing cycle ends.
              # This must be an integer between 0 and 23, inclusive.
              # 0 represents midnight, and 23 represents 11 PM.
              sig { returns(Integer) }
              def hour; end
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(Integer) }
              def minute; end
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(T.nilable(Integer)) }
              def second; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The time at which the billing cycle ends.
            sig { returns(Time) }
            def time; end
            def self.inner_class_types
              @inner_class_types = {time: Time}
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
              sig { returns(Integer) }
              def hour; end
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(Integer) }
              def minute; end
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(T.nilable(Integer)) }
              def second; end
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
            sig { returns(Integer) }
            def day_of_month; end
            # The month to anchor the billing on for a type="month" billing cycle from
            # 1-12. Occurrences are calculated from the month anchor.
            sig { returns(T.nilable(Integer)) }
            def month_of_year; end
            # The time at which the billing cycle ends.
            sig { returns(Time) }
            def time; end
            def self.inner_class_types
              @inner_class_types = {time: Time}
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
              sig { returns(Integer) }
              def hour; end
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(Integer) }
              def minute; end
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(T.nilable(Integer)) }
              def second; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The day of the week to bill the type=week billing cycle on.
            # Numbered from 1-7 for Monday to Sunday respectively, based on the ISO-8601 week day numbering.
            sig { returns(Integer) }
            def day_of_week; end
            # The time at which the billing cycle ends.
            sig { returns(Time) }
            def time; end
            def self.inner_class_types
              @inner_class_types = {time: Time}
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
              sig { returns(Integer) }
              def hour; end
              # The minute at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(Integer) }
              def minute; end
              # The second at which the billing cycle ends.
              # Must be an integer between 0 and 59, inclusive.
              sig { returns(T.nilable(Integer)) }
              def second; end
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
            sig { returns(Integer) }
            def day_of_month; end
            # The month to bill on from 1-12. If not provided, this will default to the month the cadence was created.
            sig { returns(Integer) }
            def month_of_year; end
            # The time at which the billing cycle ends.
            sig { returns(Time) }
            def time; end
            def self.inner_class_types
              @inner_class_types = {time: Time}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The number of intervals (specified in the interval attribute) between cadence billings. For example, type=month and interval_count=3 bills every 3 months.
          sig { returns(Integer) }
          def interval_count; end
          # The frequency at which a cadence bills.
          sig { returns(String) }
          def type; end
          # Specific configuration for determining billing dates when type=day.
          sig { returns(T.nilable(Day)) }
          def day; end
          # Specific configuration for determining billing dates when type=month.
          sig { returns(T.nilable(Month)) }
          def month; end
          # Specific configuration for determining billing dates when type=week.
          sig { returns(T.nilable(Week)) }
          def week; end
          # Specific configuration for determining billing dates when type=year.
          sig { returns(T.nilable(Year)) }
          def year; end
          def self.inner_class_types
            @inner_class_types = {day: Day, month: Month, week: Week, year: Year}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Payer < ::Stripe::StripeObject
          # The ID of the Billing Profile object which determines how a bill will be paid.
          sig { returns(String) }
          def billing_profile; end
          # The ID of the Customer object.
          sig { returns(T.nilable(String)) }
          def customer; end
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          sig { returns(String) }
          def type; end
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
            sig { returns(String) }
            def id; end
            # Returns the Settings Version when the cadence is pinned to a specific version.
            sig { returns(T.nilable(String)) }
            def version; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Collection < ::Stripe::StripeObject
            # The ID of the referenced settings object.
            sig { returns(String) }
            def id; end
            # Returns the Settings Version when the cadence is pinned to a specific version.
            sig { returns(T.nilable(String)) }
            def version; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices.
          sig { returns(T.nilable(Bill)) }
          def bill; end
          # Settings that configure and manage the behavior of collecting payments.
          sig { returns(T.nilable(Collection)) }
          def collection; end
          def self.inner_class_types
            @inner_class_types = {bill: Bill, collection: Collection}
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
            class Invoice < ::Stripe::StripeObject
              class TimeUntilDue < ::Stripe::StripeObject
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
            sig { returns(Calculation) }
            def calculation; end
            # Settings related to invoice behavior.
            sig { returns(Invoice) }
            def invoice; end
            # The ID of the invoice rendering template to be used when generating invoices.
            sig { returns(T.nilable(String)) }
            def invoice_rendering_template; end
            def self.inner_class_types
              @inner_class_types = {calculation: Calculation, invoice: Invoice}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Collection < ::Stripe::StripeObject
            class EmailDelivery < ::Stripe::StripeObject
              class PaymentDue < ::Stripe::StripeObject
                # If true an email for the invoice would be generated and sent out.
                sig { returns(T::Boolean) }
                def enabled; end
                # If true the payment link to hosted invoice page would be included in email and PDF of the invoice.
                sig { returns(T::Boolean) }
                def include_payment_link; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Controls emails for when the payment is due. For example after the invoice is finalized and transitions to Open state.
              sig { returns(T.nilable(PaymentDue)) }
              def payment_due; end
              def self.inner_class_types
                @inner_class_types = {payment_due: PaymentDue}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class PaymentMethodOptions < ::Stripe::StripeObject
              class AcssDebit < ::Stripe::StripeObject
                class MandateOptions < ::Stripe::StripeObject
                  # Transaction type of the mandate.
                  sig { returns(T.nilable(String)) }
                  def transaction_type; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Additional fields for Mandate creation.
                sig { returns(T.nilable(MandateOptions)) }
                def mandate_options; end
                # Verification method.
                sig { returns(T.nilable(String)) }
                def verification_method; end
                def self.inner_class_types
                  @inner_class_types = {mandate_options: MandateOptions}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class Bancontact < ::Stripe::StripeObject
                # Preferred language of the Bancontact authorization page that the customer is redirected to.
                sig { returns(T.nilable(String)) }
                def preferred_language; end
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
                  sig { returns(T.nilable(Integer)) }
                  def amount; end
                  # The AmountType for the mandate. One of `fixed` or `maximum`.
                  sig { returns(T.nilable(String)) }
                  def amount_type; end
                  # A description of the mandate that is meant to be displayed to the customer.
                  sig { returns(T.nilable(String)) }
                  def description; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Configuration options for setting up an eMandate for cards issued in India.
                sig { returns(T.nilable(MandateOptions)) }
                def mandate_options; end
                # Selected network to process the payment on. Depends on the available networks of the card.
                sig { returns(T.nilable(String)) }
                def network; end
                # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
                # for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication).
                # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
                # Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
                sig { returns(T.nilable(String)) }
                def request_three_d_secure; end
                def self.inner_class_types
                  @inner_class_types = {mandate_options: MandateOptions}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class CustomerBalance < ::Stripe::StripeObject
                class BankTransfer < ::Stripe::StripeObject
                  class EuBankTransfer < ::Stripe::StripeObject
                    # The desired country code of the bank account information.
                    sig { returns(String) }
                    def country; end
                    def self.inner_class_types
                      @inner_class_types = {}
                    end
                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                  sig { returns(T.nilable(EuBankTransfer)) }
                  def eu_bank_transfer; end
                  # The bank transfer type that can be used for funding.
                  sig { returns(T.nilable(String)) }
                  def type; end
                  def self.inner_class_types
                    @inner_class_types = {eu_bank_transfer: EuBankTransfer}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
                sig { returns(T.nilable(BankTransfer)) }
                def bank_transfer; end
                # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
                sig { returns(T.nilable(String)) }
                def funding_type; end
                def self.inner_class_types
                  @inner_class_types = {bank_transfer: BankTransfer}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class UsBankAccount < ::Stripe::StripeObject
                class FinancialConnections < ::Stripe::StripeObject
                  class Filters < ::Stripe::StripeObject
                    # The account subcategories to use to filter for selectable accounts.
                    sig { returns(T::Array[String]) }
                    def account_subcategories; end
                    def self.inner_class_types
                      @inner_class_types = {}
                    end
                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Provide filters for the linked accounts that the customer can select for the payment method.
                  sig { returns(T.nilable(Filters)) }
                  def filters; end
                  # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                  sig { returns(T::Array[String]) }
                  def permissions; end
                  # List of data features that you would like to retrieve upon account creation.
                  sig { returns(T::Array[String]) }
                  def prefetch; end
                  def self.inner_class_types
                    @inner_class_types = {filters: Filters}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Additional fields for Financial Connections Session creation.
                sig { returns(FinancialConnections) }
                def financial_connections; end
                # Verification method.
                sig { returns(String) }
                def verification_method; end
                def self.inner_class_types
                  @inner_class_types = {financial_connections: FinancialConnections}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
              sig { returns(T.nilable(AcssDebit)) }
              def acss_debit; end
              # This sub-hash contains details about the Bancontact payment method.
              sig { returns(T.nilable(Bancontact)) }
              def bancontact; end
              # This sub-hash contains details about the Card payment method options.
              sig { returns(T.nilable(Card)) }
              def card; end
              # This sub-hash contains details about the Bank transfer payment method options.
              sig { returns(T.nilable(CustomerBalance)) }
              def customer_balance; end
              # This sub-hash contains details about the Konbini payment method options.
              sig { returns(T.nilable(T::Hash[String, T.untyped])) }
              def konbini; end
              # This sub-hash contains details about the SEPA Direct Debit payment method options.
              sig { returns(T.nilable(T::Hash[String, T.untyped])) }
              def sepa_debit; end
              # This sub-hash contains details about the ACH direct debit payment method options.
              sig { returns(T.nilable(UsBankAccount)) }
              def us_bank_account; end
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
            sig { returns(String) }
            def collection_method; end
            # Email delivery settings.
            sig { returns(EmailDelivery) }
            def email_delivery; end
            # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
            sig { returns(String) }
            def payment_method_configuration; end
            # Payment Method specific configuration stored on the object.
            sig { returns(PaymentMethodOptions) }
            def payment_method_options; end
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
          sig { returns(Bill) }
          def bill; end
          # Expanded collection settings data with actual configuration values.
          sig { returns(Collection) }
          def collection; end
          def self.inner_class_types
            @inner_class_types = {bill: Bill, collection: Collection}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing cycle is the object that defines future billing cycle dates.
        sig { returns(BillingCycle) }
        def billing_cycle; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # A lookup key used to retrieve cadences dynamically from a static string. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # The date that the billing cadence will next bill. Null if the cadence is not active.
        sig { returns(T.nilable(String)) }
        def next_billing_date; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The payer determines the entity financially responsible for the bill.
        sig { returns(Payer) }
        def payer; end
        # The settings associated with the cadence.
        sig { returns(T.nilable(Settings)) }
        def settings; end
        # Settings data that contains expanded billing settings configuration with actual values.
        sig { returns(T.nilable(SettingsData)) }
        def settings_data; end
        # The current status of the cadence.
        sig { returns(String) }
        def status; end
        # The ID of the Test Clock.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end