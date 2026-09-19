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
          class Clabe < ::Stripe::StripeObject
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The CLABE interbank code.
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
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The full account number.
            sig { returns(T.nilable(String)) }
            def account_number; end
            # The name of the bank.
            sig { returns(String) }
            def bank_name; end
            # The institution number.
            sig { returns(String) }
            def institution_number; end
            # The last four digits of the account number.
            sig { returns(String) }
            def last4; end
            # The transit number.
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
          class SortCode < ::Stripe::StripeObject
            # The name of the account holder.
            sig { returns(String) }
            def account_holder_name; end
            # The full account number.
            sig { returns(T.nilable(String)) }
            def account_number; end
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
          # CLABE bank account details (Mexico).
          sig { returns(T.nilable(Clabe)) }
          def clabe; end
          # The country of the bank account.
          sig { returns(T.nilable(String)) }
          def country; end
          # CPA bank account details (Canada).
          sig { returns(T.nilable(Cpa)) }
          def cpa; end
          # Open Enum. The currency of the bank account.
          sig { returns(String) }
          def currency; end
          # IBAN bank account details.
          sig { returns(T.nilable(Iban)) }
          def iban; end
          # Sort code bank account details (UK).
          sig { returns(T.nilable(SortCode)) }
          def sort_code; end
          # Open Enum. The type of bank account details.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {aba: Aba, clabe: Clabe, cpa: Cpa, iban: Iban, sort_code: SortCode}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CryptoWallet < ::Stripe::StripeObject
          # The blockchain wallet address.
          sig { returns(String) }
          def address; end
          # An optional memo or tag required by some networks to identify the recipient.
          sig { returns(T.nilable(String)) }
          def memo; end
          # Open Enum. The blockchain network of the crypto wallet.
          sig { returns(String) }
          def network; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Bank account details for this FinancialAddress.
        sig { returns(T.nilable(BankAccount)) }
        def bank_account; end
        # The creation timestamp of the FinancialAddress.
        sig { returns(String) }
        def created; end
        # Crypto wallet details for this FinancialAddress.
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
        # Open Enum. The currency the FinancialAddress settles into the FinancialAccount.
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