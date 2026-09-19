# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class WalletExportExportCredentialsParams < ::Stripe::RequestParams
          class Encryption < ::Stripe::RequestParams
            # Base64url-encoded raw P-256 recipient public key. Stripe does not persist this key material.
            sig { returns(String) }
            def recipient_public_key; end
            sig { params(_recipient_public_key: String).returns(String) }
            def recipient_public_key=(_recipient_public_key); end
            # Encryption scheme for the response. HPKE uses BASE mode, DHKEM_P256_HKDF_SHA256, HKDF_SHA256, and CHACHA20_POLY1305.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(recipient_public_key: String, type: String).void }
            def initialize(recipient_public_key: nil, type: nil); end
          end
          # Encryption parameters for the exported credentials.
          sig {
            returns(::Stripe::V2::MoneyManagement::FinancialAccounts::WalletExportExportCredentialsParams::Encryption)
           }
          def encryption; end
          sig {
            params(_encryption: ::Stripe::V2::MoneyManagement::FinancialAccounts::WalletExportExportCredentialsParams::Encryption).returns(::Stripe::V2::MoneyManagement::FinancialAccounts::WalletExportExportCredentialsParams::Encryption)
           }
          def encryption=(_encryption); end
          sig {
            params(encryption: ::Stripe::V2::MoneyManagement::FinancialAccounts::WalletExportExportCredentialsParams::Encryption).void
           }
          def initialize(encryption: nil); end
        end
      end
    end
  end
end