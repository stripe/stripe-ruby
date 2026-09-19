# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountNoticeService < StripeService
    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/account_notices",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves an AccountNotice object.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/account_notices/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an AccountNotice object.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/account_notices/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
