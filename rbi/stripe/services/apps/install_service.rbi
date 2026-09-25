# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Apps
    class InstallService < StripeService
      # Creates an app install. An account installs its own private app with its own key; public and testing installs are made from the Dashboard. An app developer or embedding platform acting on a connected account through Stripe-Account installs or reinstalls its app there. Creating an install for a private app that is already installed at the channel's current version with nothing pending returns the existing install.
      sig {
        params(params: T.any(::Stripe::Apps::InstallCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of app installs. An app developer or embedding platform filtering by its own app sees the installs across the accounts that installed it; other callers see the installs on their own account. The key selects the environment: a live key lists live installs, a sandbox API key lists the installs on that sandbox, and the key of an app's managed sandbox filtering by app lists that app's installs across every sandbox. For existing accounts that still use legacy test mode, a test mode key lists legacy test mode installs.
      sig {
        params(params: T.any(::Stripe::Apps::InstallListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an app install. The installing account, the app's developer (with the keys of the account that owns the app or of the app's managed sandbox), and the embedding platform that created the install can retrieve it.
      sig {
        params(id: String, params: T.any(::Stripe::Apps::InstallRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Uninstalls an app from the account that installed it.
      sig {
        params(id: String, params: T.any(::Stripe::Apps::InstallUninstallParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def uninstall(id, params = {}, opts = {}); end

      # Reauthorizes an app install. The installer grants the permissions, content security policy entries, and endpoints that the latest published version of the app requests. An account reauthorizes its own installs on any channel with its own key; app developers and embedding platforms reauthorize installs on connected accounts through Stripe-Account. For private apps, install a new version from the Dashboard to grant its permissions.
      sig {
        params(id: String, params: T.any(::Stripe::Apps::InstallUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Apps::Install)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end