# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    # A FinancialAddress contains information needed to transfer money to a Financial Account. A Financial Account can have more than one Financial Address.
    class FinancialAddress < APIResource
      class Credentials < Stripe::StripeObject
        class GbBankAccount < Stripe::StripeObject
          # The account holder name to be used during bank transference.
          sig { returns(String) }
          attr_reader :account_holder_name
          # The account number of the UK Bank Account.
          sig { returns(T.nilable(String)) }
          attr_reader :account_number
          # The last four digits of the UK Bank Account number. This will always be returned.
          # To view the full account number when retrieving or listing FinancialAddresses, use the `include` request parameter.
          sig { returns(String) }
          attr_reader :last4
          # The sort code of the UK Bank Account.
          sig { returns(String) }
          attr_reader :sort_code
        end
        class UsBankAccount < Stripe::StripeObject
          # The account number of the US Bank Account.
          sig { returns(T.nilable(String)) }
          attr_reader :account_number
          # The name of the Bank.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          # The last four digits of the US Bank Account number. This will always be returned.
          # To view the full account number when retrieving or listing FinancialAddresses, use the `include` request parameter.
          sig { returns(String) }
          attr_reader :last4
          # The routing number of the US Bank Account.
          sig { returns(String) }
          attr_reader :routing_number
          # The swift code of the bank or financial institution.
          sig { returns(T.nilable(String)) }
          attr_reader :swift_code
        end
        # Open Enum. The type of Credentials that are provisioned for the FinancialAddress.
        sig { returns(String) }
        attr_reader :type
        # The credentials of the UK Bank Account for the FinancialAddress. This contains unique banking details such as the sort code, account number, etc. of a UK bank account.
        sig { returns(T.nilable(GbBankAccount)) }
        attr_reader :gb_bank_account
        # The credentials of the US Bank Account for the FinancialAddress. This contains unique banking details such as the routing number, account number, etc. of a US bank account.
        sig { returns(T.nilable(UsBankAccount)) }
        attr_reader :us_bank_account
      end
      # The creation timestamp of the FinancialAddress.
      sig { returns(String) }
      attr_reader :created
      # Object indicates the type of credentials that have been allocated and attached to the FinancialAddress.
      # It contains all necessary banking details with which to perform money movements with the FinancialAddress.
      # This field is only available for FinancialAddresses with an active status.
      sig { returns(T.nilable(Credentials)) }
      attr_reader :credentials
      # Open Enum. The currency the FinancialAddress supports.
      sig { returns(String) }
      attr_reader :currency
      # A ID of the FinancialAccount this FinancialAddress corresponds to.
      sig { returns(String) }
      attr_reader :financial_account
      # The ID of a FinancialAddress.
      sig { returns(String) }
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      attr_reader :object
      # Closed Enum. An enum representing the status of the FinancialAddress. This indicates whether or not the FinancialAddress can be used for any money movement flows.
      sig { returns(String) }
      attr_reader :status
    end
  end
end