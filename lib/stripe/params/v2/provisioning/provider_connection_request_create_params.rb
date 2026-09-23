# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ProviderConnectionRequestCreateParams < ::Stripe::RequestParams
        # PKCE code challenge: BASE64URL(SHA256(code_verifier)). Optional; when present the OAuth
        # callback must supply the matching code_verifier. Not a secret (it is a hash of the verifier).
        attr_accessor :code_challenge
        # PKCE code challenge method. Only "S256" is supported.
        attr_accessor :code_challenge_method
        # Provider-specific configuration payload for the connection.
        attr_accessor :configuration
        # Project this provider connection is created for. Used to infer the catalog partition for provider
        # calls. Optional; when absent the provider connection defaults to the prod catalog.
        attr_accessor :project
        # Identifier of the provider to connect to.
        attr_accessor :provider
        # Deprecated identifier of the provider to connect to; use `provider` instead.
        attr_accessor :provider_name

        def initialize(
          code_challenge: nil,
          code_challenge_method: nil,
          configuration: nil,
          project: nil,
          provider: nil,
          provider_name: nil
        )
          @code_challenge = code_challenge
          @code_challenge_method = code_challenge_method
          @configuration = configuration
          @project = project
          @provider = provider
          @provider_name = provider_name
        end
      end
    end
  end
end
