# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A FinancialAddress contains information needed to transfer money to a Financial Account. A Financial Account can have more than one Financial Address.
      class FinancialAddress < APIResource
        class BankAccount < ::Stripe::StripeObject
          class Aba < ::Stripe::StripeObject
            class AccountHolderAddress < ::Stripe::StripeObject
              # City.
              sig { returns(String) }
              def city; end
              # Country.
              sig { returns(String) }
              def country; end
              # Address line 1.
              sig { returns(String) }
              def line1; end
              # Address line 2.
              sig { returns(String) }
              def line2; end
              # Postal code.
              sig { returns(String) }
              def postal_code; end
              # State or province.
              sig { returns(String) }
              def state; end
              # Town or suburb.
              sig { returns(String) }
              def town; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The address of the account holder.
            sig { returns(T.nilable(AccountHolderAddress)) }
            def account_holder_address; end
            # The name of the account holder.
            sig { returns(T.nilable(String)) }
            def account_holder_name; end
            # The full account number.
            sig { returns(T.nilable(String)) }
            def account_number; end
            # The name of the bank.
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # The SWIFT/BIC code.
            sig { returns(T.nilable(String)) }
            def bic; end
            # The last four digits of the account number.
            sig { returns(String) }
            def last4; end
            # The ABA routing number.
            sig { returns(String) }
            def routing_number; end
            def self.inner_class_types
              @inner_class_types = {account_holder_address: AccountHolderAddress}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class BreB < ::Stripe::StripeObject
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The BRE-B payment key.
            sig { returns(String) }
            def bre_b_key; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Clabe < ::Stripe::StripeObject
            # Attribute for field account_holder_name
            sig { returns(String) }
            def account_holder_name; end
            # Attribute for field clabe
            sig { returns(String) }
            def clabe; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Cpa < ::Stripe::StripeObject
            # Attribute for field account_holder_name
            sig { returns(String) }
            def account_holder_name; end
            # Attribute for field account_number
            sig { returns(T.nilable(String)) }
            def account_number; end
            # Attribute for field bank_name
            sig { returns(String) }
            def bank_name; end
            # Attribute for field bic
            sig { returns(T.nilable(String)) }
            def bic; end
            # Attribute for field institution_number
            sig { returns(String) }
            def institution_number; end
            # Attribute for field last4
            sig { returns(String) }
            def last4; end
            # Attribute for field transit_number
            sig { returns(String) }
            def transit_number; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Iban < ::Stripe::StripeObject
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The name of the bank.
            sig { returns(String) }
            def bank_name; end
            # The SWIFT/BIC code.
            sig { returns(String) }
            def bic; end
            # The country of the bank account.
            sig { returns(String) }
            def country; end
            # The full IBAN.
            sig { returns(T.nilable(String)) }
            def iban; end
            # The last four digits of the IBAN.
            sig { returns(String) }
            def last4; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Nip < ::Stripe::StripeObject
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The NIP bank code.
            sig { returns(String) }
            def bank_code; end
            # The name of the bank.
            sig { returns(String) }
            def bank_name; end
            # The NUBAN account number.
            sig { returns(String) }
            def nuban; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Pix < ::Stripe::StripeObject
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The Pix BR code.
            sig { returns(String) }
            def br_code; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class SortCode < ::Stripe::StripeObject
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The full account number.
            sig { returns(T.nilable(String)) }
            def account_number; end
            # The SWIFT/BIC code.
            sig { returns(T.nilable(String)) }
            def bic; end
            # The full IBAN.
            sig { returns(T.nilable(String)) }
            def iban; end
            # The last four digits of the account number.
            sig { returns(String) }
            def last4; end
            # The sort code.
            sig { returns(String) }
            def sort_code; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # ABA bank account details (US).
          sig { returns(T.nilable(Aba)) }
          def aba; end
          # BRE-B bank account details (Colombia).
          sig { returns(T.nilable(BreB)) }
          def bre_b; end
          # Attribute for field clabe
          sig { returns(T.nilable(Clabe)) }
          def clabe; end
          # The country of the bank account.
          sig { returns(T.nilable(String)) }
          def country; end
          # Attribute for field cpa
          sig { returns(T.nilable(Cpa)) }
          def cpa; end
          # Open Enum. The currency of the bank account.
          sig { returns(String) }
          def currency; end
          # IBAN bank account details.
          sig { returns(T.nilable(Iban)) }
          def iban; end
          # NIP bank account details (Nigeria).
          sig { returns(T.nilable(Nip)) }
          def nip; end
          # Pix bank account details (Brazil).
          sig { returns(T.nilable(Pix)) }
          def pix; end
          # Sort code bank account details (UK).
          sig { returns(T.nilable(SortCode)) }
          def sort_code; end
          # Open Enum. The type of bank account details.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              aba: Aba,
              bre_b: BreB,
              clabe: Clabe,
              cpa: Cpa,
              iban: Iban,
              nip: Nip,
              pix: Pix,
              sort_code: SortCode,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CryptoWallet < ::Stripe::StripeObject
          class SupportedNetworkDetails < ::Stripe::StripeObject
            # The token currencies supported on this network.
            sig { returns(T::Array[String]) }
            def supported_token_currencies; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field address
          sig { returns(String) }
          def address; end
          # Attribute for field memo
          sig { returns(T.nilable(String)) }
          def memo; end
          # Attribute for field network
          sig { returns(String) }
          def network; end
          # A map of supported network names to their details, including supported token currencies.
          sig { returns(T::Hash[String, SupportedNetworkDetails]) }
          def supported_network_details; end
          def self.inner_class_types
            @inner_class_types = {supported_network_details: SupportedNetworkDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the Account that owns this FinancialAddress.
        sig { returns(T.nilable(String)) }
        def account; end
        # Bank account details for this FinancialAddress.
        sig { returns(T.nilable(BankAccount)) }
        def bank_account; end
        # The creation timestamp of the FinancialAddress.
        sig { returns(String) }
        def created; end
        # Attribute for field crypto_wallet
        sig { returns(T.nilable(CryptoWallet)) }
        def crypto_wallet; end
        # The ID of the FinancialAccount this FinancialAddress corresponds to.
        sig { returns(String) }
        def financial_account; end
        # The ID of the FinancialAddress.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Attribute for field settlement_currency
        sig { returns(T.nilable(String)) }
        def settlement_currency; end
        # Closed Enum. The status of the FinancialAddress.
        sig { returns(String) }
        def status; end
        # Open Enum. The type of FinancialAddress.
        sig { returns(String) }
        def type; end
      end
    end
  end
end