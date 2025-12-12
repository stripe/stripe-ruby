# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      # An API key.
      class ApiKey < APIResource
        class PublishableKey < ::Stripe::StripeObject
          # The plaintext token for the API key.
          sig { returns(T.nilable(String)) }
          def token; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class SecretKey < ::Stripe::StripeObject
          class EncryptedSecret < ::Stripe::StripeObject
            # The encrypted secret data in base64 format.
            sig { returns(String) }
            def ciphertext; end
            # The format of the encrypted secret (e.g., jwe_compact).
            sig { returns(String) }
            def format; end
            # The caller's identifier of the public key provided.
            sig { returns(T.nilable(String)) }
            def recipient_key_id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The encrypted secret for the API key. Only included when a key is first created.
          sig { returns(T.nilable(EncryptedSecret)) }
          def encrypted_secret; end
          # Redacted version of the secret token for display purposes.
          sig { returns(T.nilable(String)) }
          def secret_token_redacted; end
          # The plaintext token for the API key. Only included for testmode keys.
          sig { returns(T.nilable(String)) }
          def token; end
          def self.inner_class_types
            @inner_class_types = {encrypted_secret: EncryptedSecret}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Timestamp when the API key was created.
        sig { returns(String) }
        def created; end
        # Timestamp when the API key expires.
        sig { returns(T.nilable(String)) }
        def expires_at; end
        # Unique identifier of the API key.
        sig { returns(String) }
        def id; end
        # List of IP addresses allowed to use this API key.
        sig { returns(T::Array[String]) }
        def ip_allowlist; end
        # Timestamp when the API key was last used.
        sig { returns(T.nilable(String)) }
        def last_used; end
        # Account that manages this API key (for keys managed by platforms).
        sig { returns(T.nilable(String)) }
        def managed_by; end
        # Name of the API key.
        sig { returns(T.nilable(String)) }
        def name; end
        # Note or description for the API key.
        sig { returns(T.nilable(String)) }
        def note; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Current status of the API key (e.g., active, expired).
        sig { returns(T.nilable(String)) }
        def status; end
        # Type of the API key.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Token set for a publishable key.
        sig { returns(T.nilable(PublishableKey)) }
        def publishable_key; end
        # Token set for a secret key.
        sig { returns(T.nilable(SecretKey)) }
        def secret_key; end
      end
    end
  end
end