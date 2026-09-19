# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class WalletExportExportCredentialsParams < ::Stripe::RequestParams
          class Encryption < ::Stripe::RequestParams
            # Base64url-encoded raw P-256 recipient public key. Stripe does not persist this key material.
            attr_accessor :recipient_public_key
            # Encryption scheme for the response. HPKE uses BASE mode, DHKEM_P256_HKDF_SHA256, HKDF_SHA256, and CHACHA20_POLY1305.
            attr_accessor :type

            def initialize(recipient_public_key: nil, type: nil)
              @recipient_public_key = recipient_public_key
              @type = type
            end
          end
          # Encryption parameters for the exported credentials.
          attr_accessor :encryption

          def initialize(encryption: nil)
            @encryption = encryption
          end
        end
      end
    end
  end
end
