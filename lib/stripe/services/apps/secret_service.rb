# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    class SecretService < StripeService
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

      # Create or replace a secret in the secret store.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/apps/secrets",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deletes a secret from the secret store by name and scope.
      def delete_where(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/apps/secrets/delete",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Finds a secret in the secret store by name and scope.
      def find(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/apps/secrets/find",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # List all secrets stored on the given scope.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/apps/secrets",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
