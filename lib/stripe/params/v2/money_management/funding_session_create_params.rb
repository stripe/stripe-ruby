# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FundingSessionCreateParams < ::Stripe::RequestParams
        class FinancialAddressOptions < ::Stripe::RequestParams
          class CryptoWallet < ::Stripe::RequestParams
            # Open Enum. The currency the crypto wallet FinancialAddress settles into the FinancialAccount. Required.
            attr_accessor :settlement_currency

            def initialize(settlement_currency: nil)
              @settlement_currency = settlement_currency
            end
          end
          # Options for a crypto wallet FinancialAddress. Required if `crypto_wallet` is requested.
          attr_accessor :crypto_wallet

          def initialize(crypto_wallet: nil)
            @crypto_wallet = crypto_wallet
          end
        end
        # The ID of the Account that owns the FinancialAccount. Required.
        attr_accessor :account
        # The ID of the FinancialAccount to fund. Required.
        attr_accessor :financial_account
        # Per-type options used when creating the FinancialAddress. Required.
        attr_accessor :financial_address_options
        # Open Enum. The types of FinancialAddress that can be funded in this session. At least one is required.
        attr_accessor :financial_address_types
        # The URL the customer is redirected to after completing or abandoning the funding session. Required.
        attr_accessor :return_url

        def initialize(
          account: nil,
          financial_account: nil,
          financial_address_options: nil,
          financial_address_types: nil,
          return_url: nil
        )
          @account = account
          @financial_account = financial_account
          @financial_address_options = financial_address_options
          @financial_address_types = financial_address_types
          @return_url = return_url
        end
      end
    end
  end
end
