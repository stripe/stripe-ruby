# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # Settings that configure and manage the behavior of collecting payments.
      class CollectionSetting < APIResource
        class PaymentMethodOptions < Stripe::StripeObject
          class AcssDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              # Transaction type of the mandate.
              sig { returns(T.nilable(String)) }
              attr_reader :transaction_type
            end
            # Additional fields for Mandate creation.
            sig { returns(T.nilable(MandateOptions)) }
            attr_reader :mandate_options
            # Verification method.
            sig { returns(T.nilable(String)) }
            attr_reader :verification_method
          end
          class Bancontact < Stripe::StripeObject
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            attr_reader :preferred_language
          end
          class Card < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              # Amount to be charged for future payments.
              sig { returns(T.nilable(Integer)) }
              attr_reader :amount
              # The AmountType for the mandate. One of `fixed` or `maximum`.
              sig { returns(T.nilable(String)) }
              attr_reader :amount_type
              # A description of the mandate that is meant to be displayed to the customer.
              sig { returns(T.nilable(String)) }
              attr_reader :description
            end
            # Configuration options for setting up an eMandate for cards issued in India.
            sig { returns(T.nilable(MandateOptions)) }
            attr_reader :mandate_options
            # Selected network to process the payment on. Depends on the available networks of the card.
            sig { returns(T.nilable(String)) }
            attr_reader :network
            # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
            # for authentication based on risk level and [other requirements](https://docs.corp.stripe.com/strong-customer-authentication).
            # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
            # Read our guide on [manually requesting 3D Secure](https://docs.corp.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            sig { returns(T.nilable(String)) }
            attr_reader :request_three_d_secure
          end
          class CustomerBalance < Stripe::StripeObject
            class BankTransfer < Stripe::StripeObject
              class EuBankTransfer < Stripe::StripeObject
                # The desired country code of the bank account information.
                sig { returns(String) }
                attr_reader :country
              end
              # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
              sig { returns(T.nilable(EuBankTransfer)) }
              attr_reader :eu_bank_transfer
              # The bank transfer type that can be used for funding.
              sig { returns(T.nilable(String)) }
              attr_reader :type
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig { returns(T.nilable(BankTransfer)) }
            attr_reader :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
            sig { returns(T.nilable(String)) }
            attr_reader :funding_type
          end
          class Konbini < Stripe::StripeObject; end
          class SepaDebit < Stripe::StripeObject; end
          class UsBankAccount < Stripe::StripeObject
            class FinancialConnections < Stripe::StripeObject
              class Filters < Stripe::StripeObject
                # The account subcategories to use to filter for selectable accounts.
                sig { returns(T::Array[String]) }
                attr_reader :account_subcategories
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              sig { returns(T.nilable(Filters)) }
              attr_reader :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
              sig { returns(T::Array[String]) }
              attr_reader :permissions
              # List of data features that you would like to retrieve upon account creation.
              sig { returns(T::Array[String]) }
              attr_reader :prefetch
            end
            # Additional fields for Financial Connections Session creation.
            sig { returns(FinancialConnections) }
            attr_reader :financial_connections
            # Verification method.
            sig { returns(String) }
            attr_reader :verification_method
          end
          # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
          sig { returns(T.nilable(AcssDebit)) }
          attr_reader :acss_debit
          # This sub-hash contains details about the Bancontact payment method.
          sig { returns(T.nilable(Bancontact)) }
          attr_reader :bancontact
          # This sub-hash contains details about the Card payment method options.
          sig { returns(T.nilable(Card)) }
          attr_reader :card
          # This sub-hash contains details about the Bank transfer payment method options.
          sig { returns(T.nilable(CustomerBalance)) }
          attr_reader :customer_balance
          # This sub-hash contains details about the Konbini payment method options.
          sig { returns(T.nilable(Konbini)) }
          attr_reader :konbini
          # This sub-hash contains details about the SEPA Direct Debit payment method options.
          sig { returns(T.nilable(SepaDebit)) }
          attr_reader :sepa_debit
          # This sub-hash contains details about the ACH direct debit payment method options.
          sig { returns(T.nilable(UsBankAccount)) }
          attr_reader :us_bank_account
        end
        # Either automatic, or send_invoice. When charging automatically, Stripe will attempt to pay this
        # bill at the end of the period using the payment method attached to the payer profile. When sending an invoice,
        # Stripe will email your payer profile an invoice with payment instructions.
        # Defaults to automatic.
        sig { returns(T.nilable(String)) }
        attr_reader :collection_method
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # An optional field for adding a display name for the CollectionSetting object.
        sig { returns(T.nilable(String)) }
        attr_reader :display_name
        # The ID of the CollectionSetting.
        sig { returns(String) }
        attr_reader :id
        # The latest version of the current settings object. This will be
        # Updated every time an attribute of the settings is updated.
        sig { returns(String) }
        attr_reader :latest_version
        # The current live version of the settings object. This can be different from
        # latest_version if settings are updated without setting live_version='latest'.
        sig { returns(String) }
        attr_reader :live_version
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :lookup_key
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_configuration
        # Payment Method specific configuration stored on the object.
        sig { returns(T.nilable(PaymentMethodOptions)) }
        attr_reader :payment_method_options
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end