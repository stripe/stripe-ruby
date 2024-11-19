# File generated from our OpenAPI spec
# frozen_string_literal: true

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
        sig { returns(String) }
        attr_reader :type
        sig { returns(String) }
        attr_reader :user
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T::Boolean) }
      # If true, indicates that this secret has been deleted
      attr_reader :deleted
      sig { returns(T.nilable(Integer)) }
      # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
      attr_reader :expires_at
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # A name for the secret that's unique within the scope.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # The plaintext secret value to be stored.
      attr_reader :payload
      sig { returns(Scope) }
      # Attribute for field scope
      attr_reader :scope
    end
  end
end