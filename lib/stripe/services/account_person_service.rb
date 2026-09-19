# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountPersonService < StripeService
    # Creates a new person.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<id>s/persons", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Deletes an existing person's relationship to the account's legal entity. Any person with a relationship for an account can be deleted through the API, except if the person is the representative. If your integration is using the executive parameter, you cannot delete the only verified executive on file.
    def delete(account_id, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/accounts/%<account_id>s/persons/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<id>s/persons", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves an existing person.
    def retrieve(account_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account_id>s/persons/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing person.
    def update(account_id, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account_id>s/persons/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
