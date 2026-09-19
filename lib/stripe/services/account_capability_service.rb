# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountCapabilityService < StripeService
    # Returns a list of capabilities associated with the account. The capabilities are returned sorted by creation date, with the most recent capability appearing first.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<id>s/capabilities", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves information about the specified Account Capability.
    def retrieve(account_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account_id>s/capabilities/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing Account Capability. Request or remove a capability by updating its requested parameter.
    def update(account_id, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account_id>s/capabilities/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
