# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Billing Intent represents a proposed change to a customer's billing configuration, such as subscribing to a new service,
      # modifying an existing subscription, or canceling service. Intents follow a draft-reserve-commit workflow where they can be
      # previewed before committing, allowing you to see the billing impact before changes take effect.
      class Intent < APIResource
        OBJECT_NAME = "v2.billing.intent"
        def self.object_name
          "v2.billing.intent"
        end

        class AmountDetails < ::Stripe::StripeObject
          # The outstanding amount after discount, tax, and customer balance application.
          attr_reader :amount_due
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          attr_reader :currency
          # The customer's account balance applied to the amount.
          attr_reader :customer_balance_applied
          # Amount of discount applied.
          attr_reader :discount
          # Amount of shipping charges.
          attr_reader :shipping
          # Subtotal amount before tax and discounts.
          attr_reader :subtotal
          # Amount of tax.
          attr_reader :tax
          # Total amount for the Billing Intent.
          attr_reader :total

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
                attr_reader :enabled
                # If true the payment link to hosted invoice page would be included in email and PDF of the invoice.
                attr_reader :include_payment_link

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Controls emails for when the payment is due.
              attr_reader :payment_due

              def self.inner_class_types
                @inner_class_types = { payment_due: PaymentDue }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class InvoicePresentation < ::Stripe::StripeObject
              # The ID of the invoice rendering template to be used when generating invoices.
              attr_reader :invoice_rendering_template

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class InvoiceTimeUntilDue < ::Stripe::StripeObject
              # The interval unit for the time until due.
              attr_reader :interval
              # The number of interval units. For example, if interval=day and interval_count=30, the invoice is due in 30 days.
              attr_reader :interval_count

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

                  def self.field_encodings
                    @field_encodings = { amount: :int64_string }
                  end
                end
                # Configuration options for setting up an eMandate for cards issued in India.
                attr_reader :mandate_options
                # Selected network to process the payment on. Depends on the available networks of the card.
                attr_reader :network
                # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
                # for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication).
                # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
                # Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
                attr_reader :request_three_d_secure

                def self.inner_class_types
                  @inner_class_types = { mandate_options: MandateOptions }
                end

                def self.field_remappings
                  @field_remappings = {}
                end

                def self.field_encodings
                  @field_encodings = {
                    mandate_options: { kind: :object, fields: { amount: :int64_string } },
                  }
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
                    fields: { mandate_options: { kind: :object, fields: { amount: :int64_string } } },
                  },
                }
              end
            end

            class Tax < ::Stripe::StripeObject
              # Determines if tax is calculated automatically based on a product tax code or manually based on rules defined by the business.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # How Stripe collects payment.
            attr_reader :collection_method
            # Email delivery setting.
            attr_reader :email_delivery
            # Settings for invoice presentation.
            attr_reader :invoice_presentation
            # The amount of time until the invoice is overdue for payment.
            attr_reader :invoice_time_until_due
            # The ID of the payment method configuration, which controls which payment methods are displayed to your customers.
            attr_reader :payment_method_configuration
            # Payment Method specific configuration to be stored on the object.
            attr_reader :payment_method_options
            # Settings for calculating tax.
            attr_reader :tax

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
                      fields: { mandate_options: { kind: :object, fields: { amount: :int64_string } } },
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
                  attr_reader :hour
                  # The minute, from 0 through 59.
                  attr_reader :minute
                  # The second, from 0 through 59. Defaults to 0.
                  attr_reader :second

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The time at which the daily grouping interval begins.
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
                  # The hour, from 0 through 23.
                  attr_reader :hour
                  # The minute, from 0 through 59.
                  attr_reader :minute
                  # The second, from 0 through 59. Defaults to 0.
                  attr_reader :second

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                attr_reader :day_of_month
                # The month of year, from 1 through 12, from which occurrences are calculated.
                attr_reader :month_of_year
                # The time at which the monthly grouping interval begins. Defaults to the time the billing group was created, in UTC.
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
                  # The hour, from 0 through 23.
                  attr_reader :hour
                  # The minute, from 0 through 59.
                  attr_reader :minute
                  # The second, from 0 through 59. Defaults to 0.
                  attr_reader :second

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The ISO-8601 day of week, from 1 for Monday through 7 for Sunday.
                attr_reader :day_of_week
                # The time at which the weekly grouping interval begins.
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
                  # The hour, from 0 through 23.
                  attr_reader :hour
                  # The minute, from 0 through 59.
                  attr_reader :minute
                  # The second, from 0 through 59. Defaults to 0.
                  attr_reader :second

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
                attr_reader :day_of_month
                # The month of year, from 1 through 12.
                attr_reader :month_of_year
                # The time at which the yearly grouping interval begins. Defaults to the time the billing group was created, in UTC.
                attr_reader :time

                def self.inner_class_types
                  @inner_class_types = { time: Time }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Timestamp that anchors the recurring grouping cadence.
              attr_reader :billing_cycle_anchor
              # Daily cadence details.
              attr_reader :day
              # The number of interval units between groups.
              attr_reader :interval_count
              # Monthly cadence details.
              attr_reader :month
              # The interval unit for the cadence.
              attr_reader :type
              # Weekly cadence details.
              attr_reader :week
              # Yearly cadence details.
              attr_reader :year

              def self.inner_class_types
                @inner_class_types = { day: Day, month: Month, week: Week, year: Year }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The cadence configuration when type is `by_cadence`.
            attr_reader :by_cadence
            # The grouping strategy.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { by_cadence: ByCadence }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Billing setting overrides for the group. If omitted, the applicable defaults are used.
          attr_reader :billing_settings
          # The ID of the Customer object whose invoices are grouped.
          attr_reader :customer
          # The ID of the PaymentMethod object used by default. If unset, the customer's default payment method is used.
          attr_reader :default_payment_method
          # The strategy used to group member invoices.
          attr_reader :grouping_behavior
          # An internal key you can use to find a particular billing group. Maximum length of 200 characters.
          attr_reader :lookup_key

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
                        fields: { mandate_options: { kind: :object, fields: { amount: :int64_string } } },
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
          attr_reader :canceled_at
          # Time at which the Billing Intent was committed.
          attr_reader :committed_at
          # Time at which the Billing Intent was drafted.
          attr_reader :drafted_at
          # Time at which the Billing Intent expires.
          attr_reader :expires_at
          # Time at which the Billing Intent was reserved.
          attr_reader :reserved_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Breakdown of the amount for this Billing Intent.
        attr_reader :amount_details
        # ID of an existing Billing Group to use.
        attr_reader :billing_group
        # Data for creating a new Billing Group.
        attr_reader :billing_group_data
        # Time at which the object was created.
        attr_reader :created
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        attr_reader :currency
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Current status of the Billing Intent.
        attr_reader :status
        # Timestamps for status transitions of the Billing Intent.
        attr_reader :status_transitions

        def self.inner_class_types
          @inner_class_types = {
            amount_details: AmountDetails,
            billing_group_data: BillingGroupData,
            status_transitions: StatusTransitions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            billing_group_data: {
              kind: :object,
              fields: {
                billing_settings: {
                  kind: :object,
                  fields: {
                    payment_method_options: {
                      kind: :object,
                      fields: {
                        card: {
                          kind: :object,
                          fields: {
                            mandate_options: { kind: :object, fields: { amount: :int64_string } },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          }
        end
      end
    end
  end
end
