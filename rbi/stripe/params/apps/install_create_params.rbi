# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Apps
    class InstallCreateParams < ::Stripe::RequestParams
      # The ID of the app to install.
      sig { returns(String) }
      def app; end
      sig { params(_app: String).returns(String) }
      def app=(_app); end
      # The distribution channel to install from. Defaults to `public`. A private app must be installed on `private_test` or `private_live`, matching the mode of the API key.
      sig { returns(T.nilable(String)) }
      def channel; end
      sig { params(_channel: T.nilable(String)).returns(T.nilable(String)) }
      def channel=(_channel); end
      # For OAuth apps, the PKCE code challenge used to issue the `auth_code` returned on the install. Must be 43 to 128 characters and contain only letters, numbers, `-`, `.`, `_`, and `~`. Only applies to installs made by the app developer or an embedding platform; ignored when an account installs its own private app.
      sig { returns(T.nilable(String)) }
      def code_challenge; end
      sig { params(_code_challenge: T.nilable(String)).returns(T.nilable(String)) }
      def code_challenge=(_code_challenge); end
      # The method used to derive `code_challenge`. Required when `code_challenge` is provided, and must be `S256`.
      sig { returns(T.nilable(String)) }
      def code_challenge_method; end
      sig { params(_code_challenge_method: T.nilable(String)).returns(T.nilable(String)) }
      def code_challenge_method=(_code_challenge_method); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(app: String, channel: T.nilable(String), code_challenge: T.nilable(String), code_challenge_method: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(
        app: nil,
        channel: nil,
        code_challenge: nil,
        code_challenge_method: nil,
        expand: nil
      ); end
    end
  end
end