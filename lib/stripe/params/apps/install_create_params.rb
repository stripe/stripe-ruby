# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    class InstallCreateParams < ::Stripe::RequestParams
      # The ID of the app to install.
      attr_accessor :app
      # The distribution channel to install from. Defaults to `public`. A private app must be installed on `private_test` or `private_live`, matching the mode of the API key.
      attr_accessor :channel
      # For OAuth apps, the PKCE code challenge used to issue the `auth_code` returned on the install. Must be 43 to 128 characters and contain only letters, numbers, `-`, `.`, `_`, and `~`. Only applies to installs made by the app developer or an embedding platform; ignored when an account installs its own private app.
      attr_accessor :code_challenge
      # The method used to derive `code_challenge`. Required when `code_challenge` is provided, and must be `S256`.
      attr_accessor :code_challenge_method
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(
        app: nil,
        channel: nil,
        code_challenge: nil,
        code_challenge_method: nil,
        expand: nil
      )
        @app = app
        @channel = channel
        @code_challenge = code_challenge
        @code_challenge_method = code_challenge_method
        @expand = expand
      end
    end
  end
end
