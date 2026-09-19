# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountLoginLinkService < StripeService
    # Creates a login link for a connected account to access the Express Dashboard.
    #
    # You can only create login links for accounts that use the [Express Dashboard](https://docs.stripe.com/connect/express-dashboard) and are connected to your platform.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<id>s/login_links", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
