# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # Settings that configure and manage the behavior of collecting payments.
      class CollectionSetting < APIResource
        OBJECT_NAME = "v2.billing.collection_setting"
        def self.object_name
          "v2.billing.collection_setting"
        end

        class EmailDelivery < Stripe::StripeObject
          class PaymentDue < Stripe::StripeObject
            # If true an email for the invoice would be generated and sent out.
            attr_reader :enabled
            # If true the payment link to hosted invocie page would be included in email and PDF of the invoice.
            attr_reader :include_payment_link
          end
          # Controls emails for when the payment is due. For example after the invoice is finilized and transition to Open state.
          attr_reader :payment_due
        end

        class PaymentMethodOptions < Stripe::StripeObject
          class AcssDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              # Transaction type of the mandate.
              attr_reader :transaction_type
            end
            # Additional fields for Mandate creation.
            attr_reader :mandate_options
            # Verification method.
            attr_reader :verification_method
          end

          class Bancontact < Stripe::StripeObject
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            attr_reader :preferred_language
          end

          class Card < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              # Amount to be charged for future payments.
              attr_reader :amount
              # The AmountType for the mandate. One of `fixed` or `maximum`.
              attr_reader :amount_type
              # A description of the mandate that is meant to be displayed to the customer.
              attr_reader :description
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
          end

          class CustomerBalance < Stripe::StripeObject
            class BankTransfer < Stripe::StripeObject
              class EuBankTransfer < Stripe::StripeObject
                # The desired country code of the bank account information.
                attr_reader :country
              end
              # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
              attr_reader :eu_bank_transfer
              # The bank transfer type that can be used for funding.
              attr_reader :type
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            attr_reader :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
            attr_reader :funding_type
          end

          class Konbini < Stripe::StripeObject; end
          class SepaDebit < Stripe::StripeObject; end

          class UsBankAccount < Stripe::StripeObject
            class FinancialConnections < Stripe::StripeObject
              class Filters < Stripe::StripeObject
                # The account subcategories to use to filter for selectable accounts.
                attr_reader :account_subcategories
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              attr_reader :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
              attr_reader :permissions
              # List of data features that you would like to retrieve upon account creation.
              attr_reader :prefetch
            end
            # Additional fields for Financial Connections Session creation.
            attr_reader :financial_connections
            # Verification method.
            attr_reader :verification_method
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
        end
        # Either automatic, or send_invoice. When charging automatically, Stripe will attempt to pay this
        # bill at the end of the period using the payment method attached to the payer profile. When sending an invoice,
        # Stripe will email your payer profile an invoice with payment instructions.
        # Defaults to automatic.
        attr_reader :collection_method
        # Timestamp of when the object was created.
        attr_reader :created
        # An optional field for adding a display name for the CollectionSetting object.
        attr_reader :display_name
        # Email delivery settings.
        attr_reader :email_delivery
        # The ID of the CollectionSetting.
        attr_reader :id
        # The latest version of the current settings object. This will be
        # Updated every time an attribute of the settings is updated.
        attr_reader :latest_version
        # The current live version of the settings object. This can be different from
        # latest_version if settings are updated without setting live_version='latest'.
        attr_reader :live_version
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        attr_reader :lookup_key
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
        attr_reader :payment_method_configuration
        # Payment Method specific configuration stored on the object.
        attr_reader :payment_method_options
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
