# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        class CryptoProperties < ::Stripe::RequestParams
          # The blockchain network of the crypto wallet.
          attr_accessor :network

          def initialize(network: nil)
            @network = network
          end
        end

        class SepaBankAccount < ::Stripe::RequestParams
          # The originating country of the SEPA Bank account.
          attr_accessor :country

          def initialize(country: nil)
            @country = country
          end
        end
        # Properties needed to create a FinancialAddress for an FA with USDC currency.
        attr_accessor :crypto_properties
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        attr_accessor :financial_account
        # Optional SEPA Bank account options, used to configure the type of SEPA Bank account to create, such as the originating country.
        attr_accessor :sepa_bank_account
        # Open Enum. The currency the FinancialAddress settles into the FinancialAccount. Currently, only the `usd`, `gbp` and `usdc` values are supported.
        attr_accessor :settlement_currency
        # The type of FinancialAddress details to provision.
        attr_accessor :type

        def initialize(
          crypto_properties: nil,
          financial_account: nil,
          sepa_bank_account: nil,
          settlement_currency: nil,
          type: nil
        )
          @crypto_properties = crypto_properties
          @financial_account = financial_account
          @sepa_bank_account = sepa_bank_account
          @settlement_currency = settlement_currency
          @type = type
        end
      end
    end
  end
end
