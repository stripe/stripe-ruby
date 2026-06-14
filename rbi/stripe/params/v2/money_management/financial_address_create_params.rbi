# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        class CryptoProperties < ::Stripe::RequestParams
          # The blockchain network of the crypto wallet.
          sig { returns(String) }
          def network; end
          sig { params(_network: String).returns(String) }
          def network=(_network); end
          sig { params(network: String).void }
          def initialize(network: nil); end
        end
        class SepaBankAccount < ::Stripe::RequestParams
          # The originating country of the SEPA Bank account.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        # Properties needed to create a FinancialAddress for an FA with USDC currency.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoProperties))
         }
        def crypto_properties; end
        sig {
          params(_crypto_properties: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoProperties)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoProperties))
         }
        def crypto_properties=(_crypto_properties); end
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Optional SEPA Bank account options, used to configure the type of SEPA Bank account to create, such as the originating country.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount))
         }
        def sepa_bank_account; end
        sig {
          params(_sepa_bank_account: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount))
         }
        def sepa_bank_account=(_sepa_bank_account); end
        # Open Enum. The currency the FinancialAddress settles into the FinancialAccount. Currently, only the `usd`, `gbp` and `usdc` values are supported.
        sig { returns(T.nilable(String)) }
        def settlement_currency; end
        sig { params(_settlement_currency: T.nilable(String)).returns(T.nilable(String)) }
        def settlement_currency=(_settlement_currency); end
        # The type of FinancialAddress details to provision.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(crypto_properties: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::CryptoProperties), financial_account: String, sepa_bank_account: T.nilable(::Stripe::V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount), settlement_currency: T.nilable(String), type: String).void
         }
        def initialize(
          crypto_properties: nil,
          financial_account: nil,
          sepa_bank_account: nil,
          settlement_currency: nil,
          type: nil
        ); end
      end
    end
  end
end