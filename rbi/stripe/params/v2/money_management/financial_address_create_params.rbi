# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        class BankAccount < ::Stripe::RequestParams
          # The country for the bank account. Used to select the appropriate rails (e.g. for SEPA).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # The currency of the bank account to provision.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          sig { params(country: T.nilable(String), currency: String).void }
          def initialize(country: nil, currency: nil); end
        end
        class CryptoWallet < ::Stripe::RequestParams
          # The blockchain network of the crypto wallet.
          sig { returns(String) }
          def network; end
          sig { params(_network: String).returns(String) }
          def network=(_network); end
          sig { params(network: String).void }
          def initialize(network: nil); end
        end
        # Properties for creating a bank account FinancialAddress.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::BankAccount))
         }
        def bank_account; end
        sig {
          params(_bank_account: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::BankAccount)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::BankAccount))
         }
        def bank_account=(_bank_account); end
        # Properties for creating a crypto wallet FinancialAddress.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoWallet))
         }
        def crypto_wallet; end
        sig {
          params(_crypto_wallet: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoWallet)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoWallet))
         }
        def crypto_wallet=(_crypto_wallet); end
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Open Enum. The currency the FinancialAddress settles into the FinancialAccount.
        sig { returns(T.nilable(String)) }
        def settlement_currency; end
        sig { params(_settlement_currency: T.nilable(String)).returns(T.nilable(String)) }
        def settlement_currency=(_settlement_currency); end
        # The type of FinancialAddress to create. Must agree with which branch of financial_address_type_properties is set.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(bank_account: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::BankAccount), crypto_wallet: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoWallet), financial_account: String, settlement_currency: T.nilable(String), type: String).void
         }
        def initialize(
          bank_account: nil,
          crypto_wallet: nil,
          financial_account: nil,
          settlement_currency: nil,
          type: nil
        ); end
      end
    end
  end
end