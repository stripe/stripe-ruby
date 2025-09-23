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
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "apps.secret"
      def self.object_name
        "apps.secret"
      end

      class Scope < Stripe::StripeObject
        # The secret scope type.
        attr_reader :type
        # The user ID, if type is set to "user"
        attr_reader :user
      end

      class ListParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          attr_accessor :user

          def initialize(type: nil, user: nil)
            @type = type
            @user = user
          end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        attr_accessor :scope
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, scope: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @scope = scope
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          attr_accessor :user

          def initialize(type: nil, user: nil)
            @type = type
            @user = user
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
        attr_accessor :expires_at
        # A name for the secret that's unique within the scope.
        attr_accessor :name
        # The plaintext secret value to be stored.
        attr_accessor :payload
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        attr_accessor :scope

        def initialize(expand: nil, expires_at: nil, name: nil, payload: nil, scope: nil)
          @expand = expand
          @expires_at = expires_at
          @name = name
          @payload = payload
          @scope = scope
        end
      end

      class FindParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          attr_accessor :user

          def initialize(type: nil, user: nil)
            @type = type
            @user = user
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A name for the secret that's unique within the scope.
        attr_accessor :name
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        attr_accessor :scope

        def initialize(expand: nil, name: nil, scope: nil)
          @expand = expand
          @name = name
          @scope = scope
        end
      end

      class DeleteWhereParams < Stripe::RequestParams
        class Scope < Stripe::RequestParams
          # The secret scope type.
          attr_accessor :type
          # The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`.
          attr_accessor :user

          def initialize(type: nil, user: nil)
            @type = type
            @user = user
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A name for the secret that's unique within the scope.
        attr_accessor :name
        # Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
        attr_accessor :scope

        def initialize(expand: nil, name: nil, scope: nil)
          @expand = expand
          @name = name
          @scope = scope
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # If true, indicates that this secret has been deleted
      attr_reader :deleted
      # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
      attr_reader :expires_at
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # A name for the secret that's unique within the scope.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The plaintext secret value to be stored.
      attr_reader :payload
      # Attribute for field scope
      attr_reader :scope

      # Create or replace a secret in the secret store.
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/apps/secrets", params: params, opts: opts)
      end

      # Deletes a secret from the secret store by name and scope.
      def self.delete_where(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/apps/secrets/delete",
          params: params,
          opts: opts
        )
      end

      # Finds a secret in the secret store by name and scope.
      def self.find(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/apps/secrets/find",
          params: params,
          opts: opts
        )
      end

      # List all secrets stored on the given scope.
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/apps/secrets", params: params, opts: opts)
      end
    end
  end
end
