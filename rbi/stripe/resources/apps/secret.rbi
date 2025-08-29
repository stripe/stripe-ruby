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
      class ListParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          sig { returns(String) }
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :user
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::ListParams::Scope) }
        attr_accessor :scope
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), scope: ::Stripe::Apps::Secret::ListParams::Scope, starting_after: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          scope: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          sig { returns(String) }
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :user
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_at
        # A name for the secret that's unique within the scope.
        sig { returns(String) }
        attr_accessor :name
        # The plaintext secret value to be stored.
        sig { returns(String) }
        attr_accessor :payload
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::CreateParams::Scope) }
        attr_accessor :scope
        sig {
          params(expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), name: String, payload: String, scope: ::Stripe::Apps::Secret::CreateParams::Scope).void
         }
        def initialize(expand: nil, expires_at: nil, name: nil, payload: nil, scope: nil); end
      end
      class FindParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          sig { returns(String) }
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :user
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A name for the secret that's unique within the scope.
        sig { returns(String) }
        attr_accessor :name
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::FindParams::Scope) }
        attr_accessor :scope
        sig {
          params(expand: T.nilable(T::Array[String]), name: String, scope: ::Stripe::Apps::Secret::FindParams::Scope).void
         }
        def initialize(expand: nil, name: nil, scope: nil); end
      end
      class DeleteWhereParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          sig { returns(String) }
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :user
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A name for the secret that's unique within the scope.
        sig { returns(String) }
        attr_accessor :name
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::DeleteWhereParams::Scope) }
        attr_accessor :scope
        sig {
          params(expand: T.nilable(T::Array[String]), name: String, scope: ::Stripe::Apps::Secret::DeleteWhereParams::Scope).void
         }
        def initialize(expand: nil, name: nil, scope: nil); end
      end
      # Create or replace a secret in the secret store.
      sig {
        params(params: T.any(::Stripe::Apps::Secret::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Apps::Secret)
       }
      def self.create(params = {}, opts = {}); end

      # Deletes a secret from the secret store by name and scope.
      sig {
        params(params: T.any(::Stripe::Apps::Secret::DeleteWhereParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Apps::Secret)
       }
      def self.delete_where(params = {}, opts = {}); end

      # Finds a secret in the secret store by name and scope.
      sig {
        params(params: T.any(::Stripe::Apps::Secret::FindParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Apps::Secret)
       }
      def self.find(params = {}, opts = {}); end

      # List all secrets stored on the given scope.
      sig {
        params(params: T.any(::Stripe::Apps::Secret::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end