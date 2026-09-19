# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Credentials exported from a FinancialAccount wallet export.
      class FinancialAccountWalletExportCredentials < APIResource
        class Wallet < ::Stripe::StripeObject
          class CredentialsEncrypted < ::Stripe::StripeObject
            # Base64url-encoded encrypted wallet credentials. Stripe does not persist this response.
            sig { returns(String) }
            def ciphertext; end
            # Base64url-encoded HPKE encapsulated key.
            sig { returns(String) }
            def encapsulated_key; end
            # Encryption scheme used for these credentials.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Public address of the exported wallet.
          sig { returns(String) }
          def address; end
          # Credentials encrypted to the supplied recipient public key.
          sig { returns(CredentialsEncrypted) }
          def credentials_encrypted; end
          # Tempo network configured for each stablecoin currency. Keys are lowercase currency codes.
          sig { returns(T::Hash[String, String]) }
          def currency_networks; end
          # Network family for the wallet address.
          sig { returns(String) }
          def network_type; end
          def self.inner_class_types
            @inner_class_types = {credentials_encrypted: CredentialsEncrypted}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # End of the fixed one-hour credentials retrieval window.
        sig { returns(String) }
        def credentials_available_until; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Exported wallets and credentials encrypted to the supplied recipient public key.
        sig { returns(T::Array[Wallet]) }
        def wallets; end
      end
    end
  end
end