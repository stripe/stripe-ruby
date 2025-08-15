# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CollectionSettingService < StripeService
        attr_reader :versions
        class ListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Only return the settings with these lookup_keys, if any exist.
          # You can specify up to 10 lookup_keys.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :lookup_keys
          sig { params(limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void }
          def initialize(limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Transaction type of the mandate.
                sig { returns(T.nilable(String)) }
                attr_accessor :transaction_type
                sig { params(transaction_type: T.nilable(String)).void }
                def initialize(transaction_type: nil); end
              end
              # Additional fields for Mandate creation.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              attr_accessor :mandate_options
              # Verification method.
              sig { returns(T.nilable(String)) }
              attr_accessor :verification_method
              sig {
                params(mandate_options: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, verification_method: nil); end
            end
            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_language
              sig { params(preferred_language: T.nilable(String)).void }
              def initialize(preferred_language: nil); end
            end
            class Card < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Amount to be charged for future payments.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :amount
                # The AmountType for the mandate. One of `fixed` or `maximum`.
                sig { returns(T.nilable(String)) }
                attr_accessor :amount_type
                # A description of the mandate that is meant to be displayed to the customer.
                sig { returns(T.nilable(String)) }
                attr_accessor :description
                sig {
                  params(amount: T.nilable(Integer), amount_type: T.nilable(String), description: T.nilable(String)).void
                 }
                def initialize(amount: nil, amount_type: nil, description: nil); end
              end
              # Configuration options for setting up an eMandate for cards issued in India.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Card::MandateOptions))
               }
              attr_accessor :mandate_options
              # Selected network to process the payment on. Depends on the available networks of the card.
              sig { returns(T.nilable(String)) }
              attr_accessor :network
              # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
              # for authentication based on risk level and [other requirements](https://docs.corp.stripe.com/strong-customer-authentication).
              # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
              # Read our guide on [manually requesting 3D Secure](https://docs.corp.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
              sig { returns(T.nilable(String)) }
              attr_accessor :request_three_d_secure
              sig {
                params(mandate_options: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Card::MandateOptions), network: T.nilable(String), request_three_d_secure: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil); end
            end
            class CustomerBalance < Stripe::RequestParams
              class BankTransfer < Stripe::RequestParams
                class EuBankTransfer < Stripe::RequestParams
                  # The desired country code of the bank account information.
                  sig { returns(String) }
                  attr_accessor :country
                  sig { params(country: String).void }
                  def initialize(country: nil); end
                end
                # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                attr_accessor :eu_bank_transfer
                # The bank transfer type that can be used for funding.
                sig { returns(T.nilable(String)) }
                attr_accessor :type
                sig {
                  params(eu_bank_transfer: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), type: T.nilable(String)).void
                 }
                def initialize(eu_bank_transfer: nil, type: nil); end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              attr_accessor :bank_transfer
              # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
              sig { returns(T.nilable(String)) }
              attr_accessor :funding_type
              sig {
                params(bank_transfer: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String)).void
               }
              def initialize(bank_transfer: nil, funding_type: nil); end
            end
            class Konbini < Stripe::RequestParams; end
            class SepaDebit < Stripe::RequestParams; end
            class UsBankAccount < Stripe::RequestParams
              class FinancialConnections < Stripe::RequestParams
                class Filters < Stripe::RequestParams
                  # The account subcategories to use to filter for selectable accounts.
                  sig { returns(T.nilable(T::Array[String])) }
                  attr_accessor :account_subcategories
                  sig { params(account_subcategories: T.nilable(T::Array[String])).void }
                  def initialize(account_subcategories: nil); end
                end
                # Provide filters for the linked accounts that the customer can select for the payment method.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
                 }
                attr_accessor :filters
                # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :permissions
                # List of data features that you would like to retrieve upon account creation.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :prefetch
                sig {
                  params(filters: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
                 }
                def initialize(filters: nil, permissions: nil, prefetch: nil); end
              end
              # Additional fields for Financial Connections Session creation.
              sig {
                returns(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
               }
              attr_accessor :financial_connections
              # Verification method.
              sig { returns(String) }
              attr_accessor :verification_method
              sig {
                params(financial_connections: ::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, verification_method: String).void
               }
              def initialize(financial_connections: nil, verification_method: nil); end
            end
            # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::AcssDebit))
             }
            attr_accessor :acss_debit
            # This sub-hash contains details about the Bancontact payment method.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Bancontact))
             }
            attr_accessor :bancontact
            # This sub-hash contains details about the Card payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Card))
             }
            attr_accessor :card
            # This sub-hash contains details about the Bank transfer payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::CustomerBalance))
             }
            attr_accessor :customer_balance
            # This sub-hash contains details about the Konbini payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Konbini))
             }
            attr_accessor :konbini
            # This sub-hash contains details about the SEPA Direct Debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::SepaDebit))
             }
            attr_accessor :sepa_debit
            # This sub-hash contains details about the ACH direct debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::UsBankAccount))
             }
            attr_accessor :us_bank_account
            sig {
              params(acss_debit: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::AcssDebit), bancontact: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::CustomerBalance), konbini: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::Konbini), sepa_debit: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions::UsBankAccount)).void
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
          attr_accessor :collection_method
          # An optional customer-facing display name for the CollectionSetting object.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # A lookup key used to retrieve settings dynamically from a static string.
          # This may be up to 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_configuration
          # Payment Method specific configuration to be stored on the object.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions))
           }
          attr_accessor :payment_method_options
          sig {
            params(collection_method: T.nilable(String), display_name: T.nilable(String), lookup_key: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_options: T.nilable(::Stripe::V2::Billing::CollectionSettingService::CreateParams::PaymentMethodOptions)).void
           }
          def initialize(
            collection_method: nil,
            display_name: nil,
            lookup_key: nil,
            payment_method_configuration: nil,
            payment_method_options: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Transaction type of the mandate.
                sig { returns(T.nilable(String)) }
                attr_accessor :transaction_type
                sig { params(transaction_type: T.nilable(String)).void }
                def initialize(transaction_type: nil); end
              end
              # Additional fields for Mandate creation.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              attr_accessor :mandate_options
              # Verification method.
              sig { returns(T.nilable(String)) }
              attr_accessor :verification_method
              sig {
                params(mandate_options: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, verification_method: nil); end
            end
            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_language
              sig { params(preferred_language: T.nilable(String)).void }
              def initialize(preferred_language: nil); end
            end
            class Card < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Amount to be charged for future payments.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :amount
                # The AmountType for the mandate. One of `fixed` or `maximum`.
                sig { returns(T.nilable(String)) }
                attr_accessor :amount_type
                # A description of the mandate that is meant to be displayed to the customer.
                sig { returns(T.nilable(String)) }
                attr_accessor :description
                sig {
                  params(amount: T.nilable(Integer), amount_type: T.nilable(String), description: T.nilable(String)).void
                 }
                def initialize(amount: nil, amount_type: nil, description: nil); end
              end
              # Configuration options for setting up an eMandate for cards issued in India.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Card::MandateOptions))
               }
              attr_accessor :mandate_options
              # Selected network to process the payment on. Depends on the available networks of the card.
              sig { returns(T.nilable(String)) }
              attr_accessor :network
              # An advanced option 3D Secure. We strongly recommend that you rely on our SCA Engine to automatically prompt your customers
              # for authentication based on risk level and [other requirements](https://docs.corp.stripe.com/strong-customer-authentication).
              # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option.
              # Read our guide on [manually requesting 3D Secure](https://docs.corp.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
              sig { returns(T.nilable(String)) }
              attr_accessor :request_three_d_secure
              sig {
                params(mandate_options: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Card::MandateOptions), network: T.nilable(String), request_three_d_secure: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil); end
            end
            class CustomerBalance < Stripe::RequestParams
              class BankTransfer < Stripe::RequestParams
                class EuBankTransfer < Stripe::RequestParams
                  # The desired country code of the bank account information.
                  sig { returns(String) }
                  attr_accessor :country
                  sig { params(country: String).void }
                  def initialize(country: nil); end
                end
                # Configuration for `eu_bank_transfer` funding type. Required if `type` is `eu_bank_transfer`.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                attr_accessor :eu_bank_transfer
                # The bank transfer type that can be used for funding.
                sig { returns(T.nilable(String)) }
                attr_accessor :type
                sig {
                  params(eu_bank_transfer: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), type: T.nilable(String)).void
                 }
                def initialize(eu_bank_transfer: nil, type: nil); end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              sig {
                returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              attr_accessor :bank_transfer
              # The funding method type to be used when there are not enough funds in the customer balance. Currently the only supported value is `bank_transfer`.
              sig { returns(T.nilable(String)) }
              attr_accessor :funding_type
              sig {
                params(bank_transfer: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String)).void
               }
              def initialize(bank_transfer: nil, funding_type: nil); end
            end
            class Konbini < Stripe::RequestParams; end
            class SepaDebit < Stripe::RequestParams; end
            class UsBankAccount < Stripe::RequestParams
              class FinancialConnections < Stripe::RequestParams
                class Filters < Stripe::RequestParams
                  # The account subcategories to use to filter for selectable accounts.
                  sig { returns(T.nilable(T::Array[String])) }
                  attr_accessor :account_subcategories
                  sig { params(account_subcategories: T.nilable(T::Array[String])).void }
                  def initialize(account_subcategories: nil); end
                end
                # Provide filters for the linked accounts that the customer can select for the payment method.
                sig {
                  returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
                 }
                attr_accessor :filters
                # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :permissions
                # List of data features that you would like to retrieve upon account creation.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :prefetch
                sig {
                  params(filters: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
                 }
                def initialize(filters: nil, permissions: nil, prefetch: nil); end
              end
              # Additional fields for Financial Connections Session creation.
              sig {
                returns(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections)
               }
              attr_accessor :financial_connections
              # Verification method.
              sig { returns(String) }
              attr_accessor :verification_method
              sig {
                params(financial_connections: ::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::UsBankAccount::FinancialConnections, verification_method: String).void
               }
              def initialize(financial_connections: nil, verification_method: nil); end
            end
            # This sub-hash contains details about the Canadian pre-authorized debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::AcssDebit))
             }
            attr_accessor :acss_debit
            # This sub-hash contains details about the Bancontact payment method.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Bancontact))
             }
            attr_accessor :bancontact
            # This sub-hash contains details about the Card payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Card))
             }
            attr_accessor :card
            # This sub-hash contains details about the Bank transfer payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::CustomerBalance))
             }
            attr_accessor :customer_balance
            # This sub-hash contains details about the Konbini payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Konbini))
             }
            attr_accessor :konbini
            # This sub-hash contains details about the SEPA Direct Debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::SepaDebit))
             }
            attr_accessor :sepa_debit
            # This sub-hash contains details about the ACH direct debit payment method options.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::UsBankAccount))
             }
            attr_accessor :us_bank_account
            sig {
              params(acss_debit: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::AcssDebit), bancontact: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::CustomerBalance), konbini: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::Konbini), sepa_debit: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions::UsBankAccount)).void
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
          sig { returns(T.nilable(String)) }
          attr_accessor :collection_method
          # An optional customer-facing display name for the CollectionSetting object.
          # To remove the display name, set it to an empty string in the request.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # Optionally change the live version of the CollectionSetting. Billing Cadences and other objects that refer to this
          # CollectionSetting will use this version when no overrides are set. Providing `live_version = "latest"` will set the
          # CollectionSetting's `live_version` to its latest version.
          sig { returns(T.nilable(String)) }
          attr_accessor :live_version
          # A lookup key used to retrieve settings dynamically from a static string.
          # This may be up to 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # The ID of the PaymentMethodConfiguration object, which controls which payment methods are displayed to your customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_configuration
          # Payment Method specific configuration to be stored on the object.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions))
           }
          attr_accessor :payment_method_options
          sig {
            params(collection_method: T.nilable(String), display_name: T.nilable(String), live_version: T.nilable(String), lookup_key: T.nilable(String), payment_method_configuration: T.nilable(String), payment_method_options: T.nilable(::Stripe::V2::Billing::CollectionSettingService::UpdateParams::PaymentMethodOptions)).void
           }
          def initialize(
            collection_method: nil,
            display_name: nil,
            live_version: nil,
            lookup_key: nil,
            payment_method_configuration: nil,
            payment_method_options: nil
          ); end
        end
        # Create a CollectionSetting object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CollectionSettingService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::CollectionSetting)
         }
        def create(params = {}, opts = {}); end

        # List all CollectionSetting objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CollectionSettingService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a CollectionSetting by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CollectionSettingService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::CollectionSetting)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update fields on an existing CollectionSetting.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CollectionSettingService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::CollectionSetting)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end