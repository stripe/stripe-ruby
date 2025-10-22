# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CollectionSettingUpdateParams < ::Stripe::RequestParams
        class EmailDelivery < ::Stripe::RequestParams
          class PaymentDue < ::Stripe::RequestParams
            # If true an email for the invoice would be generated and sent out.
            attr_accessor :enabled
            # If true the payment link to hosted invoice page would be included in email and PDF of the invoice.
            attr_accessor :include_payment_link

            def initialize(enabled: nil, include_payment_link: nil)
              @enabled = enabled
              @include_payment_link = include_payment_link
            end
          end
          # Controls emails for when the payment is due. For example after the invoice is finalized and transitions to Open state.
          attr_accessor :payment_due

          def initialize(payment_due: nil)
            @payment_due = payment_due
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
            end
            # Configuration options for setting up an eMandate for cards issued in India.
            attr_accessor :mandate_options
            # Selected network to process the payment on. Depends on the available networks of the card.
            attr_accessor :network
            # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
            # for authentication based on risk level and [other requirements](https://docs.corp.stripe.com/strong-customer-authentication).
            # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
            # Read our guide on [manually requesting 3D Secure](https://docs.corp.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            attr_accessor :request_three_d_secure

            def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil)
              @mandate_options = mandate_options
              @network = network
              @request_three_d_secure = request_three_d_secure
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
        end
        # Either automatic, or send_invoice. When charging automatically, Stripe will attempt to pay this
        # bill at the end of the period using the payment method attached to the payer profile. When sending an invoice,
        # Stripe will email your payer profile an invoice with payment instructions.
        attr_accessor :collection_method
        # An optional customer-facing display name for the CollectionSetting object.
        # To remove the display name, set it to an empty string in the request.
        # Maximum length of 250 characters.
        attr_accessor :display_name
        # Email delivery settings.
        attr_accessor :email_delivery
        # Optionally change the live version of the CollectionSetting. Billing Cadences and other objects that refer to this
        # CollectionSetting will use this version when no overrides are set. Providing `live_version = "latest"` will set the
        # CollectionSetting's `live_version` to its latest version.
        attr_accessor :live_version
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        attr_accessor :lookup_key
        # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
        attr_accessor :payment_method_configuration
        # Payment Method specific configuration to be stored on the object.
        attr_accessor :payment_method_options

        def initialize(
          collection_method: nil,
          display_name: nil,
          email_delivery: nil,
          live_version: nil,
          lookup_key: nil,
          payment_method_configuration: nil,
          payment_method_options: nil
        )
          @collection_method = collection_method
          @display_name = display_name
          @email_delivery = email_delivery
          @live_version = live_version
          @lookup_key = lookup_key
          @payment_method_configuration = payment_method_configuration
          @payment_method_options = payment_method_options
        end
      end
    end
  end
end
