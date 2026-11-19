# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Billing Intent represents a proposed change to a customer's billing configuration, such as subscribing to a new service,
      # modifying an existing subscription, or canceling service. Intents follow a draft-reserve-commit workflow where they can be
      # previewed before committing, allowing you to see the billing impact before changes take effect.
      class Intent < APIResource
        class AmountDetails < ::Stripe::StripeObject
          # The outstanding amount after discount, tax, and customer balance application.
          sig { returns(String) }
          def amount_due; end
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          sig { returns(String) }
          def currency; end
          # The customer's account balance applied to the amount.
          sig { returns(String) }
          def customer_balance_applied; end
          # Amount of discount applied.
          sig { returns(String) }
          def discount; end
          # Amount of shipping charges.
          sig { returns(String) }
          def shipping; end
          # Subtotal amount before tax and discounts.
          sig { returns(String) }
          def subtotal; end
          # Amount of tax.
          sig { returns(String) }
          def tax; end
          # Total amount for the Billing Intent.
          sig { returns(String) }
          def total; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillingGroupData < ::Stripe::StripeObject
          class BillingSettings < ::Stripe::StripeObject
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
              # Controls emails for when the payment is due.
              sig { returns(PaymentDue) }
              def payment_due; end
              def self.inner_class_types
                @inner_class_types = {payment_due: PaymentDue}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class InvoicePresentation < ::Stripe::StripeObject
              # The ID of the invoice rendering template to be used when generating invoices.
              sig { returns(T.nilable(String)) }
              def invoice_rendering_template; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class InvoiceTimeUntilDue < ::Stripe::StripeObject
              # The interval unit for the time until due.
              sig { returns(String) }
              def interval; end
              # The number of interval units. For example, if interval=day and interval_count=30, the invoice is due in 30 days.
              sig { returns(Integer) }
              def interval_count; end
              def self.inner_class_types
                @inner_class_types = {}
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
                  def self.field_encodings
                    @field_encodings = {amount: :int64_string}
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
                def self.field_encodings
                  @field_encodings = {
                    mandate_options: {kind: :object, fields: {amount: :int64_string}},
                  }
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
              class Konbini < ::Stripe::StripeObject
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class SepaDebit < ::Stripe::StripeObject
                def self.inner_class_types
                  @inner_class_types = {}
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
              sig { returns(T.nilable(Konbini)) }
              def konbini; end
              # This sub-hash contains details about the SEPA Direct Debit payment method options.
              sig { returns(T.nilable(SepaDebit)) }
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
                  konbini: Konbini,
                  sepa_debit: SepaDebit,
                  us_bank_account: UsBankAccount,
                }
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {
                  card: {
                    kind: :object,
                    fields: {mandate_options: {kind: :object, fields: {amount: :int64_string}}},
                  },
                }
              end
            end
            class Tax < ::Stripe::StripeObject
              # Determines if tax is calculated automatically based on a product tax code or manually based on rules defined by the business.
              sig { returns(String) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # How Stripe collects payment.
            sig { returns(String) }
            def collection_method; end
            # Email delivery setting.
            sig { returns(EmailDelivery) }
            def email_delivery; end
            # Settings for invoice presentation.
            sig { returns(T.nilable(InvoicePresentation)) }
            def invoice_presentation; end
            # The amount of time until the invoice is overdue for payment.
            sig { returns(InvoiceTimeUntilDue) }
            def invoice_time_until_due; end
            # The ID of the payment method configuration, which controls which payment methods are displayed to your customers.
            sig { returns(T.nilable(String)) }
            def payment_method_configuration; end
            # Payment Method specific configuration to be stored on the object.
            sig { returns(T.nilable(PaymentMethodOptions)) }
            def payment_method_options; end
            # Settings for calculating tax.
            sig { returns(Tax) }
            def tax; end
            def self.inner_class_types
              @inner_class_types = {
                email_delivery: EmailDelivery,
                invoice_presentation: InvoicePresentation,
                invoice_time_until_due: InvoiceTimeUntilDue,
                payment_method_options: PaymentMethodOptions,
                tax: Tax,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                payment_method_options: {
                  kind: :object,
                  fields: {
                    card: {
                      kind: :object,
                      fields: {mandate_options: {kind: :object, fields: {amount: :int64_string}}},
                    },
                  },
                },
              }
            end
          end
          class GroupingBehavior < ::Stripe::StripeObject
            class ByCadence < ::Stripe::StripeObject
              class Day < ::Stripe::StripeObject
                class Time < ::Stripe::StripeObject
                  # The hour, from 0 through 23.
                  sig { returns(Integer) }
                  def hour; end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  # The second, from 0 through 59. Defaults to 0.
                  sig { returns(T.nilable(Integer)) }
                  def second; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The time at which the daily grouping interval begins.
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
                  # The hour, from 0 through 23.
                  sig { returns(Integer) }
                  def hour; end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  # The second, from 0 through 59. Defaults to 0.
                  sig { returns(T.nilable(Integer)) }
                  def second; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                sig { returns(T.nilable(Integer)) }
                def day_of_month; end
                # The month of year, from 1 through 12, from which occurrences are calculated.
                sig { returns(T.nilable(Integer)) }
                def month_of_year; end
                # The time at which the monthly grouping interval begins. Defaults to the time the billing group was created, in UTC.
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
                  # The hour, from 0 through 23.
                  sig { returns(Integer) }
                  def hour; end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  # The second, from 0 through 59. Defaults to 0.
                  sig { returns(T.nilable(Integer)) }
                  def second; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The ISO-8601 day of week, from 1 for Monday through 7 for Sunday.
                sig { returns(T.nilable(Integer)) }
                def day_of_week; end
                # The time at which the weekly grouping interval begins.
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
                  # The hour, from 0 through 23.
                  sig { returns(Integer) }
                  def hour; end
                  # The minute, from 0 through 59.
                  sig { returns(Integer) }
                  def minute; end
                  # The second, from 0 through 59. Defaults to 0.
                  sig { returns(T.nilable(Integer)) }
                  def second; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                sig { returns(T.nilable(Integer)) }
                def day_of_month; end
                # The month of year, from 1 through 12.
                sig { returns(T.nilable(Integer)) }
                def month_of_year; end
                # The time at which the yearly grouping interval begins. Defaults to the time the billing group was created, in UTC.
                sig { returns(Time) }
                def time; end
                def self.inner_class_types
                  @inner_class_types = {time: Time}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Timestamp that anchors the recurring grouping cadence.
              sig { returns(T.nilable(String)) }
              def billing_cycle_anchor; end
              # Daily cadence details.
              sig { returns(T.nilable(Day)) }
              def day; end
              # The number of interval units between groups.
              sig { returns(Integer) }
              def interval_count; end
              # Monthly cadence details.
              sig { returns(T.nilable(Month)) }
              def month; end
              # The interval unit for the cadence.
              sig { returns(String) }
              def type; end
              # Weekly cadence details.
              sig { returns(T.nilable(Week)) }
              def week; end
              # Yearly cadence details.
              sig { returns(T.nilable(Year)) }
              def year; end
              def self.inner_class_types
                @inner_class_types = {day: Day, month: Month, week: Week, year: Year}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The cadence configuration when type is `by_cadence`.
            sig { returns(T.nilable(ByCadence)) }
            def by_cadence; end
            # The grouping strategy.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {by_cadence: ByCadence}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Billing setting overrides for the group. If omitted, the applicable defaults are used.
          sig { returns(T.nilable(BillingSettings)) }
          def billing_settings; end
          # The ID of the Customer object whose invoices are grouped.
          sig { returns(String) }
          def customer; end
          # The ID of the PaymentMethod object used by default. If unset, the customer's default payment method is used.
          sig { returns(T.nilable(String)) }
          def default_payment_method; end
          # The strategy used to group member invoices.
          sig { returns(T.nilable(GroupingBehavior)) }
          def grouping_behavior; end
          # An internal key you can use to find a particular billing group. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          def self.inner_class_types
            @inner_class_types = {
              billing_settings: BillingSettings,
              grouping_behavior: GroupingBehavior,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              billing_settings: {
                kind: :object,
                fields: {
                  payment_method_options: {
                    kind: :object,
                    fields: {
                      card: {
                        kind: :object,
                        fields: {mandate_options: {kind: :object, fields: {amount: :int64_string}}},
                      },
                    },
                  },
                },
              },
            }
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Time at which the Billing Intent was canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Time at which the Billing Intent was committed.
          sig { returns(T.nilable(String)) }
          def committed_at; end
          # Time at which the Billing Intent was drafted.
          sig { returns(T.nilable(String)) }
          def drafted_at; end
          # Time at which the Billing Intent expires.
          sig { returns(String) }
          def expires_at; end
          # Time at which the Billing Intent was reserved.
          sig { returns(T.nilable(String)) }
          def reserved_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Breakdown of the amount for this Billing Intent.
        sig { returns(AmountDetails) }
        def amount_details; end
        # ID of an existing Billing Group to use.
        sig { returns(T.nilable(String)) }
        def billing_group; end
        # Data for creating a new Billing Group.
        sig { returns(T.nilable(BillingGroupData)) }
        def billing_group_data; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Current status of the Billing Intent.
        sig { returns(String) }
        def status; end
        # Timestamps for status transitions of the Billing Intent.
        sig { returns(StatusTransitions) }
        def status_transitions; end
      end
    end
  end
end