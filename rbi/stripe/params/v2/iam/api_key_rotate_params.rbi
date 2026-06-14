# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ApiKeyRotateParams < ::Stripe::RequestParams
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
          sig { returns(T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey::PemKey)) }
          def pem_key; end
          sig {
            params(_pem_key: T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey::PemKey)).returns(T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey::PemKey))
           }
          def pem_key=(_pem_key); end
          sig {
            params(id: T.nilable(String), pem_key: T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey::PemKey)).void
           }
          def initialize(id: nil, pem_key: nil); end
        end
        # Duration in minutes before the current key expires, with a maximum of 7 days (10080 minutes).
        # If not provided, the current key expires immediately.
        sig { returns(T.nilable(Integer)) }
        def expire_current_key_in_minutes; end
        sig {
          params(_expire_current_key_in_minutes: T.nilable(Integer)).returns(T.nilable(Integer))
         }
        def expire_current_key_in_minutes=(_expire_current_key_in_minutes); end
        # Public key for encrypting the new API key secret.
        # This must a PEM-formatted RSA key suitable for encryption, >= 2048 bits.
        # A public key is required when rotating secret keys.
        # Publishable keys are not encrypted and a public key should not be included.
        sig { returns(T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey)) }
        def public_key; end
        sig {
          params(_public_key: T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey)).returns(T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey))
         }
        def public_key=(_public_key); end
        sig {
          params(expire_current_key_in_minutes: T.nilable(Integer), public_key: T.nilable(::Stripe::V2::Iam::ApiKeyRotateParams::PublicKey)).void
         }
        def initialize(expire_current_key_in_minutes: nil, public_key: nil); end
      end
    end
  end
end