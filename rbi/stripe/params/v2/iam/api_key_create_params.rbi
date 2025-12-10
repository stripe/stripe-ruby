# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ApiKeyCreateParams < ::Stripe::RequestParams
        class PublicKey < ::Stripe::RequestParams
          class PemKey < ::Stripe::RequestParams
            # The encryption algorithm used with this key (e.g., RSA).
            sig { returns(String) }
            def algorithm; end
            sig { params(_algorithm: String).returns(String) }
            def algorithm=(_algorithm); end
            # The PEM-encoded public key data. Newlines are required between header/footer and body, and optional within the body.
            sig { returns(String) }
            def data; end
            sig { params(_data: String).returns(String) }
            def data=(_data); end
            sig { params(algorithm: String, data: String).void }
            def initialize(algorithm: nil, data: nil); end
          end
          # Caller's identifier of the public key. This is used for tracking purposes only, and will be echoed in the response if provided.
          sig { returns(T.nilable(String)) }
          def id; end
          sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
          def id=(_id); end
          # PEM-formatted public key.
          sig { returns(T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey::PemKey)) }
          def pem_key; end
          sig {
            params(_pem_key: T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey::PemKey)).returns(T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey::PemKey))
           }
          def pem_key=(_pem_key); end
          sig {
            params(id: T.nilable(String), pem_key: T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey::PemKey)).void
           }
          def initialize(id: nil, pem_key: nil); end
        end
        # Name for the API key.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Note or description for the API key.
        sig { returns(T.nilable(String)) }
        def note; end
        sig { params(_note: T.nilable(String)).returns(T.nilable(String)) }
        def note=(_note); end
        # Public key for encrypting the API key secret.
        # This must a PEM-formatted RSA key suitable for encryption, >= 2048 bits.
        # A public key is required when creating secret keys.
        # Publishable keys are not encrypted and a public key should not be included.
        sig { returns(T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey)) }
        def public_key; end
        sig {
          params(_public_key: T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey)).returns(T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey))
         }
        def public_key=(_public_key); end
        # Type of the API key to create (secret or publishable).
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(name: T.nilable(String), note: T.nilable(String), public_key: T.nilable(V2::Iam::ApiKeyCreateParams::PublicKey), type: String).void
         }
        def initialize(name: nil, note: nil, public_key: nil, type: nil); end
      end
    end
  end
end