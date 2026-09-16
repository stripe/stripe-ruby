# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        class BankAccount < ::Stripe::RequestParams
          # The country for the bank account. Used to select the appropriate rails (e.g. for SEPA).
          attr_accessor :country
          # The currency of the bank account to provision.
          attr_accessor :currency

          def initialize(country: nil, currency: nil)
            @country = country
            @currency = currency
          end
        end

        class CryptoWallet < ::Stripe::RequestParams
          # The blockchain network of the crypto wallet.
          attr_accessor :network

          def initialize(network: nil)
            @network = network
          end
        end
        # Properties for creating a bank account FinancialAddress.
        attr_accessor :bank_account
        # Attribute for param field crypto_wallet
        attr_accessor :crypto_wallet
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        attr_accessor :financial_account
        # Attribute for param field settlement_currency
        attr_accessor :settlement_currency
        # The type of FinancialAddress to create. Must agree with which branch of financial_address_type_properties is set.
        attr_accessor :type

        def initialize(
          bank_account: nil,
          crypto_wallet: nil,
          financial_account: nil,
          settlement_currency: nil,
          type: nil
        )
          @bank_account = bank_account
          @crypto_wallet = crypto_wallet
          @financial_account = financial_account
          @settlement_currency = settlement_currency
          @type = type
        end
      end
    end
  end
end
