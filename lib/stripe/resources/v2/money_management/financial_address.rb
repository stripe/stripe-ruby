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

        class Credentials < Stripe::StripeObject
          class GbBankAccount < Stripe::StripeObject
            # The account holder name to be used during bank transference.
            attr_reader :account_holder_name
            # The account number of the UK Bank Account.
            attr_reader :account_number
            # The last four digits of the UK Bank Account number. This will always be returned.
            # To view the full account number when retrieving or listing FinancialAddresses, use the `include` request parameter.
            attr_reader :last4
            # The sort code of the UK Bank Account.
            attr_reader :sort_code

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class SepaBankAccount < Stripe::StripeObject
            # The account holder name to be used during bank transfers.
            attr_reader :account_holder_name
            # The name of the Bank.
            attr_reader :bank_name
            # The BIC of the SEPA Bank Account.
            attr_reader :bic
            # The originating country of the SEPA Bank account.
            attr_reader :country
            # The IBAN of the SEPA Bank Account.
            attr_reader :iban
            # The last four digits of the SEPA Bank Account number. This will always be returned.
            # To view the full account number when retrieving or listing FinancialAddresses, use the `include` request parameter.
            attr_reader :last4

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class UsBankAccount < Stripe::StripeObject
            # The account number of the US Bank Account.
            attr_reader :account_number
            # The name of the Bank.
            attr_reader :bank_name
            # The last four digits of the US Bank Account number. This will always be returned.
            # To view the full account number when retrieving or listing FinancialAddresses, use the `include` request parameter.
            attr_reader :last4
            # The routing number of the US Bank Account.
            attr_reader :routing_number
            # The swift code of the bank or financial institution.
            attr_reader :swift_code

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Open Enum. The type of Credentials that are provisioned for the FinancialAddress.
          attr_reader :type
          # The credentials of the UK Bank Account for the FinancialAddress. This contains unique banking details such as the sort code, account number, etc. of a UK bank account.
          attr_reader :gb_bank_account
          # The credentials of the SEPA Bank Account for the FinancialAddress. This contains unique banking details such as the IBAN, BIC, etc. of a SEPA bank account.
          attr_reader :sepa_bank_account
          # The credentials of the US Bank Account for the FinancialAddress. This contains unique banking details such as the routing number, account number, etc. of a US bank account.
          attr_reader :us_bank_account

          def self.inner_class_types
            @inner_class_types = {
              gb_bank_account: GbBankAccount,
              sepa_bank_account: SepaBankAccount,
              us_bank_account: UsBankAccount,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The creation timestamp of the FinancialAddress.
        attr_reader :created
        # Object indicates the type of credentials that have been allocated and attached to the FinancialAddress.
        # It contains all necessary banking details with which to perform money movements with the FinancialAddress.
        # This field is only available for FinancialAddresses with an active status.
        attr_reader :credentials
        # Open Enum. The currency the FinancialAddress supports.
        attr_reader :currency
        # A ID of the FinancialAccount this FinancialAddress corresponds to.
        attr_reader :financial_account
        # The ID of a FinancialAddress.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Open Enum. The currency the FinancialAddress settles into the FinancialAccount.
        attr_reader :settlement_currency
        # Closed Enum. An enum representing the status of the FinancialAddress. This indicates whether or not the FinancialAddress can be used for any money movement flows.
        attr_reader :status
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { credentials: Credentials }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
