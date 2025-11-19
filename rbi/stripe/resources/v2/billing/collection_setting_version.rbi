# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CollectionSettingVersion < APIResource
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
        sig { returns(T.nilable(String)) }
        def collection_method; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Email delivery settings.
        sig { returns(T.nilable(EmailDelivery)) }
        def email_delivery; end
        # The ID of the CollectionSettingVersion object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
        sig { returns(T.nilable(String)) }
        def payment_method_configuration; end
        # Payment Method specific configuration stored on the object.
        sig { returns(T.nilable(PaymentMethodOptions)) }
        def payment_method_options; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end