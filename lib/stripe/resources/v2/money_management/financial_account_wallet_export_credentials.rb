# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Credentials exported from a FinancialAccount wallet export.
      class FinancialAccountWalletExportCredentials < APIResource
        OBJECT_NAME = "v2.money_management.financial_account_wallet_export_credentials"
        def self.object_name
          "v2.money_management.financial_account_wallet_export_credentials"
        end

        class Wallet < ::Stripe::StripeObject
          class CredentialsEncrypted < ::Stripe::StripeObject
            # Base64url-encoded encrypted wallet credentials. Stripe does not persist this response.
            attr_reader :ciphertext
            # Base64url-encoded HPKE encapsulated key.
            attr_reader :encapsulated_key
            # Encryption scheme used for these credentials.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Public address of the exported wallet.
          attr_reader :address
          # Credentials encrypted to the supplied recipient public key.
          attr_reader :credentials_encrypted
          # Tempo network configured for each stablecoin currency. Keys are lowercase currency codes.
          attr_reader :currency_networks
          # Network family for the wallet address.
          attr_reader :network_type

          def self.inner_class_types
            @inner_class_types = { credentials_encrypted: CredentialsEncrypted }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # End of the fixed one-hour credentials retrieval window.
        attr_reader :credentials_available_until
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Exported wallets and credentials encrypted to the supplied recipient public key.
        attr_reader :wallets

        def self.inner_class_types
          @inner_class_types = { wallets: Wallet }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
