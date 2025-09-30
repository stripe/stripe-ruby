# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountCreateParams < Stripe::RequestParams
          class ConfirmationOfPayee < Stripe::RequestParams
            # The business type to be checked against. Legal entity information will be used if unspecified.
            # Closed enum.
            attr_accessor :business_type
            # User specifies whether Confirmation of Payee is automatically initiated when creating the bank account.
            attr_accessor :initiate
            # The name to be checked against. Legal entity information will be used if unspecified.
            attr_accessor :name

            def initialize(business_type: nil, initiate: nil, name: nil)
              @business_type = business_type
              @initiate = initiate
              @name = name
            end
          end
          # The Account Number of the bank account.
          attr_accessor :account_number
          # Closed Enum. The type of the bank account (checking or savings).
          attr_accessor :bank_account_type
          # Whether or not to automatically perform Confirmation of Payee to verify the users information
          # against what was provided by the bank. Doing so is required for all bank accounts not owned
          # by you before making domestic UK OutboundPayments.
          attr_accessor :confirmation_of_payee
          # The Sort Code of the bank account.
          attr_accessor :sort_code

          def initialize(
            account_number: nil,
            bank_account_type: nil,
            confirmation_of_payee: nil,
            sort_code: nil
          )
            @account_number = account_number
            @bank_account_type = bank_account_type
            @confirmation_of_payee = confirmation_of_payee
            @sort_code = sort_code
          end
        end
      end
    end
  end
end
