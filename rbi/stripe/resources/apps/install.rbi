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
      # The distribution channel associated with the app install.
      sig { returns(String) }
      def channel; end
      # Attribute for field content_security_policy_granted
      sig { returns(ContentSecurityPolicyGranted) }
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
      sig { returns(T::Array[String]) }
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
      sig { returns(T::Array[String]) }
      def permissions_granted; end
      # The permissions requested by the latest app version that the installer has not authorized.
      sig { returns(T::Array[String]) }
      def permissions_pending; end
      # The status of the app install.
      sig { returns(String) }
      def status; end
      # Creates an app install. An account installs its own private app with its own key; public and testing installs are made from the Dashboard. An app developer or embedding platform acting on a connected account through Stripe-Account installs or reinstalls its app there. Creating an install for a private app that is already installed at the channel's current version with nothing pending returns the existing install.
      sig {
        params(params: T.any(::Stripe::Apps::InstallCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of app installs. An app developer or embedding platform filtering by its own app sees the installs across the accounts that installed it; other callers see the installs on their own account. The key selects the environment: a live key lists live installs, a sandbox API key lists the installs on that sandbox, and the key of an app's managed sandbox filtering by app lists that app's installs across every sandbox. For existing accounts that still use legacy test mode, a test mode key lists legacy test mode installs.
      sig {
        params(params: T.any(::Stripe::Apps::InstallListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Uninstalls an app from the account that installed it.
      sig {
        params(params: T.any(::Stripe::Apps::InstallUninstallParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def uninstall(params = {}, opts = {}); end

      # Uninstalls an app from the account that installed it.
      sig {
        params(id: String, params: T.any(::Stripe::Apps::InstallUninstallParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def self.uninstall(id, params = {}, opts = {}); end

      # Reauthorizes an app install. The installer grants the permissions, content security policy entries, and endpoints that the latest published version of the app requests. An account reauthorizes its own installs on any channel with its own key; app developers and embedding platforms reauthorize installs on connected accounts through Stripe-Account. For private apps, install a new version from the Dashboard to grant its permissions.
      sig {
        params(id: String, params: T.any(::Stripe::Apps::InstallUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def self.update(id, params = {}, opts = {}); end
    end
  end
end