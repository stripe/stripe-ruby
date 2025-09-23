# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A FinancialAddress contains information needed to transfer money to a Financial Account. A Financial Account can have more than one Financial Address.
      class FinancialAddress < APIResource
        class Credentials < Stripe::StripeObject
          class GbBankAccount < Stripe::StripeObject
            # The account holder name to be used during bank transference.
            sig { returns(String) }
            def account_holder_name; end
            # The account number of the UK Bank Account.
            sig { returns(T.nilable(String)) }
            def account_number; end
            # The last four digits of the UK Bank Account number. This will always be returned.
            # To view the full account number when retrieving or listing FinancialAddresses, use the `include` request parameter.
            sig { returns(String) }
            def last4; end
            # The sort code of the UK Bank Account.
            sig { returns(String) }
            def sort_code; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class UsBankAccount < Stripe::StripeObject
            # The account number of the US Bank Account.
            sig { returns(T.nilable(String)) }
            def account_number; end
            # The name of the Bank.
            sig { returns(T.nilable(String)) }
            def bank_name; end
            # The last four digits of the US Bank Account number. This will always be returned.
            # To view the full account number when retrieving or listing FinancialAddresses, use the `include` request parameter.
            sig { returns(String) }
            def last4; end
            # The routing number of the US Bank Account.
            sig { returns(String) }
            def routing_number; end
            # The swift code of the bank or financial institution.
            sig { returns(T.nilable(String)) }
            def swift_code; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Open Enum. The type of Credentials that are provisioned for the FinancialAddress.
          sig { returns(String) }
          def type; end
          # The credentials of the UK Bank Account for the FinancialAddress. This contains unique banking details such as the sort code, account number, etc. of a UK bank account.
          sig { returns(T.nilable(GbBankAccount)) }
          def gb_bank_account; end
          # The credentials of the US Bank Account for the FinancialAddress. This contains unique banking details such as the routing number, account number, etc. of a US bank account.
          sig { returns(T.nilable(UsBankAccount)) }
          def us_bank_account; end
          def self.inner_class_types
            @inner_class_types = {gb_bank_account: GbBankAccount, us_bank_account: UsBankAccount}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The creation timestamp of the FinancialAddress.
        sig { returns(String) }
        def created; end
        # Object indicates the type of credentials that have been allocated and attached to the FinancialAddress.
        # It contains all necessary banking details with which to perform money movements with the FinancialAddress.
        # This field is only available for FinancialAddresses with an active status.
        sig { returns(T.nilable(Credentials)) }
        def credentials; end
        # Open Enum. The currency the FinancialAddress supports.
        sig { returns(String) }
        def currency; end
        # A ID of the FinancialAccount this FinancialAddress corresponds to.
        sig { returns(String) }
        def financial_account; end
        # The ID of a FinancialAddress.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Closed Enum. An enum representing the status of the FinancialAddress. This indicates whether or not the FinancialAddress can be used for any money movement flows.
        sig { returns(String) }
        def status; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end