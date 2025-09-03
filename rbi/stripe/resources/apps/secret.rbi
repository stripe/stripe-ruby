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
        def type; end
        # The user ID, if type is set to "user"
        sig { returns(T.nilable(String)) }
        def user; end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # If true, indicates that this secret has been deleted
      sig { returns(T.nilable(T::Boolean)) }
      def deleted; end
      # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
      sig { returns(T.nilable(Integer)) }
      def expires_at; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # A name for the secret that's unique within the scope.
      sig { returns(String) }
      def name; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The plaintext secret value to be stored.
      sig { returns(T.nilable(String)) }
      def payload; end
      # Attribute for field scope
      sig { returns(Scope) }
      def scope; end
      class ListParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          def user; end
          sig { params(_user: T.nilable(String)).returns(T.nilable(String)) }
          def user=(_user); end
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::ListParams::Scope) }
        def scope; end
        sig {
          params(_scope: ::Stripe::Apps::Secret::ListParams::Scope).returns(::Stripe::Apps::Secret::ListParams::Scope)
         }
        def scope=(_scope); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
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
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          def user; end
          sig { params(_user: T.nilable(String)).returns(T.nilable(String)) }
          def user=(_user); end
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def expires_at=(_expires_at); end
        # A name for the secret that's unique within the scope.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # The plaintext secret value to be stored.
        sig { returns(String) }
        def payload; end
        sig { params(_payload: String).returns(String) }
        def payload=(_payload); end
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::CreateParams::Scope) }
        def scope; end
        sig {
          params(_scope: ::Stripe::Apps::Secret::CreateParams::Scope).returns(::Stripe::Apps::Secret::CreateParams::Scope)
         }
        def scope=(_scope); end
        sig {
          params(expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), name: String, payload: String, scope: ::Stripe::Apps::Secret::CreateParams::Scope).void
         }
        def initialize(expand: nil, expires_at: nil, name: nil, payload: nil, scope: nil); end
      end
      class FindParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          def user; end
          sig { params(_user: T.nilable(String)).returns(T.nilable(String)) }
          def user=(_user); end
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A name for the secret that's unique within the scope.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::FindParams::Scope) }
        def scope; end
        sig {
          params(_scope: ::Stripe::Apps::Secret::FindParams::Scope).returns(::Stripe::Apps::Secret::FindParams::Scope)
         }
        def scope=(_scope); end
        sig {
          params(expand: T.nilable(T::Array[String]), name: String, scope: ::Stripe::Apps::Secret::FindParams::Scope).void
         }
        def initialize(expand: nil, name: nil, scope: nil); end
      end
      class DeleteWhereParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          sig { returns(T.nilable(String)) }
          def user; end
          sig { params(_user: T.nilable(String)).returns(T.nilable(String)) }
          def user=(_user); end
          sig { params(type: String, user: T.nilable(String)).void }
          def initialize(type: nil, user: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A name for the secret that's unique within the scope.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        sig { returns(::Stripe::Apps::Secret::DeleteWhereParams::Scope) }
        def scope; end
        sig {
          params(_scope: ::Stripe::Apps::Secret::DeleteWhereParams::Scope).returns(::Stripe::Apps::Secret::DeleteWhereParams::Scope)
         }
        def scope=(_scope); end
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