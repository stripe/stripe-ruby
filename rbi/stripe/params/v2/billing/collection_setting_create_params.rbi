# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CollectionSettingCreateParams < Stripe::RequestParams
        class EmailDelivery < Stripe::RequestParams
          class PaymentDue < Stripe::RequestParams
            # If true an email for the invoice would be generated and sent out.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            # If true the payment link to hosted invocie page would be included in email and PDF of the invoice.
            sig { returns(T::Boolean) }
            def include_payment_link; end
            sig { params(_include_payment_link: T::Boolean).returns(T::Boolean) }
            def include_payment_link=(_include_payment_link); end
            sig { params(enabled: T::Boolean, include_payment_link: T::Boolean).void }
            def initialize(enabled: nil, include_payment_link: nil); end
          end
          # Controls emails for when the payment is due. For example after the invoice is finilized and transition to Open state.
          sig {
            returns(T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery::PaymentDue))
           }
          def payment_due; end
          sig {
            params(_payment_due: T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery::PaymentDue)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery::PaymentDue))
           }
          def payment_due=(_payment_due); end
          sig {
            params(payment_due: T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery::PaymentDue)).void
           }
          def initialize(payment_due: nil); end
        end
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
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
              returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
             }
            def mandate_options; end
            sig {
              params(_mandate_options: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
             }
            def mandate_options=(_mandate_options); end
            # Verification method.
            sig { returns(T.nilable(String)) }
            def verification_method; end
            sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
            def verification_method=(_verification_method); end
            sig {
              params(mandate_options: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
             }
            def initialize(mandate_options: nil, verification_method: nil); end
          end
          class Bancontact < Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            def preferred_language; end
            sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
            def preferred_language=(_preferred_language); end
            sig { params(preferred_language: T.nilable(String)).void }
            def initialize(preferred_language: nil); end
          end
          class Card < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
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
            end
            # Configuration options for setting up an eMandate for cards issued in India.
            sig {
              returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card::MandateOptions))
             }
            def mandate_options; end
            sig {
              params(_mandate_options: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card::MandateOptions)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card::MandateOptions))
             }
            def mandate_options=(_mandate_options); end
            # Selected network to process the payment on. Depends on the available networks of the card.
            sig { returns(T.nilable(String)) }
            def network; end
            sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
            def network=(_network); end
            # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
            # for authentication based on risk level and [other requirements](https://docs.corp.stripe.com/strong-customer-authentication).
            # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
            # Read our guide on [manually requesting 3D Secure](https://docs.corp.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            sig { returns(T.nilable(String)) }
            def request_three_d_secure; end
            sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
            def request_three_d_secure=(_request_three_d_secure); end
            sig {
              params(mandate_options: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card::MandateOptions), network: T.nilable(String), request_three_d_secure: T.nilable(String)).void
             }
            def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil); end
          end
          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
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
                returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
               }
              def eu_bank_transfer; end
              sig {
                params(_eu_bank_transfer: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
               }
              def eu_bank_transfer=(_eu_bank_transfer); end
              # The bank transfer type that can be used for funding.
              sig { returns(T.nilable(String)) }
              def type; end
              sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
              def type=(_type); end
              sig {
                params(eu_bank_transfer: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), type: T.nilable(String)).void
               }
              def initialize(eu_bank_transfer: nil, type: nil); end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig {
              returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
             }
            def bank_transfer; end
            sig {
              params(_bank_transfer: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
             }
            def bank_transfer=(_bank_transfer); end
            # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
            sig { returns(T.nilable(String)) }
            def funding_type; end
            sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
            def funding_type=(_funding_type); end
            sig {
              params(bank_transfer: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String)).void
             }
            def initialize(bank_transfer: nil, funding_type: nil); end
          end
          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              class Filters < Stripe::RequestParams
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
                returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
               }
              def filters; end
              sig {
                params(_filters: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
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
                params(filters: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
               }
              def initialize(filters: nil, permissions: nil, prefetch: nil); end
            end
            # Additional fields for Financial Connections Session creation.
            sig {
              returns(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
             }
            def financial_connections; end
            sig {
              params(_financial_connections: V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections).returns(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
             }
            def financial_connections=(_financial_connections); end
            # Verification method.
            sig { returns(String) }
            def verification_method; end
            sig { params(_verification_method: String).returns(String) }
            def verification_method=(_verification_method); end
            sig {
              params(financial_connections: V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, verification_method: String).void
             }
            def initialize(financial_connections: nil, verification_method: nil); end
          end
          # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
          sig {
            returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit))
           }
          def acss_debit; end
          sig {
            params(_acss_debit: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit))
           }
          def acss_debit=(_acss_debit); end
          # This sub-hash contains details about the Bancontact payment method.
          sig {
            returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Bancontact))
           }
          def bancontact; end
          sig {
            params(_bancontact: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Bancontact)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Bancontact))
           }
          def bancontact=(_bancontact); end
          # This sub-hash contains details about the Card payment method options.
          sig {
            returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card))
           }
          def card=(_card); end
          # This sub-hash contains details about the Bank transfer payment method options.
          sig {
            returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance))
           }
          def customer_balance; end
          sig {
            params(_customer_balance: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance))
           }
          def customer_balance=(_customer_balance); end
          # This sub-hash contains details about the Konbini payment method options.
          sig { returns(T.nilable(T::Hash[String, T.untyped])) }
          def konbini; end
          sig {
            params(_konbini: T.nilable(T::Hash[String, T.untyped])).returns(T.nilable(T::Hash[String, T.untyped]))
           }
          def konbini=(_konbini); end
          # This sub-hash contains details about the SEPA Direct Debit payment method options.
          sig { returns(T.nilable(T::Hash[String, T.untyped])) }
          def sepa_debit; end
          sig {
            params(_sepa_debit: T.nilable(T::Hash[String, T.untyped])).returns(T.nilable(T::Hash[String, T.untyped]))
           }
          def sepa_debit=(_sepa_debit); end
          # This sub-hash contains details about the ACH direct debit payment method options.
          sig {
            returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount))
           }
          def us_bank_account=(_us_bank_account); end
          sig {
            params(acss_debit: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::AcssDebit), bancontact: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Bancontact), card: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::Card), customer_balance: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::CustomerBalance), konbini: T.nilable(T::Hash[String, T.untyped]), sepa_debit: T.nilable(T::Hash[String, T.untyped]), us_bank_account: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions::UsBankAccount)).void
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
        end
        # Either automatic, or send_invoice. When charging automatically, Stripe will attempt to pay this
        # bill at the end of the period using the payment method attached to the payer profile. When sending an invoice,
        # Stripe will email your payer profile an invoice with payment instructions.
        # Defaults to automatic.
        sig { returns(T.nilable(String)) }
        def collection_method; end
        sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
        def collection_method=(_collection_method); end
        # An optional customer-facing display name for the CollectionSetting object.
        # Maximum length of 250 characters.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # Email delivery setting.
        sig { returns(T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery)) }
        def email_delivery; end
        sig {
          params(_email_delivery: T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery))
         }
        def email_delivery=(_email_delivery); end
        # A lookup key used to retrieve settings dynamically from a static string.
        # This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
        sig { returns(T.nilable(String)) }
        def payment_method_configuration; end
        sig { params(_payment_method_configuration: T.nilable(String)).returns(T.nilable(String)) }
        def payment_method_configuration=(_payment_method_configuration); end
        # Payment Method specific configuration to be stored on the object.
        sig { returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions)) }
        def payment_method_options; end
        sig {
          params(_payment_method_options: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions)).returns(T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions))
         }
        def payment_method_options=(_payment_method_options); end
        sig {
          params(collection_method: T.nilable(String), display_name: T.nilable(String), email_delivery: T.nilable(V2::Billing::CollectionSettingCreateParams::EmailDelivery), lookup_key: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_options: T.nilable(V2::Billing::CollectionSettingCreateParams::PaymentMethodOptions)).void
         }
        def initialize(
          collection_method: nil,
          display_name: nil,
          email_delivery: nil,
          lookup_key: nil,
          payment_method_configuration: nil,
          payment_method_options: nil
        ); end
      end
    end
  end
end