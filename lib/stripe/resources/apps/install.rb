# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    # An app install represents a Stripe App that is installed on an account. It reports the permissions,
    # content security policy entries, and endpoints that the installing account has authorized, along with any
    # that the app's latest version requests but the account has not authorized yet. Use the Install API to
    # install, reauthorize, and uninstall apps, and to check the state of existing installs.
    class Install < APIResource
      OBJECT_NAME = "apps.install"
      def self.object_name
        "apps.install"
      end

      class AuthorizedContentSecurityPolicy < ::Stripe::StripeObject
        # Attribute for field connect_src
        attr_reader :connect_src
        # Attribute for field image_src
        attr_reader :image_src
        # Attribute for field purpose
        attr_reader :purpose

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
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
      # Attribute for field authorized_content_security_policy
      attr_reader :authorized_content_security_policy
      # The endpoint URLs authorized by the installer.
      attr_reader :authorized_endpoints
      # The permissions authorized by the installer.
      attr_reader :authorized_permissions
      # The distribution channel associated with the app install.
      attr_reader :channel
      # The content security policy entries authorized by the installer.
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
      attr_reader :state
      # The status of the app install.
      attr_reader :status

      def self.inner_class_types
        @inner_class_types = {
          authorized_content_security_policy: AuthorizedContentSecurityPolicy,
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
