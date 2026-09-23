# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Apps
    # An app install represents a Stripe App that is installed on an account. It reports the permissions,
    # content security policy entries, and endpoints that the installing account has authorized, along with any
    # that the app's latest version requests but the account has not authorized yet. Use the Install API to
    # install, reauthorize, and uninstall apps, and to check the state of existing installs.
    class Install < APIResource
      class AuthorizedContentSecurityPolicy < ::Stripe::StripeObject
        # Attribute for field connect_src
        sig { returns(T.nilable(T::Array[String])) }
        def connect_src; end
        # Attribute for field image_src
        sig { returns(T.nilable(T::Array[String])) }
        def image_src; end
        # Attribute for field purpose
        sig { returns(T.nilable(String)) }
        def purpose; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class ContentSecurityPolicyGranted < ::Stripe::StripeObject
        # The URLs that the app can make network requests to.
        sig { returns(T::Array[String]) }
        def connect_src; end
        # The URLs that the app can load images from.
        sig { returns(T::Array[String]) }
        def image_src; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class ContentSecurityPolicyPending < ::Stripe::StripeObject
        # The URLs that the app can make network requests to.
        sig { returns(T::Array[String]) }
        def connect_src; end
        # The URLs that the app can load images from.
        sig { returns(T::Array[String]) }
        def image_src; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The ID of the account that the app install belongs to.
      sig { returns(String) }
      def account; end
      # The ID of the app installed.
      sig { returns(String) }
      def app; end
      # Whether the installer must authorize pending permissions, content security policy entries, or endpoints. For private apps, `approval_required` stays `false`. Install a new version from the Dashboard to grant its permissions.
      sig { returns(T::Boolean) }
      def approval_required; end
      # The authorization code for an oauth app install.
      sig { returns(T.nilable(String)) }
      def auth_code; end
      # Attribute for field authorized_content_security_policy
      sig { returns(AuthorizedContentSecurityPolicy) }
      def authorized_content_security_policy; end
      # The endpoint URLs authorized by the installer.
      sig { returns(T::Array[String]) }
      def authorized_endpoints; end
      # The permissions authorized by the installer.
      sig { returns(T::Array[String]) }
      def authorized_permissions; end
      # The distribution channel associated with the app install.
      sig { returns(String) }
      def channel; end
      # The content security policy entries authorized by the installer.
      sig { returns(T.nilable(ContentSecurityPolicyGranted)) }
      def content_security_policy_granted; end
      # Attribute for field content_security_policy_pending
      sig { returns(ContentSecurityPolicyPending) }
      def content_security_policy_pending; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The ID of the embedding platform that created the install, if applicable.
      sig { returns(T.nilable(String)) }
      def created_by; end
      # The endpoint URLs authorized by the installer.
      sig { returns(T.nilable(T::Array[String])) }
      def endpoints_granted; end
      # The endpoint URLs requested by the latest app version that the installer has not authorized.
      sig { returns(T::Array[String]) }
      def endpoints_pending; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The permissions authorized by the installer.
      sig { returns(T.nilable(T::Array[String])) }
      def permissions_granted; end
      # The permissions requested by the latest app version that the installer has not authorized.
      sig { returns(T::Array[String]) }
      def permissions_pending; end
      # The status of the app install.
      sig { returns(String) }
      def state; end
      # The status of the app install.
      sig { returns(T.nilable(String)) }
      def status; end
    end
  end
end