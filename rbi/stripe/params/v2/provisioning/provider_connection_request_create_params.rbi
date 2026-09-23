# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ProviderConnectionRequestCreateParams < ::Stripe::RequestParams
        # PKCE code challenge: BASE64URL(SHA256(code_verifier)). Optional; when present the OAuth
        # callback must supply the matching code_verifier. Not a secret (it is a hash of the verifier).
        sig { returns(T.nilable(String)) }
        def code_challenge; end
        sig { params(_code_challenge: T.nilable(String)).returns(T.nilable(String)) }
        def code_challenge=(_code_challenge); end
        # PKCE code challenge method. Only "S256" is supported.
        sig { returns(T.nilable(String)) }
        def code_challenge_method; end
        sig { params(_code_challenge_method: T.nilable(String)).returns(T.nilable(String)) }
        def code_challenge_method=(_code_challenge_method); end
        # Provider-specific configuration payload for the connection.
        sig { returns(T::Hash[String, T.untyped]) }
        def configuration; end
        sig {
          params(_configuration: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped])
         }
        def configuration=(_configuration); end
        # Project this provider connection is created for. Used to infer the catalog partition for provider
        # calls. Optional; when absent the provider connection defaults to the prod catalog.
        sig { returns(T.nilable(String)) }
        def project; end
        sig { params(_project: T.nilable(String)).returns(T.nilable(String)) }
        def project=(_project); end
        # Identifier of the provider to connect to.
        sig { returns(T.nilable(String)) }
        def provider; end
        sig { params(_provider: T.nilable(String)).returns(T.nilable(String)) }
        def provider=(_provider); end
        # Deprecated identifier of the provider to connect to; use `provider` instead.
        sig { returns(T.nilable(String)) }
        def provider_name; end
        sig { params(_provider_name: T.nilable(String)).returns(T.nilable(String)) }
        def provider_name=(_provider_name); end
        sig {
          params(code_challenge: T.nilable(String), code_challenge_method: T.nilable(String), configuration: T::Hash[String, T.untyped], project: T.nilable(String), provider: T.nilable(String), provider_name: T.nilable(String)).void
         }
        def initialize(
          code_challenge: nil,
          code_challenge_method: nil,
          configuration: nil,
          project: nil,
          provider: nil,
          provider_name: nil
        ); end
      end
    end
  end
end