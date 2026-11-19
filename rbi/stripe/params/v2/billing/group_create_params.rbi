# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class GroupCreateParams < ::Stripe::RequestParams
        class BillingSettings < ::Stripe::RequestParams
          class EmailDelivery < ::Stripe::RequestParams
            class PaymentDue < ::Stripe::RequestParams
              # If true an email for the invoice would be generated and sent out.
              sig { returns(T.nilable(T::Boolean)) }
              def enabled; end
              sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def enabled=(_enabled); end
              # If true the payment link to hosted invoice page would be included in email and PDF of the invoice.
              sig { returns(T.nilable(T::Boolean)) }
              def include_payment_link; end
              sig {
                params(_include_payment_link: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
               }
              def include_payment_link=(_include_payment_link); end
              sig {
                params(enabled: T.nilable(T::Boolean), include_payment_link: T.nilable(T::Boolean)).void
               }
              def initialize(enabled: nil, include_payment_link: nil); end
            end
            # Controls emails for when the payment is due. Omit to use the applicable default.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery::PaymentDue))
             }
            def payment_due; end
            sig {
              params(_payment_due: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery::PaymentDue)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery::PaymentDue))
             }
            def payment_due=(_payment_due); end
            sig {
              params(payment_due: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery::PaymentDue)).void
             }
            def initialize(payment_due: nil); end
          end
          class InvoicePresentation < ::Stripe::RequestParams
            # The ID of the invoice rendering template to be used when generating invoices. Omit to use the applicable default.
            sig { returns(T.nilable(String)) }
            def invoice_rendering_template; end
            sig {
              params(_invoice_rendering_template: T.nilable(String)).returns(T.nilable(String))
             }
            def invoice_rendering_template=(_invoice_rendering_template); end
            sig { params(invoice_rendering_template: T.nilable(String)).void }
            def initialize(invoice_rendering_template: nil); end
          end
          class InvoiceTimeUntilDue < ::Stripe::RequestParams
            # The interval unit for the time until due.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of interval units. For example, if interval=day and interval_count=30, the invoice is due in 30 days.
            sig { returns(Integer) }
            def interval_count; end
            sig { params(_interval_count: Integer).returns(Integer) }
            def interval_count=(_interval_count); end
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          class PaymentMethodOptions < ::Stripe::RequestParams
            class AcssDebit < ::Stripe::RequestParams
              class MandateOptions < ::Stripe::RequestParams
                # Transaction type of the mandate.
                sig { returns(T.nilable(String)) }
                def transaction_type; end
                sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
                def transaction_type=(_transaction_type); end
                sig { params(transaction_type: T.nilable(String)).void }
                def initialize(transaction_type: nil); end
              end
              # Additional fields for Mandate creation.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              def mandate_options; end
              sig {
                params(_mandate_options: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              def mandate_options=(_mandate_options); end
              # Verification method.
              sig { returns(T.nilable(String)) }
              def verification_method; end
              sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
              def verification_method=(_verification_method); end
              sig {
                params(mandate_options: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, verification_method: nil); end
            end
            class Bancontact < ::Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              def preferred_language; end
              sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
              def preferred_language=(_preferred_language); end
              sig { params(preferred_language: T.nilable(String)).void }
              def initialize(preferred_language: nil); end
            end
            class Card < ::Stripe::RequestParams
              class MandateOptions < ::Stripe::RequestParams
                # Amount to be charged for future payments.
                sig { returns(T.nilable(Integer)) }
                def amount; end
                sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def amount=(_amount); end
                # The AmountType for the mandate. One of `fixed` or `maximum`.
                sig { returns(T.nilable(String)) }
                def amount_type; end
                sig { params(_amount_type: T.nilable(String)).returns(T.nilable(String)) }
                def amount_type=(_amount_type); end
                # A description of the mandate that is meant to be displayed to the customer.
                sig { returns(T.nilable(String)) }
                def description; end
                sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
                def description=(_description); end
                sig {
                  params(amount: T.nilable(Integer), amount_type: T.nilable(String), description: T.nilable(String)).void
                 }
                def initialize(amount: nil, amount_type: nil, description: nil); end
                def self.field_encodings
                  @field_encodings = {amount: :int64_string}
                end
              end
              # Configuration options for setting up an eMandate for cards issued in India.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card::MandateOptions))
               }
              def mandate_options; end
              sig {
                params(_mandate_options: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card::MandateOptions))
               }
              def mandate_options=(_mandate_options); end
              # Selected network to process the payment on. Depends on the available networks of the card.
              sig { returns(T.nilable(String)) }
              def network; end
              sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
              def network=(_network); end
              # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
              # for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication).
              # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
              # Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
              sig { returns(T.nilable(String)) }
              def request_three_d_secure; end
              sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
              def request_three_d_secure=(_request_three_d_secure); end
              sig {
                params(mandate_options: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card::MandateOptions), network: T.nilable(String), request_three_d_secure: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil); end
              def self.field_encodings
                @field_encodings = {
                  mandate_options: {kind: :object, fields: {amount: :int64_string}},
                }
              end
            end
            class CustomerBalance < ::Stripe::RequestParams
              class BankTransfer < ::Stripe::RequestParams
                class EuBankTransfer < ::Stripe::RequestParams
                  # The desired country code of the bank account information.
                  sig { returns(String) }
                  def country; end
                  sig { params(_country: String).returns(String) }
                  def country=(_country); end
                  sig { params(country: String).void }
                  def initialize(country: nil); end
                end
                # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                def eu_bank_transfer; end
                sig {
                  params(_eu_bank_transfer: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                def eu_bank_transfer=(_eu_bank_transfer); end
                # The bank transfer type that can be used for funding.
                sig { returns(T.nilable(String)) }
                def type; end
                sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
                def type=(_type); end
                sig {
                  params(eu_bank_transfer: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), type: T.nilable(String)).void
                 }
                def initialize(eu_bank_transfer: nil, type: nil); end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              def bank_transfer; end
              sig {
                params(_bank_transfer: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              def bank_transfer=(_bank_transfer); end
              # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
              sig { returns(T.nilable(String)) }
              def funding_type; end
              sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
              def funding_type=(_funding_type); end
              sig {
                params(bank_transfer: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String)).void
               }
              def initialize(bank_transfer: nil, funding_type: nil); end
            end
            class Konbini < ::Stripe::RequestParams; end
            class SepaDebit < ::Stripe::RequestParams; end
            class UsBankAccount < ::Stripe::RequestParams
              class FinancialConnections < ::Stripe::RequestParams
                class Filters < ::Stripe::RequestParams
                  # The account subcategories to use to filter for selectable accounts.
                  sig { returns(T.nilable(T::Array[String])) }
                  def account_subcategories; end
                  sig {
                    params(_account_subcategories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                   }
                  def account_subcategories=(_account_subcategories); end
                  sig { params(account_subcategories: T.nilable(T::Array[String])).void }
                  def initialize(account_subcategories: nil); end
                end
                # Provide filters for the linked accounts that the customer can select for the payment method.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
                 }
                def filters; end
                sig {
                  params(_filters: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
                 }
                def filters=(_filters); end
                # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                sig { returns(T.nilable(T::Array[String])) }
                def permissions; end
                sig {
                  params(_permissions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def permissions=(_permissions); end
                # List of data features that you would like to retrieve upon account creation.
                sig { returns(T.nilable(T::Array[String])) }
                def prefetch; end
                sig {
                  params(_prefetch: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def prefetch=(_prefetch); end
                sig {
                  params(filters: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
                 }
                def initialize(filters: nil, permissions: nil, prefetch: nil); end
              end
              # Additional fields for Financial Connections Session creation.
              sig {
                returns(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections)
               }
              def financial_connections; end
              sig {
                params(_financial_connections: ::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections).returns(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections)
               }
              def financial_connections=(_financial_connections); end
              # Verification method.
              sig { returns(String) }
              def verification_method; end
              sig { params(_verification_method: String).returns(String) }
              def verification_method=(_verification_method); end
              sig {
                params(financial_connections: ::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections, verification_method: String).void
               }
              def initialize(financial_connections: nil, verification_method: nil); end
            end
            # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit))
             }
            def acss_debit; end
            sig {
              params(_acss_debit: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit))
             }
            def acss_debit=(_acss_debit); end
            # This sub-hash contains details about the Bancontact payment method.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Bancontact))
             }
            def bancontact; end
            sig {
              params(_bancontact: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Bancontact)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Bancontact))
             }
            def bancontact=(_bancontact); end
            # This sub-hash contains details about the Card payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card))
             }
            def card; end
            sig {
              params(_card: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card))
             }
            def card=(_card); end
            # This sub-hash contains details about the Bank transfer payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance))
             }
            def customer_balance; end
            sig {
              params(_customer_balance: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance))
             }
            def customer_balance=(_customer_balance); end
            # This sub-hash contains details about the Konbini payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Konbini))
             }
            def konbini; end
            sig {
              params(_konbini: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Konbini)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Konbini))
             }
            def konbini=(_konbini); end
            # This sub-hash contains details about the SEPA Direct Debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::SepaDebit))
             }
            def sepa_debit; end
            sig {
              params(_sepa_debit: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::SepaDebit)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::SepaDebit))
             }
            def sepa_debit=(_sepa_debit); end
            # This sub-hash contains details about the ACH direct debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount))
             }
            def us_bank_account; end
            sig {
              params(_us_bank_account: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount))
             }
            def us_bank_account=(_us_bank_account); end
            sig {
              params(acss_debit: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::AcssDebit), bancontact: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::CustomerBalance), konbini: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::Konbini), sepa_debit: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions::UsBankAccount)).void
             }
            def initialize(
              acss_debit: nil,
              bancontact: nil,
              card: nil,
              customer_balance: nil,
              konbini: nil,
              sepa_debit: nil,
              us_bank_account: nil
            ); end
            def self.field_encodings
              @field_encodings = {
                card: {
                  kind: :object,
                  fields: {mandate_options: {kind: :object, fields: {amount: :int64_string}}},
                },
              }
            end
          end
          class Tax < ::Stripe::RequestParams
            # Determines if tax is calculated automatically based on a product tax code or manually based on rules defined by the business. Omit to use the applicable default.
            sig { returns(T.nilable(String)) }
            def type; end
            sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
            def type=(_type); end
            sig { params(type: T.nilable(String)).void }
            def initialize(type: nil); end
          end
          # How Stripe collects payment.
          sig { returns(T.nilable(String)) }
          def collection_method; end
          sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
          def collection_method=(_collection_method); end
          # Email delivery setting.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery))
           }
          def email_delivery; end
          sig {
            params(_email_delivery: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery))
           }
          def email_delivery=(_email_delivery); end
          # Settings for invoice presentation.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoicePresentation))
           }
          def invoice_presentation; end
          sig {
            params(_invoice_presentation: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoicePresentation)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoicePresentation))
           }
          def invoice_presentation=(_invoice_presentation); end
          # The amount of time until the invoice is overdue for payment.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoiceTimeUntilDue))
           }
          def invoice_time_until_due; end
          sig {
            params(_invoice_time_until_due: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoiceTimeUntilDue)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoiceTimeUntilDue))
           }
          def invoice_time_until_due=(_invoice_time_until_due); end
          # The ID of the payment method configuration, which controls which payment methods are displayed to your customers.
          sig { returns(T.nilable(String)) }
          def payment_method_configuration; end
          sig {
            params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String))
           }
          def payment_method_configuration=(_payment_method_configuration); end
          # Payment Method specific configuration to be stored on the object.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions))
           }
          def payment_method_options; end
          sig {
            params(_payment_method_options: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions))
           }
          def payment_method_options=(_payment_method_options); end
          # Settings for calculating tax.
          sig { returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::Tax)) }
          def tax; end
          sig {
            params(_tax: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::Tax)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::Tax))
           }
          def tax=(_tax); end
          sig {
            params(collection_method: T.nilable(String), email_delivery: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::EmailDelivery), invoice_presentation: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoicePresentation), invoice_time_until_due: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::InvoiceTimeUntilDue), payment_method_configuration: T.nilable(String), payment_method_options: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::PaymentMethodOptions), tax: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings::Tax)).void
           }
          def initialize(
            collection_method: nil,
            email_delivery: nil,
            invoice_presentation: nil,
            invoice_time_until_due: nil,
            payment_method_configuration: nil,
            payment_method_options: nil,
            tax: nil
          ); end
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
        class GroupingBehavior < ::Stripe::RequestParams
          class ByCadence < ::Stripe::RequestParams
            class Day < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour, from 0 through 23.
                sig { returns(Integer) }
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute, from 0 through 59.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second, from 0 through 59.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The time at which the daily grouping interval begins.
              sig {
                returns(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day::Time)
               }
              def time; end
              sig {
                params(_time: ::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day::Time).returns(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day::Time)
               }
              def time=(_time); end
              sig {
                params(time: ::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day::Time).void
               }
              def initialize(time: nil); end
            end
            class Month < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour, from 0 through 23.
                sig { returns(Integer) }
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute, from 0 through 59.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second, from 0 through 59.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
              sig { returns(Integer) }
              def day_of_month; end
              sig { params(_day_of_month: Integer).returns(Integer) }
              def day_of_month=(_day_of_month); end
              # The month of year, from 1 through 12, from which occurrences are calculated. Defaults to the month when the billing group was created.
              sig { returns(T.nilable(Integer)) }
              def month_of_year; end
              sig { params(_month_of_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def month_of_year=(_month_of_year); end
              # The time at which the monthly grouping interval begins. Defaults to the time the billing group is created, in UTC.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month::Time))
               }
              def time; end
              sig {
                params(_time: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month::Time)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month::Time))
               }
              def time=(_time); end
              sig {
                params(day_of_month: Integer, month_of_year: T.nilable(Integer), time: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month::Time)).void
               }
              def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
            end
            class Week < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour, from 0 through 23.
                sig { returns(Integer) }
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute, from 0 through 59.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second, from 0 through 59.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The ISO-8601 day of week, from 1 for Monday through 7 for Sunday.
              sig { returns(Integer) }
              def day_of_week; end
              sig { params(_day_of_week: Integer).returns(Integer) }
              def day_of_week=(_day_of_week); end
              # The time at which the weekly grouping interval begins. Defaults to the time the billing group is created, in UTC.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week::Time))
               }
              def time; end
              sig {
                params(_time: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week::Time)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week::Time))
               }
              def time=(_time); end
              sig {
                params(day_of_week: Integer, time: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week::Time)).void
               }
              def initialize(day_of_week: nil, time: nil); end
            end
            class Year < ::Stripe::RequestParams
              class Time < ::Stripe::RequestParams
                # The hour, from 0 through 23.
                sig { returns(Integer) }
                def hour; end
                sig { params(_hour: Integer).returns(Integer) }
                def hour=(_hour); end
                # The minute, from 0 through 59.
                sig { returns(Integer) }
                def minute; end
                sig { params(_minute: Integer).returns(Integer) }
                def minute=(_minute); end
                # The second, from 0 through 59.
                sig { returns(Integer) }
                def second; end
                sig { params(_second: Integer).returns(Integer) }
                def second=(_second); end
                sig { params(hour: Integer, minute: Integer, second: Integer).void }
                def initialize(hour: nil, minute: nil, second: nil); end
              end
              # The day of month, from 1 through 31. For shorter months, the cadence anchors to the month's last day.
              sig { returns(Integer) }
              def day_of_month; end
              sig { params(_day_of_month: Integer).returns(Integer) }
              def day_of_month=(_day_of_month); end
              # The month of year, from 1 through 12.
              sig { returns(Integer) }
              def month_of_year; end
              sig { params(_month_of_year: Integer).returns(Integer) }
              def month_of_year=(_month_of_year); end
              # The time at which the yearly grouping interval begins. Defaults to the time the billing group is created, in UTC.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year::Time))
               }
              def time; end
              sig {
                params(_time: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year::Time)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year::Time))
               }
              def time=(_time); end
              sig {
                params(day_of_month: Integer, month_of_year: Integer, time: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year::Time)).void
               }
              def initialize(day_of_month: nil, month_of_year: nil, time: nil); end
            end
            # Timestamp that anchors the recurring grouping cadence.
            sig { returns(T.nilable(String)) }
            def billing_cycle_anchor; end
            sig { params(_billing_cycle_anchor: T.nilable(String)).returns(T.nilable(String)) }
            def billing_cycle_anchor=(_billing_cycle_anchor); end
            # Daily cadence details.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day))
             }
            def day; end
            sig {
              params(_day: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day))
             }
            def day=(_day); end
            # The number of interval units between groups. Defaults to 1.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            # Monthly cadence details.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month))
             }
            def month; end
            sig {
              params(_month: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month))
             }
            def month=(_month); end
            # The interval unit for the cadence.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # Weekly cadence details.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week))
             }
            def week; end
            sig {
              params(_week: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week))
             }
            def week=(_week); end
            # Yearly cadence details.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year))
             }
            def year; end
            sig {
              params(_year: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year))
             }
            def year=(_year); end
            sig {
              params(billing_cycle_anchor: T.nilable(String), day: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Day), interval_count: T.nilable(Integer), month: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Month), type: String, week: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Week), year: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence::Year)).void
             }
            def initialize(
              billing_cycle_anchor: nil,
              day: nil,
              interval_count: nil,
              month: nil,
              type: nil,
              week: nil,
              year: nil
            ); end
          end
          # The cadence configuration when type is `by_cadence`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence))
           }
          def by_cadence; end
          sig {
            params(_by_cadence: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence))
           }
          def by_cadence=(_by_cadence); end
          # The grouping strategy.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(by_cadence: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior::ByCadence), type: String).void
           }
          def initialize(by_cadence: nil, type: nil); end
        end
        # Billing setting overrides for the group. If omitted, the applicable defaults are used.
        sig { returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings)) }
        def billing_settings; end
        sig {
          params(_billing_settings: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings))
         }
        def billing_settings=(_billing_settings); end
        # The ID of the Customer object whose invoices are grouped.
        sig { returns(String) }
        def customer; end
        sig { params(_customer: String).returns(String) }
        def customer=(_customer); end
        # The ID of the PaymentMethod object used by default. If unset, the customer's default payment method is used.
        sig { returns(T.nilable(String)) }
        def default_payment_method; end
        sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def default_payment_method=(_default_payment_method); end
        # The strategy used to group member invoices.
        sig { returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior)) }
        def grouping_behavior; end
        sig {
          params(_grouping_behavior: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior)).returns(T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior))
         }
        def grouping_behavior=(_grouping_behavior); end
        # Additional fields to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # An internal key you can use to find a particular billing group. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of key-value pairs that you can attach to an object for storing additional structured information.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        sig {
          params(billing_settings: T.nilable(::Stripe::V2::Billing::GroupCreateParams::BillingSettings), customer: String, default_payment_method: T.nilable(String), grouping_behavior: T.nilable(::Stripe::V2::Billing::GroupCreateParams::GroupingBehavior), include: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(
          billing_settings: nil,
          customer: nil,
          default_payment_method: nil,
          grouping_behavior: nil,
          include: nil,
          lookup_key: nil,
          metadata: nil
        ); end
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
    end
  end
end