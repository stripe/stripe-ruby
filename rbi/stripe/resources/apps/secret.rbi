# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Apps
    # Secret Store is an API that allows Stripe Apps developers to securely persist secrets for use by UI Extensions and app backends.
    #
    # The primary resource in Secret Store is a `secret`. Other apps can't view secrets created by an app. Additionally, secrets are scoped to provide further permission control.
    #
    # All Dashboard users and the app backend share `account` scoped secrets. Use the `account` scope for secrets that don't change per-user, like a third-party API key.
    #
    # A `user` scoped secret is accessible by the app backend and one specific Dashboard user. Use the `user` scope for per-user secrets like per-user OAuth tokens, where different users might have different permissions.
    #
    # Related guide: [Store data between page reloads](https://stripe.com/docs/stripe-apps/store-auth-data-custom-objects)
    class Secret < APIResource
      class Scope < Stripe::StripeObject
        # The secret scope type.
        sig { returns(String) }
        attr_reader :type
        # The user ID, if type is set to "user"
        sig { returns(String) }
        attr_reader :user
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # If true, indicates that this secret has been deleted
      sig { returns(T::Boolean) }
      attr_reader :deleted

      # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # A name for the secret that's unique within the scope.
      sig { returns(String) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The plaintext secret value to be stored.
      sig { returns(T.nilable(String)) }
      attr_reader :payload

      # Attribute for field scope
      sig { returns(Scope) }
      attr_reader :scope
    end
  end
end