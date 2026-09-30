# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    class InstallService < StripeService
      # Creates an app install. An account installs its own private app with its own key; public and testing installs are made from the Dashboard. An app developer or embedding platform acting on a connected account through Stripe-Account installs or reinstalls its app there. For a private app, creating an install installs the newest completed upload; when that version is already installed with nothing pending, the existing install is returned.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/apps/installs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of app installs. An app developer or embedding platform filtering by its own app sees the installs across the accounts that installed it; other callers see the installs on their own account. The key selects the environment: a live key lists live installs, a sandbox API key lists the installs on that sandbox, and the key of an app's managed sandbox filtering by app lists that app's installs across every sandbox. For existing accounts that still use legacy test mode, a test mode key lists legacy test mode installs.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/apps/installs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an app install. The installing account, the app's developer (with the keys of the account that owns the app or of the app's managed sandbox), and the embedding platform that created the install can retrieve it.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/apps/installs/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Uninstalls an app from the account that installed it.
      def uninstall(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/apps/installs/%<id>s/uninstall", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Reauthorizes an app install. The installer grants the permissions, content security policy entries, and endpoints that the version being installed requests. An account reauthorizes its own installs on any channel with its own key; app developers and embedding platforms reauthorize installs on connected accounts through Stripe-Account. For private apps, the version being installed is the newest completed upload.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/apps/installs/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
