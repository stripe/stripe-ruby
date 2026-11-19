# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class GroupUpdateParams < ::Stripe::RequestParams
        class BillingSettings < ::Stripe::RequestParams
          class EmailDelivery < ::Stripe::RequestParams
            class PaymentDue < ::Stripe::RequestParams
              # If true an email for the invoice would be generated and sent out. Omit to leave unchanged. Set to null to restore the applicable default.
              attr_accessor :enabled
              # If true the payment link to hosted invoice page would be included in email and PDF of the invoice. Omit to leave unchanged. Set to null to restore the applicable default.
              attr_accessor :include_payment_link

              def initialize(enabled: nil, include_payment_link: nil)
                @enabled = enabled
                @include_payment_link = include_payment_link
              end
            end
            # Controls emails for when the payment is due. Omit to leave unchanged. Set to null to restore the applicable default.
            attr_accessor :payment_due

            def initialize(payment_due: nil)
              @payment_due = payment_due
            end
          end

          class InvoicePresentation < ::Stripe::RequestParams
            # The ID of the invoice rendering template to be used when generating invoices. Set to null to use no template.
            attr_accessor :invoice_rendering_template

            def initialize(invoice_rendering_template: nil)
              @invoice_rendering_template = invoice_rendering_template
            end
          end

          class InvoiceTimeUntilDue < ::Stripe::RequestParams
            # The interval unit for the time until due.
            attr_accessor :interval
            # The number of interval units. For example, if interval=day and interval_count=30, the invoice is due in 30 days.
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end

          class PaymentMethodOptions < ::Stripe::RequestParams
            class AcssDebit < ::Stripe::RequestParams
              class MandateOptions < ::Stripe::RequestParams
                # Transaction type of the mandate.
                attr_accessor :transaction_type

                def initialize(transaction_type: nil)
                  @transaction_type = transaction_type
                end
              end
              # Additional fields for Mandate creation.
              attr_accessor :mandate_options
              # Verification method.
              attr_accessor :verification_method

              def initialize(mandate_options: nil, verification_method: nil)
                @mandate_options = mandate_options
                @verification_method = verification_method
              end
            end

            class Bancontact < ::Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              attr_accessor :preferred_language

              def initialize(preferred_language: nil)
                @preferred_language = preferred_language
              end
            end

            class Card < ::Stripe::RequestParams
              class MandateOptions < ::Stripe::RequestParams
                # Amount to be charged for future payments.
                attr_accessor :amount
                # The AmountType for the mandate. One of `fixed` or `maximum`.
                attr_accessor :amount_type
                # A description of the mandate that is meant to be displayed to the customer.
                attr_accessor :description

                def initialize(amount: nil, amount_type: nil, description: nil)
                  @amount = amount
                  @amount_type = amount_type
                  @description = description
                end

                def self.field_encodings
                  @field_encodings = { amount: :int64_string }
                end
              end
              # Configuration options for setting up an eMandate for cards issued in India.
              attr_accessor :mandate_options
              # Selected network to process the payment on. Depends on the available networks of the card.
              attr_accessor :network
              # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
              # for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication).
              # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
              # Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
              attr_accessor :request_three_d_secure

              def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil)
                @mandate_options = mandate_options
                @network = network
                @request_three_d_secure = request_three_d_secure
              end

              def self.field_encodings
                @field_encodings = {
                  mandate_options: { kind: :object, fields: { amount: :int64_string } },
                }
              end
            end

            class CustomerBalance < ::Stripe::RequestParams
              class BankTransfer < ::Stripe::RequestParams
                class EuBankTransfer < ::Stripe::RequestParams
                  # The desired country code of the bank account information.
                  attr_accessor :country

                  def initialize(country: nil)
                    @country = country
                  end
                end
                # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                attr_accessor :eu_bank_transfer
                # The bank transfer type that can be used for funding.
                attr_accessor :type

                def initialize(eu_bank_transfer: nil, type: nil)
                  @eu_bank_transfer = eu_bank_transfer
                  @type = type
                end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              attr_accessor :bank_transfer
              # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
              attr_accessor :funding_type

              def initialize(bank_transfer: nil, funding_type: nil)
                @bank_transfer = bank_transfer
                @funding_type = funding_type
              end
            end

            class Konbini < ::Stripe::RequestParams; end
            class SepaDebit < ::Stripe::RequestParams; end

            class UsBankAccount < ::Stripe::RequestParams
              class FinancialConnections < ::Stripe::RequestParams
                class Filters < ::Stripe::RequestParams
                  # The account subcategories to use to filter for selectable accounts.
                  attr_accessor :account_subcategories

                  def initialize(account_subcategories: nil)
                    @account_subcategories = account_subcategories
                  end
                end
                # Provide filters for the linked accounts that the customer can select for the payment method.
                attr_accessor :filters
                # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                attr_accessor :permissions
                # List of data features that you would like to retrieve upon account creation.
                attr_accessor :prefetch

                def initialize(filters: nil, permissions: nil, prefetch: nil)
                  @filters = filters
                  @permissions = permissions
                  @prefetch = prefetch
                end
              end
              # Additional fields for Financial Connections Session creation.
              attr_accessor :financial_connections
              # Verification method.
              attr_accessor :verification_method

              def initialize(financial_connections: nil, verification_method: nil)
                @financial_connections = financial_connections
                @verification_method = verification_method
              end
            end
            # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
            attr_accessor :acss_debit
            # This sub-hash contains details about the Bancontact payment method.
            attr_accessor :bancontact
            # This sub-hash contains details about the Card payment method options.
            attr_accessor :card
            # This sub-hash contains details about the Bank transfer payment method options.
            attr_accessor :customer_balance
            # This sub-hash contains details about the Konbini payment method options.
            attr_accessor :konbini
            # This sub-hash contains details about the SEPA Direct Debit payment method options.
            attr_accessor :sepa_debit
            # This sub-hash contains details about the ACH direct debit payment method options.
            attr_accessor :us_bank_account

            def initialize(
              acss_debit: nil,
              bancontact: nil,
              card: nil,
              customer_balance: nil,
              konbini: nil,
              sepa_debit: nil,
              us_bank_account: nil
            )
              @acss_debit = acss_debit
              @bancontact = bancontact
              @card = card
              @customer_balance = customer_balance
              @konbini = konbini
              @sepa_debit = sepa_debit
              @us_bank_account = us_bank_account
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

          class Tax < ::Stripe::RequestParams
            # Determines if tax is calculated automatically based on a product tax code or manually based on rules defined by the business.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end
          # How Stripe collects payment. Set to null to restore the applicable default.
          attr_accessor :collection_method
          # Email delivery setting. Set to null to restore the applicable default.
          attr_accessor :email_delivery
          # Settings for invoice presentation. Set to null to restore the applicable defaults.
          attr_accessor :invoice_presentation
          # The amount of time until the invoice is overdue for payment. Set to null to restore the applicable default.
          attr_accessor :invoice_time_until_due
          # The ID of the payment method configuration, which controls which payment methods are displayed to your customers. Set to null to restore the applicable default.
          attr_accessor :payment_method_configuration
          # Payment Method specific configuration to be stored on the object. Set to null to clear the stored value.
          attr_accessor :payment_method_options
          # Tax calculation settings. Set to null to restore the applicable default.
          attr_accessor :tax

          def initialize(
            collection_method: nil,
            email_delivery: nil,
            invoice_presentation: nil,
            invoice_time_until_due: nil,
            payment_method_configuration: nil,
            payment_method_options: nil,
            tax: nil
          )
            @collection_method = collection_method
            @email_delivery = email_delivery
            @invoice_presentation = invoice_presentation
            @invoice_time_until_due = invoice_time_until_due
            @payment_method_configuration = payment_method_configuration
            @payment_method_options = payment_method_options
            @tax = tax
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
        # Billing setting overrides to update. Set to null to restore all applicable defaults.
        attr_accessor :billing_settings
        # The ID of the default PaymentMethod object. Set to null to use the customer's default payment method.
        attr_accessor :default_payment_method
        # Additional fields to include in the response.
        attr_accessor :include
        # An internal key you can use to find a particular billing group. Set to null to clear it. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of key-value pairs to add, update, or remove.
        attr_accessor :metadata

        def initialize(
          billing_settings: nil,
          default_payment_method: nil,
          include: nil,
          lookup_key: nil,
          metadata: nil
        )
          @billing_settings = billing_settings
          @default_payment_method = default_payment_method
          @include = include
          @lookup_key = lookup_key
          @metadata = metadata
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
    end
  end
end
