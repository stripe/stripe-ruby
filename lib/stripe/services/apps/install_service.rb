# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    class InstallService < StripeService
      # Creates an app install. An account installs its own private app with its own key; public and testing installs are made from the Dashboard. An app developer acting on a connected account through Stripe-Account installs or reinstalls its app there, and an embedding platform can do the same once the app's developer approves its request to embed the app. For a private app, creating an install installs the newest completed upload; when that version is already installed with nothing pending, the existing install is returned.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/apps/installs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of app installs. An app developer filtering by its own app with its own key sees that app's installs across the accounts that installed it. An app developer acting on a connected account through Stripe-Account and filtering by its app sees that account's installs of the app, and an embedding platform acting on a connected account sees only the installs it created there. Other callers see the installs on their own account. A live key lists live installs and a test key lists test installs; the key of an app's managed sandbox filtering by app lists that app's installs across every sandbox.
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

      # Reauthorizes an app install. The installer grants the permissions, content security policy entries, and endpoints that the version being installed requests. An account reauthorizes its own installs on any channel with its own key, which grants all of that access, so only give app_install_write to keys that may approve an app's access. App developers and embedding platforms reauthorize installs on connected accounts through Stripe-Account. An app developer can't grant new access. An embedding platform can grant new access only once the app's developer approves its request to embed the app. For private apps, the version being installed is the newest completed upload.
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
