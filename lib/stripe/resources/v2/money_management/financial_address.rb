# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A FinancialAddress contains information needed to transfer money to a Financial Account. A Financial Account can have more than one Financial Address.
      class FinancialAddress < APIResource
        OBJECT_NAME = "v2.money_management.financial_address"
        def self.object_name
          "v2.money_management.financial_address"
        end

        class BankAccount < ::Stripe::StripeObject
          class Aba < ::Stripe::StripeObject
            class AccountHolderAddress < ::Stripe::StripeObject
              # City.
              attr_reader :city
              # Country.
              attr_reader :country
              # Address line 1.
              attr_reader :line1
              # Address line 2.
              attr_reader :line2
              # Postal code.
              attr_reader :postal_code
              # State or province.
              attr_reader :state
              # Town or suburb.
              attr_reader :town

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The address of the account holder.
            attr_reader :account_holder_address
            # The name of the account holder.
            attr_reader :account_holder_name
            # The full account number.
            attr_reader :account_number
            # The name of the bank.
            attr_reader :bank_name
            # The last four digits of the account number.
            attr_reader :last4
            # The ABA routing number.
            attr_reader :routing_number

            def self.inner_class_types
              @inner_class_types = { account_holder_address: AccountHolderAddress }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Clabe < ::Stripe::StripeObject
            # The name of the account holder.
            attr_reader :account_holder_name
            # The CLABE interbank code.
            attr_reader :clabe

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Cpa < ::Stripe::StripeObject
            # The name of the account holder.
            attr_reader :account_holder_name
            # The full account number.
            attr_reader :account_number
            # The name of the bank.
            attr_reader :bank_name
            # The institution number.
            attr_reader :institution_number
            # The last four digits of the account number.
            attr_reader :last4
            # The transit number.
            attr_reader :transit_number

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Iban < ::Stripe::StripeObject
            # The name of the account holder.
            attr_reader :account_holder_name
            # The name of the bank.
            attr_reader :bank_name
            # The country of the bank account.
            attr_reader :country
            # The full IBAN.
            attr_reader :iban
            # The last four digits of the IBAN.
            attr_reader :last4

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class SortCode < ::Stripe::StripeObject
            # The name of the account holder.
            attr_reader :account_holder_name
            # The full account number.
            attr_reader :account_number
            # The last four digits of the account number.
            attr_reader :last4
            # The sort code.
            attr_reader :sort_code

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # ABA bank account details (US).
          attr_reader :aba
          # CLABE bank account details (Mexico).
          attr_reader :clabe
          # The country of the bank account.
          attr_reader :country
          # CPA bank account details (Canada).
          attr_reader :cpa
          # Open Enum. The currency of the bank account.
          attr_reader :currency
          # IBAN bank account details.
          attr_reader :iban
          # Sort code bank account details (UK).
          attr_reader :sort_code
          # Open Enum. The type of bank account details.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { aba: Aba, clabe: Clabe, cpa: Cpa, iban: Iban, sort_code: SortCode }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CryptoWallet < ::Stripe::StripeObject
          # The blockchain wallet address.
          attr_reader :address
          # An optional memo or tag required by some networks to identify the recipient.
          attr_reader :memo
          # Open Enum. The blockchain network of the crypto wallet.
          attr_reader :network

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Bank account details for this FinancialAddress.
        attr_reader :bank_account
        # The creation timestamp of the FinancialAddress.
        attr_reader :created
        # Crypto wallet details for this FinancialAddress.
        attr_reader :crypto_wallet
        # The ID of the FinancialAccount this FinancialAddress corresponds to.
        attr_reader :financial_account
        # The ID of the FinancialAddress.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Open Enum. The currency the FinancialAddress settles into the FinancialAccount.
        attr_reader :settlement_currency
        # Closed Enum. The status of the FinancialAddress.
        attr_reader :status
        # Open Enum. The type of FinancialAddress.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { bank_account: BankAccount, crypto_wallet: CryptoWallet }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
