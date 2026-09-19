# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountExternalAccountService < StripeService
    # Create an external account for a given account.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<id>s/external_accounts", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a specified external account for a given account.
    def delete(account_id, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/accounts/%<account_id>s/external_accounts/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List external accounts for an account.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<id>s/external_accounts", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a specified external account for a given account.
    def retrieve(account_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account_id>s/external_accounts/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the metadata, account holder name, account holder type of a bank account belonging to
    # a connected account and optionally sets it as the default for its currency. Other bank account
    # details are not editable by design.
    #
    # You can only update bank accounts when [account.controller.requirement_collection is application, which includes <a href="/connect/custom-accounts">Custom accounts](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection).
    #
    # You can re-enable a disabled bank account by performing an update call without providing any
    # arguments or changes.
    def update(account_id, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account_id>s/external_accounts/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
