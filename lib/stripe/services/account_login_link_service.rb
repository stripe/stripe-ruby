# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountLoginLinkService < StripeService
    class CreateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Creates a login link for a connected account to access the Express Dashboard.
    #
    # You can only create login links for accounts that use the [Express Dashboard](https://stripe.com/connect/express-dashboard) and are connected to your platform.
    def create(account, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s/login_links", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
