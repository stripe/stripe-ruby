# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FundingSessionCreateParams < ::Stripe::RequestParams
        class FinancialAddressOptions < ::Stripe::RequestParams
          class CryptoWallet < ::Stripe::RequestParams
            # Open Enum. The currency the crypto wallet FinancialAddress settles into the FinancialAccount. Required.
            sig { returns(String) }
            def settlement_currency; end
            sig { params(_settlement_currency: String).returns(String) }
            def settlement_currency=(_settlement_currency); end
            sig { params(settlement_currency: String).void }
            def initialize(settlement_currency: nil); end
          end
          # Options for a crypto wallet FinancialAddress. Required if `crypto_wallet` is requested.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions::CryptoWallet))
           }
          def crypto_wallet; end
          sig {
            params(_crypto_wallet: T.nilable(::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions::CryptoWallet)).returns(T.nilable(::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions::CryptoWallet))
           }
          def crypto_wallet=(_crypto_wallet); end
          sig {
            params(crypto_wallet: T.nilable(::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions::CryptoWallet)).void
           }
          def initialize(crypto_wallet: nil); end
        end
        # The ID of the Account that owns the FinancialAccount. Required.
        sig { returns(String) }
        def account; end
        sig { params(_account: String).returns(String) }
        def account=(_account); end
        # The ID of the FinancialAccount to fund. Required.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Per-type options used when creating the FinancialAddress. Required.
        sig {
          returns(::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions)
         }
        def financial_address_options; end
        sig {
          params(_financial_address_options: ::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions).returns(::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions)
         }
        def financial_address_options=(_financial_address_options); end
        # Open Enum. The types of FinancialAddress that can be funded in this session. At least one is required.
        sig { returns(T::Array[String]) }
        def financial_address_types; end
        sig { params(_financial_address_types: T::Array[String]).returns(T::Array[String]) }
        def financial_address_types=(_financial_address_types); end
        # The URL the customer is redirected to after completing or abandoning the funding session. Required.
        sig { returns(String) }
        def return_url; end
        sig { params(_return_url: String).returns(String) }
        def return_url=(_return_url); end
        sig {
          params(account: String, financial_account: String, financial_address_options: ::Stripe::V2::MoneyManagement::FundingSessionCreateParams::FinancialAddressOptions, financial_address_types: T::Array[String], return_url: String).void
         }
        def initialize(
          account: nil,
          financial_account: nil,
          financial_address_options: nil,
          financial_address_types: nil,
          return_url: nil
        ); end
      end
    end
  end
end