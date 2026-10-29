# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountCreateParams < ::Stripe::RequestParams
          # The Account Number of the bank account.
          attr_accessor :account_number
          # Closed Enum. The type of the bank account (checking or savings).
          attr_accessor :bank_account_type
          # The currency of the bank account.
          attr_accessor :currency
          # The IBAN of the bank account.
          attr_accessor :iban
          # The Sort Code of the bank account.
          attr_accessor :sort_code

          def initialize(
            account_number: nil,
            bank_account_type: nil,
            currency: nil,
            iban: nil,
            sort_code: nil
          )
            @account_number = account_number
            @bank_account_type = bank_account_type
            @currency = currency
            @iban = iban
            @sort_code = sort_code
          end
        end
      end
    end
  end
end
