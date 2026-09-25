# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    # An app install represents a Stripe App that is installed on an account. It reports the permissions,
    # content security policy entries, and endpoints that the installing account has authorized, along with any
    # that the app's latest version requests but the account has not authorized yet. Use the Install API to
    # install, reauthorize, and uninstall apps, and to check the state of existing installs.
    class Install < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "apps.install"
      def self.object_name
        "apps.install"
      end

      class ContentSecurityPolicyGranted < ::Stripe::StripeObject
        # The URLs that the app can make network requests to.
        attr_reader :connect_src
        # The URLs that the app can load images from.
        attr_reader :image_src

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class ContentSecurityPolicyPending < ::Stripe::StripeObject
        # The URLs that the app can make network requests to.
        attr_reader :connect_src
        # The URLs that the app can load images from.
        attr_reader :image_src

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The ID of the account that the app install belongs to.
      attr_reader :account
      # The ID of the app installed.
      attr_reader :app
      # Whether the installer must authorize pending permissions, content security policy entries, or endpoints. For private apps, `approval_required` stays `false`. Install a new version from the Dashboard to grant its permissions.
      attr_reader :approval_required
      # The authorization code for an oauth app install.
      attr_reader :auth_code
      # The distribution channel associated with the app install.
      attr_reader :channel
      # Attribute for field content_security_policy_granted
      attr_reader :content_security_policy_granted
      # Attribute for field content_security_policy_pending
      attr_reader :content_security_policy_pending
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The ID of the embedding platform that created the install, if applicable.
      attr_reader :created_by
      # The endpoint URLs authorized by the installer.
      attr_reader :endpoints_granted
      # The endpoint URLs requested by the latest app version that the installer has not authorized.
      attr_reader :endpoints_pending
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The permissions authorized by the installer.
      attr_reader :permissions_granted
      # The permissions requested by the latest app version that the installer has not authorized.
      attr_reader :permissions_pending
      # The status of the app install.
      attr_reader :status

      # Creates an app install. An account installs its own private app with its own key; public and testing installs are made from the Dashboard. An app developer or embedding platform acting on a connected account through Stripe-Account installs or reinstalls its app there. Creating an install for a private app that is already installed at the channel's current version with nothing pending returns the existing install.
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/apps/installs", params: params, opts: opts)
      end

      # Returns a list of app installs. An app developer or embedding platform filtering by its own app sees the installs across the accounts that installed it; other callers see the installs on their own account. The key selects the environment: a live key lists live installs, a sandbox API key lists the installs on that sandbox, and the key of an app's managed sandbox filtering by app lists that app's installs across every sandbox. For existing accounts that still use legacy test mode, a test mode key lists legacy test mode installs.
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/apps/installs", params: params, opts: opts)
      end

      # Uninstalls an app from the account that installed it.
      def uninstall(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/apps/installs/%<id>s/uninstall", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Uninstalls an app from the account that installed it.
      def self.uninstall(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/apps/installs/%<id>s/uninstall", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Reauthorizes an app install. The installer grants the permissions, content security policy entries, and endpoints that the latest published version of the app requests. An account reauthorizes its own installs on any channel with its own key; app developers and embedding platforms reauthorize installs on connected accounts through Stripe-Account. For private apps, install a new version from the Dashboard to grant its permissions.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/apps/installs/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          content_security_policy_granted: ContentSecurityPolicyGranted,
          content_security_policy_pending: ContentSecurityPolicyPending,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
