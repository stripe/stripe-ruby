# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        class BankAccount < ::Stripe::RequestParams
          # The country where Stripe provisions the bank account. Each currency supports the country listed in its description. If omitted, Stripe selects that country.
          attr_accessor :country
          # The currency of the bank account to provision. Some currencies require preview or rollout access, as configured for your account.
          attr_accessor :currency

          def initialize(country: nil, currency: nil)
            @country = country
            @currency = currency
          end
        end
        # Properties for creating a bank account FinancialAddress.
        attr_accessor :bank_account
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        attr_accessor :financial_account
        # The type of FinancialAddress to create. Must agree with which branch of financial_address_type_properties is set.
        attr_accessor :type

        def initialize(bank_account: nil, financial_account: nil, type: nil)
          @bank_account = bank_account
          @financial_account = financial_account
          @type = type
        end
      end
    end
  end
end
