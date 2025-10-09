# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        class SepaBankAccount < ::Stripe::RequestParams
          # The originating country of the SEPA Bank account.
          attr_accessor :country

          def initialize(country: nil)
            @country = country
          end
        end
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        attr_accessor :financial_account
        # Optional SEPA Bank account options, used to configure the type of SEPA Bank account to create, such as the originating country.
        attr_accessor :sepa_bank_account
        # The type of FinancialAddress details to provision.
        attr_accessor :type

        def initialize(financial_account: nil, sepa_bank_account: nil, type: nil)
          @financial_account = financial_account
          @sepa_bank_account = sepa_bank_account
          @type = type
        end
      end
    end
  end
end
