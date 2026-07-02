# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ApiKeyCreateParams < ::Stripe::RequestParams
        class PublicKey < ::Stripe::RequestParams
          class PemKey < ::Stripe::RequestParams
            # The encryption algorithm used with this key (e.g., RSA).
            attr_accessor :algorithm
            # The PEM-encoded public key data. Newlines are required between header/footer and body, and optional within the body.
            attr_accessor :data

            def initialize(algorithm: nil, data: nil)
              @algorithm = algorithm
              @data = data
            end
          end
          # Caller's identifier of the public key. This is used for tracking purposes only, and will be echoed in the response if provided.
          attr_accessor :id
          # PEM-formatted public key.
          attr_accessor :pem_key

          def initialize(id: nil, pem_key: nil)
            @id = id
            @pem_key = pem_key
          end
        end
        # List of connect permissions for this API key.
        attr_accessor :connect_permissions
        # Timestamp at which the key expires. If not provided, the key never expires.
        attr_accessor :expires_at
        # Name for the API key.
        attr_accessor :name
        # Note or description for the API key.
        attr_accessor :note
        # List of permissions for this API key.
        attr_accessor :permissions
        # Public key for encrypting the API key secret.
        # This must a PEM-formatted RSA key suitable for encryption, >= 2048 bits.
        # A public key is required when creating secret keys.
        # Publishable keys are not encrypted and a public key should not be included.
        attr_accessor :public_key
        # Type of the API key to create (secret or publishable).
        attr_accessor :type

        def initialize(
          connect_permissions: nil,
          expires_at: nil,
          name: nil,
          note: nil,
          permissions: nil,
          public_key: nil,
          type: nil
        )
          @connect_permissions = connect_permissions
          @expires_at = expires_at
          @name = name
          @note = note
          @permissions = permissions
          @public_key = public_key
          @type = type
        end
      end
    end
  end
end
