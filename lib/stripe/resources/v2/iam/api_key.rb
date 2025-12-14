# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      # An API key.
      class ApiKey < APIResource
        OBJECT_NAME = "v2.iam.api_key"
        def self.object_name
          "v2.iam.api_key"
        end

        class ManagedBy < ::Stripe::StripeObject
          class Application < ::Stripe::StripeObject
            # Identifier of the application.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The type of entity.
          attr_reader :type
          # An application.
          attr_reader :application

          def self.inner_class_types
            @inner_class_types = { application: Application }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PublishableKey < ::Stripe::StripeObject
          # The plaintext token for the API key.
          attr_reader :token

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
            attr_reader :ciphertext
            # The format of the encrypted secret (e.g., jwe_compact).
            attr_reader :format
            # The caller's identifier of the public key provided.
            attr_reader :recipient_key_id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The encrypted secret for the API key. Only included when a key is first created.
          attr_reader :encrypted_secret
          # Redacted version of the secret token for display purposes.
          attr_reader :secret_token_redacted
          # The plaintext token for the API key. Only included for testmode keys.
          attr_reader :token

          def self.inner_class_types
            @inner_class_types = { encrypted_secret: EncryptedSecret }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Timestamp when the API key was created.
        attr_reader :created
        # Timestamp when the API key expires.
        attr_reader :expires_at
        # Unique identifier of the API key.
        attr_reader :id
        # List of IP addresses allowed to use this API key. Addresses use IPv4 protocol, and may be a CIDR range (e.g., [100.10.38.255, 100.10.38.0/24]).
        attr_reader :ip_allowlist
        # Timestamp when the API key was last used.
        attr_reader :last_used
        # Account that manages this API key (for keys managed by platforms).
        attr_reader :managed_by
        # Name of the API key.
        attr_reader :name
        # Note or description for the API key.
        attr_reader :note
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Current status of the API key (e.g., active, expired).
        attr_reader :status
        # Type of the API key.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Token set for a publishable key.
        attr_reader :publishable_key
        # Token set for a secret key.
        attr_reader :secret_key

        def self.inner_class_types
          @inner_class_types = {
            managed_by: ManagedBy,
            publishable_key: PublishableKey,
            secret_key: SecretKey,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
